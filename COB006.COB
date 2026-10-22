       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB006.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-RESULTADO PIC S9(03).
       01  WS-A         PIC 9(03).
       01  WS-B         PIC 9(03).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WS-A
            ACCEPT WS-B
            COMPUTE WS-RESULTADO = WS-A - WS-B
            DISPLAY WS-RESULTADO
            STOP RUN.
       END PROGRAM COB006.
