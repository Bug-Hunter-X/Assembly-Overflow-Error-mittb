```assembly
mov ax, 1000h ; Load a large value into AX
mov cx, bx ; Move the value in BX to CX for comparison
cmp ax, 0FFFFh - cx ; Check for overflow conditions
ja overflow_handler ; Jump to the overflow handler if overflow is detected
add ax, bx ; Add the value in BX to AX
jmp end

overflow_handler:
; Handle overflow using appropriate technique e.g. using extended registers
mov dx, 0 ; Clear DX
add ax, bx ; Add values to AX:DX (32-bit addition)
; Result is now in DX:AX
end:
; Continue program execution
```