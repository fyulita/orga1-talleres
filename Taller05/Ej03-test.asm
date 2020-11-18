STI
CLI
SET R0, rai
STR [0x00], R0
STI

loop:
JMP loop

rai:
SET R1, 0xFF
IRET
