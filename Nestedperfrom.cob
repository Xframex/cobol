      IDENTIFICATION DIVISION.
      PROGRAM-ID. Nestedperform.
      AUTHOR. ismail

      DATA DIVISION.
      WORKING-STORAGE SECTION.

      01 Num1         PIC 9(2) VALUE 10.
      01 Num2         PIC 9(2) VALUE 20.
      01 RESULT       PIC 9(2) VALUE 1.

      PROCEDURE DIVISION.
           PERFORM OUTER-PARAGRAPH

           STOP RUN.

      OUTER-PARAGRAPH
           DISPLAY 'In Outer Paragrapgh'
           PERFORM INNER-PARAGRAPH
           DISPLAY 'Result : ' RESULT

      STOP RUN.     
