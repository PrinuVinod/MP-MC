ASSUME CS:CODE, DS:DATA

 

DATA SEGMENT

            N1 DD 0000000H
            N2 DD 1111111AH
            SUM DW 3 dup(0)

DATA ENDS

 

CODE SEGMENT

START:

            MOV AX,DATA
            MOV DS,AX

           
            MOV AX,N1
            SUB AX,N2
            MOV SUM,AX

            MOV AX,N1+2
            SBB AX,N2+2
            MOV SUM+2,AX

           
            JNC STOP
            MOV SUM+4,01H
           
STOP:       MOV AH,4CH
            INT 21H

CODE ENDS

END START