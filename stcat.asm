ASSUME CS:CODE , DS:DATA

DATA SEGMENT

	MSG DB "HELLO$"
	MSG1 DB "HOW ARE U$"

DATA ENDS

CODE SEGMENT

START:

	MOV AX,DATA
	MOV DS,AX
	
	LEA DX,MSG
	MOV AH,09H
	INT 21H
	
	
	LEA DX,MSG1
	MOV AH,09H
	INT 21H

	MOV AH,4CH
	INT 21H

CODE ENDS

END START