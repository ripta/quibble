SSAFILES = $(wildcard *.ssa)
OUTFILES = $(subst .ssa,,$(SSAFILES))

all: $(OUTFILES)

%.o: %.s
	$(AS) -o $@ $<

%.s: %.ssa
	qbe -o $@ $<

%: %.o
	$(LD) -macosx_version_min 11.0.0 -lSystem -syslibroot `/usr/bin/xcrun -sdk macosx --show-sdk-path` -e _main -o $@ $<
