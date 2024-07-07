       IDENTIFICATION DIVISION.
       PROGRAM-ID. repeatyourself.
       AUTHOR. ismail.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       *> dtata items or variable
       01 NumOfTimes PIC 9 VALUE 5.

       PROCEDURE DIVISION.
           DISPLAY "About to start in-line Perform".
           PERFORM 4 TIMES 
               DISPLAY ">>>> In-line Perform"
           END-PERFORM.
           DISPLAY "End of in-line Perform".

           DISPLAY "About to start out-of-line Perform".  
           PERFORM OutOfLineCode VARYING NumOfTimes FROM 1 BY 1 UNTIL 
                                                        NumOfTimes > 5.
           DISPLAY "End of out-of-line Perform".
           STOP RUN.

       OutOfLineCode.
           DISPLAY ">>> Out-of-line Perform".
           EXIT.
