       IDENTIFICATION DIVISION.
       PROGRAM-ID. Calculator.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1        PIC 9(5)V99.
       01 WS-NUM2        PIC 9(5)V99.
       01 WS-RESULT      PIC 9(5)V99.
       01 WS-OPERATOR    PIC X.
       01 WS-CONTINUE    PIC X VALUE 'Y'.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM UNTIL WS-CONTINUE NOT EQUAL 'Y'
               DISPLAY "Enter first number: "
               ACCEPT WS-NUM1
               DISPLAY "Enter operator (+, -, *, /): "
               ACCEPT WS-OPERATOR
               DISPLAY "Enter second number: "
               ACCEPT WS-NUM2
               EVALUATE WS-OPERATOR
                   WHEN "+"
                       ADD WS-NUM1 TO WS-NUM2 GIVING WS-RESULT
                   WHEN "-"
                       SUBTRACT WS-NUM2 FROM WS-NUM1 GIVING WS-RESULT
                   WHEN "*"
                       MULTIPLY WS-NUM1 BY WS-NUM2 GIVING WS-RESULT
                   WHEN "/"
                       IF WS-NUM2 = 0
                           DISPLAY "Error: Division by zero."
                       ELSE
                           DIVIDE WS-NUM1 BY WS-NUM2 GIVING WS-RESULT
                       END-IF
                   WHEN OTHER
                       DISPLAY "Invalid operator."
               END-EVALUATE
               IF WS-OPERATOR NOT EQUAL "/"
                   DISPLAY "Result: " WS-RESULT
               END-IF
               DISPLAY "Do you want to perform another calculation? (Y/N): "
               ACCEPT WS-CONTINUE
           END-PERFORM
           DISPLAY "Thank you for using the calculator."
           STOP RUN.
