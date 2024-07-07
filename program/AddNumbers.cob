       IDENTIFICATION DIVISION.
       PROGRAM-ID. AddNumbers.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1 PIC 9(5) VALUE 0.
       01 Num2 PIC 9(5) VALUE 0.
       01 Num3 PIC 9(5) VALUE 0.
       01 Num4 PIC 9(5) VALUE 0.
       01 Result PIC 9(5).

       PROCEDURE DIVISION.
           DISPLAY "Enter the first number: " WITH NO ADVANCING.
           ACCEPT Num1.
           DISPLAY "Enter the second number: " WITH NO ADVANCING.
           ACCEPT Num2.
           DISPLAY "Enter the third number: " WITH NO ADVANCING.
           ACCEPT Num3.
           DISPLAY "Enter the fourth number: " WITH NO ADVANCING.
           ACCEPT Num4.

           ADD Num1, Num2, Num3 TO Num4 GIVING Result.

           DISPLAY "The result is: " Result.

           STOP RUN.
