       IDENTIFICATION DIVISION.
       PROGRAM-ID. tvaCalc.
       AUTHOR. ismail.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 TVA          PIC 9       VALUE ZEROES.
       01 HT           PIC 9(3)V99 VALUE ZEROES.
       01 TTC          PIC 9(3)V99 VALUE ZEROES.
       01 TAUX         PIC 9V99    VALUE 0.20.
       01 UserPrompt   PIC X(38)   VALUE "tapez le prix HT".
       
       PROCEDURE DIVISION.
       CalculationTVA.
           DISPLAY UserPrompt
           ACCEPT HT

           COMPUTE TTC = HT * (1 + TAUX)
           DISPLAY "le prix HT : " HT
           DISPLAY "le prix TTC : " TTC
           DISPLAY "TVA(20%)"

           STOP RUN.
