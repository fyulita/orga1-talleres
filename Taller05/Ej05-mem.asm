main:
SET R0, 0x00
SET R1, 0x0F
STR [0xF0], R1
SET R2, 0x02
STR [0xF1], R2
SET R3, 0x20

while:
MOV R4, R0
JMP mod

mod:
SUB R4, R3
JZ bocina
JN while
JMP mod

bocina:
LOAD R2, [0xF1]
INC R2
STR [0xF1], R2
JMP while

rai:
LOAD R1, [0xF0]
SET R5, 0x0F
CMP R1, R5
JZ raitrue
SET R1, 0x0F
STR [0xF0], R1
INC R0
IRET

raitrue:
SET R1, 0x0C
STR [0xF0], R1
IRET
