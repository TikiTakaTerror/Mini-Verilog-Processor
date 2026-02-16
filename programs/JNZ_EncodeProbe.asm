; Minimal JNZ probe:
; If JNZ works, control jumps to "taken" and stores 0xAA.
; If JNZ is ignored/broken, it stores 0xEE instead.

LDI R1, 0x01
JNZ R1, taken
LDI R2, 0xEE
ST R2, 0xE0
HALT

taken:
LDI R2, 0xAA
ST R2, 0xE0
HALT
