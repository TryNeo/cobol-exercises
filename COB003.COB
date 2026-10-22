       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB003.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-ID          PIC 9(5).
       01  WS-NOMBRE      PIC X(30).
       01  WS-CIUDAD      PIC X(20).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WS-ID
            ACCEPT WS-NOMBRE
            ACCEPT WS-CIUDAD
            DISPLAY "ID:"WS-ID "/ NOMBRE:" WS-NOMBRE "/ CIUDAD:"
            WS-CIUDAD
            STOP RUN.
       END PROGRAM COB003.
