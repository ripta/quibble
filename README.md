# quibble

Throwaway repo for me to test-drive [QBE](https://c9x.me/compile/)
[IL](https://c9x.me/compile/doc/il.html).

```
❯ make
qbe -o 00-helloworld.s 00-helloworld.ssa
clang -o 00-helloworld.out 00-helloworld.s

❯ ./00-helloworld.out
hello world
```
