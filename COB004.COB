       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB004.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-A PIC 9(03).
       01  WS-B PIC 9(03).
       01  WS-A-AUX PIC 9(03).
       01  WS-B-AUX PIC 9(03).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WS-A
            MOVE WS-A TO WS-B-AUX
            ACCEPT WS-B
            MOVE WS-B TO WS-A-AUX
            DISPLAY "A=" WS-A-AUX
            DISPLAY "B=" WS-B-AUX
            STOP RUN.
       END PROGRAM COB004.
