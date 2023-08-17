ASSUME CS:CODE, DS:DATA

 

DATA SEGMENT

            N1 DW 9111H
	    N2 DW 8fffH
	    N3 DW 2 dup(?)

DATA ENDS

 

CODE SEGMENT

START:

            MOV AX,DATA
	    MOV DS,AX

	    XOR AX,AX
	    MOV BX,AX
	    MOV AX,N1
	    sub AX,N2

	    MOV N3,AX

STOP:	 MOV AH,4CH
         INT 21H

CODE ENDS

END START