SET R0, 0XFF
SIG R0
SET R1, 0xFF
NEG R1
JMP halt

halt:
JMP halt
