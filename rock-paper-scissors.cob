       IDENTIFICATION DIVISION.
       PROGRAM-ID. rock-paper-scissors.
       AUTHOR. ismail.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 player1       PIC 9  VALUE 1.
           88 player1-ROCK      VALUE 1.
           88 player1-PAPER     VALUE 2.
           88 player1-SCISSOR   VALUE 3.

       01 player2       PIC 9  VALUE 2.
           88 player2-ROCK      VALUE 1.
           88 player2-PAPER     VALUE 2.
           88 player2-SCISSOR   VALUE 3.

       01 Result        PIC X(35) VALUE SPACES.        

       PROCEDURE DIVISION.
           DISPLAY "player1 : choose (1= ROCK, 2=PAPER, 3=SCISSOR) "
           ACCEPT player1
           DISPLAY "player2 : choose (1= ROCK, 2=PAPER, 3=SCISSOR)"
           ACCEPT player2
           
           EVALUATE TRUE 
             WHEN player1-ROCK AND player2-ROCK
                MOVE "Even game !!" TO Result
             WHEN player1-ROCK AND player2-PAPER  
                MOVE "player 2 WIN" TO Result
             WHEN player1-ROCK AND player2-SCISSOR 
                MOVE "player 1 WIN" TO Result
             WHEN player1-PAPER AND player2-ROCK 
                MOVE "player 1 WIN" TO Result
             WHEN player1-PAPER AND player2-PAPER
                MOVE "Even game !!" TO Result
             WHEN player1-PAPER AND player2-SCISSOR 
                MOVE "player 2 WIN" TO Result
             WHEN player1-SCISSOR AND player2-ROCK 
                MOVE "player 2 WIN" TO Result
             WHEN player1-SCISSOR AND player2-PAPER 
                MOVE "player 1 WIN" TO Result
             WHEN player1-SCISSOR AND player2-SCISSOR
                MOVE "Even game !!" TO Result
             WHEN OTHER
                MOVE "Invalid input" TO Result
           END-EVALUATE
           
           DISPLAY Result
           STOP RUN.
