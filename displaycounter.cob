       IDENTIFICATION DIVISION.
       PROGRAM-ID. displaycounter.
       AUTHOR. ismail.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Counters.
           02 Hundcount  PIC 99 VALUE ZEROS.
           02 TensCount      PIC 99 VALUE ZEROS.
           02 Unitcnt     PIC 99 VALUE ZEROS.
           
       01 Odometer.
           02 PrnHundreds    PIC 9.
           02 FILLER         PIC X VALUE "-".
           02 PrnTens        PIC 9.
           02 FILLER         PIC X VALUE "-".
           02 PrnUnits       PIC 9.
           *> holders of dataitem

       PROCEDURE DIVISION.
       Begin.
           DISPLAY "Using an out-of-line Perform".
           PERFORM CountMileage
               VARYING Hundcount FROM 0 BY 1 UNTIL Hundcount > 9
               AFTER TensCount FROM 0 BY 1 UNTIL TensCount > 9
               AFTER Unitcnt FROM 0 BY 1 UNTIL Unitcnt > 9
           DISPLAY "Now using in-line Perform"
           PERFORM VARYING Hundcount FROM 0 BY 1 UNTIL Hundcount > 9
               PERFORM VARYING TensCount FROM 0 BY 1 UNTIL TensCount > 9
                   PERFORM VARYING Unitcnt FROM 0 BY 1 UNTIL Unitcnt > 9
                       MOVE Hundcount TO PrnHundreds
                       MOVE TensCount TO PrnTens
                       MOVE Unitcnt TO PrnUnits
                       DISPLAY "In - " Odometer
                   END-PERFORM
               END-PERFORM
           END-PERFORM
           DISPLAY "End of odometer simulation."
           STOP RUN.

       CountMileage.
           MOVE Hundcount TO PrnHundreds
           MOVE TensCount TO PrnTens
           MOVE Unitcnt TO PrnUnits
           DISPLAY "Out - " Odometer.
