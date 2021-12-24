	AREA NIBBLE, CODE, READONLY
	ENTRY
MAIN

	LDR R1,Value1 ;loading address value
	LDR R2, [R1] ;loading address to R2
	AND R2,#0x0000000F ;Masking nibble 0
	MOV R3, R2; storing nibble 0 to R3
	LDR R2, [R1] ;loading address to R2
	AND R2,#0x000F0000 ;Masking nibble 4
	MOV R4, R2 ;storing nibble 4 to R4
	MOV R5, R2, LSR #16 ;shfint nibble 4 to lsb
	ADD R3,R5 ;adding both values
	LDR R6,Value2 ;loading address value
	STR R3, [R6] ;loading address to R2


Value1 DCD &40000004
Value2 DCD &4000000C
	END