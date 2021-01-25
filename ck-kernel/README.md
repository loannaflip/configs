# ck-kernel-config
Con Kolivas (MuQSS scheduler and patchset) Linux Kernel Configuration for Source/LFS based system

## Summary
* Linux/x86 5.10.10-ck Kernel Configuration
* Patchsets: CK (+MuQSS scheduler), Others (GCC, ARCH) | [ck-sources/files](https://github.com/Uniminin/uniminin-overlay/tree/master/sys-kernel/ck-sources/files)

```
[:|:] dmesg | grep -i muqss
[    0.115613] MuQSS possible/present/online CPUs: 4/4/4
[    0.115615] MuQSS locality CPU 0 to 0: 0
[    0.115615] MuQSS locality CPU 0 to 1: 4
[    0.115615] MuQSS locality CPU 0 to 2: 4
[    0.115616] MuQSS locality CPU 0 to 3: 4
[    0.115616] MuQSS locality CPU 1 to 0: 4
[    0.115617] MuQSS locality CPU 1 to 1: 0
-- snip --
[    0.115623] MuQSS CPU 0 llc 0 RQ order 0 RQ 0 llc 0
[    0.115623] MuQSS CPU 0 llc 0 RQ order 1 RQ 1 llc 0
[    0.115624] MuQSS CPU 0 llc 0 RQ order 2 RQ 2 llc 0
[    0.115624] MuQSS CPU 0 llc 0 RQ order 3 RQ 3 llc 0
-- snip --
[    0.115637] MuQSS runqueue share type NONE total runqueues: 4
[    3.108161] BTRFS: device fsid ac25abd7-9059-4a2a-9fc5-fc0cbf761a55 devid 1 transid 354990 /dev/root scanned by MuQSS/0 (1)
[    3.239358] MuQSS CPU scheduler v0.205 by Con Kolivas.
```
