ASSUME CS:CODE, DS:DATA

 

DATA SEGMENT

            N1 DW 1111H
	    N2 DW 1234H
	    N3 DW 2 dup(?)

DATA ENDS

 

CODE SEGMENT

START:

            MOV AX,DATA
	    MOV DS,AX

	    XOR AX,AX
	    MOV BX,AX

	    MOV AX,N1
	    ADD AX,N2

	    MOV N3,AX
	    JNC STOP
	    INC BX
	    MOV N3[2],BX

STOP: MOV AH,4CH
      INT 21H

CODE ENDS

END START