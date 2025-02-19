IDENTIFICATION DIVISION.
PROGRAM-ID. GUESSING-GAME.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-RANDOM-NUMBER        PIC 9(2).
01 WS-USER-GUESS           PIC 9(2).
01 WS-ATTEMPT-COUNT        PIC 9(2) VALUE 0.
01 WS-RESPONSE             PIC X(20).

PROCEDURE DIVISION.
    PERFORM INITIALIZE
    PERFORM GUESS-LOOP
    STOP RUN.

INITIALIZE.
    MOVE FUNCTION RANDOM(100) TO WS-RANDOM-NUMBER
    DISPLAY "Guess a number between 1 and 100:"

GUESS-LOOP.
    ACCEPT WS-USER-GUESS
    ADD 1 TO WS-ATTEMPT-COUNT
    IF WS-USER-GUESS = WS-RANDOM-NUMBER
        DISPLAY "Congratulations! You guessed the number in " WS-ATTEMPT-COUNT " attempts."
        STOP RUN
    ELSE
        IF WS-USER-GUESS < WS-RANDOM-NUMBER
            DISPLAY "Too low! Try again:"
        ELSE
            DISPLAY "Too high! Try again:"
        END-IF
    END-IF
    PERFORM GUESS-LOOP

