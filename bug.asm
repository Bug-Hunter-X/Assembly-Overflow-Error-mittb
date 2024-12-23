```assembly
mov ax, 1000h ; Load a large value into AX
add ax, bx ; Add the value in BX to AX
```
In this example, if the value in BX is large enough, adding it to AX could result in an overflow. This occurs because AX is a 16-bit register and adding two values whose sum exceeds 65535 (FFFFh) would cause the upper bits to be discarded, leading to an incorrect result.