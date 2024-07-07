       IDENTIFICATION DIVISION.
       PROGRAM-ID. StockManagement.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT StockFile ASSIGN TO "Stock.dat"
           ORGANIZATION IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD StockFile.
       01 StockRec.
           02 StockNumber   PIC 9(5).
           02 ManfNumber    PIC 9(4).
           02 QtyInStock    PIC 9(6).
           02 ReorderLevel  PIC 9(6).
           02 ReorderQty    PIC 9(6).

       WORKING-STORAGE SECTION.
       77 END-OF-FILE PIC X VALUE 'N'.

       PROCEDURE DIVISION.
       OPEN-INPUT-FILE.
           OPEN INPUT StockFile
           PERFORM READ-STOCK-FILE
           CLOSE StockFile
           STOP RUN.

       READ-STOCK-FILE.
           PERFORM UNTIL END-OF-FILE = 'Y'
               READ StockFile
                   AT END
                       MOVE 'Y' TO END-OF-FILE
                   NOT AT END
                       PERFORM PROCESS-STOCK-RECORD
               END-READ
           END-PERFORM.

       PROCESS-STOCK-RECORD.
           DISPLAY "Stock Number: " StockNumber.
           DISPLAY "Manufacturer Number: " ManfNumber.
           DISPLAY "Quantity In Stock: " QtyInStock.
           DISPLAY "Reorder Level: " ReorderLevel.
           DISPLAY "Reorder Quantity: " ReorderQty.
