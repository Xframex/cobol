       IDENTIFICATION DIVISION.
       PROGRAM-ID. Conditions.
       AUTHOR. ismail.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 AGE      PIC 99.
           88 TEENAGE VALUE 13 THRU 19.
           88 CHILD   VALUE 0 THRU 12.
           88 ADULT   VALUE 20 THRU 64.
           88 SENIOR  VALUE 65 THRU 90.

       PROCEDURE DIVISION.
       AgeChecker.
           DISPLAY 'Enter your AGE: '
           ACCEPT AGE

           EVALUATE TRUE
               WHEN TEENAGE
                   DISPLAY "The person is a teenager."
               WHEN CHILD
                   DISPLAY "The person is a child."
               WHEN ADULT
                   DISPLAY "The person is an adult."
               WHEN SENIOR
                   DISPLAY "The person is a senior."
               WHEN OTHER
                   DISPLAY "Invalid age."
           END-EVALUATE

           STOP RUN.

        
