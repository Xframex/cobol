       IDENTIFICATION DIVISION.
       PROGRAM-ID. AmusementParkDecision.
       AUTHOR. ismail.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  AGE     PIC 99.
           88 INFANT  VALUE 0 THRU 3.
           88 CHILD   VALUE 4  THRU 7.
           88 TEEN    VALUE 8  THRU 12.
           88 ADULT   VALUE 13 THRU 64.
           88 SENIOR  VALUE 65 THRU 99.
      
       01  HeightOfPerson    PIC 99.
           88 PersonHeight_1 VALUE 0 THRU 48.

       PROCEDURE DIVISION.
       AgeChecker.
           DISPLAY 'Enter your AGE: '
           ACCEPT AGE
           DISPLAY 'Enter your height in inches: '
           ACCEPT HeightOfPerson

           EVALUATE TRUE
              WHEN INFANT
                 DISPLAY "Enter for free 0 $"
              WHEN CHILD
                 DISPLAY "You have to pay 10 $"
              WHEN TEEN
                 IF PersonHeight_1
                    DISPLAY "You have to pay 10 $" 
                 ELSE
                    DISPLAY "You have to pay 15 $"
                 END-IF
              WHEN ADULT
                 IF PersonHeight_1
                    DISPLAY "You have to pay 25 $" 
                 ELSE
                    DISPLAY "You have to pay 18 $"
                 END-IF
              WHEN SENIOR
                 DISPLAY "You have to pay 12 $"
            END-EVALUATE

            STOP RUN.
