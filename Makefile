SSAFILES = $(wildcard *.ssa)
OUTFILES = $(subst .ssa,.out,$(SSAFILES))

all: $(OUTFILES)

%.s: %.ssa
	qbe -o $@ $<

%.out: %.s
	$(CC) -o $@ $<

image:
	docker build -t ripta/quibble .
