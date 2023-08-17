ASSUME CS:CODE, DS:DATA

 

DATA SEGMENT

            N1 DD 11111111H
            N2 DD 11111111H
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

           
            JNB STOP
            MOV SUM+4,01H
           
STOP:       MOV AH,4CH
            INT 21H

CODE ENDS

END START