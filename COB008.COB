       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB008.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-RESULTADO PIC 9(03).
       01  WS-RESTO     PIC 9(03).
       01  WS-A         PIC 9(03).
       01  WS-B         PIC 9(03).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WS-A
            ACCEPT WS-B
            IF WS-B NOT EQUAL ZEROES
               DIVIDE WS-A BY WS-B
                    GIVING WS-RESULTADO
                    REMAINDER WS-RESTO
               DISPLAY WS-RESULTADO
               DISPLAY WS-RESTO
            ELSE
              DISPLAY 'ERROR NO DIVIDE ZEROES'
            END-IF
            STOP RUN.
       END PROGRAM COB008.
