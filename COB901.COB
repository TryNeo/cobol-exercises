       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB901.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-PUNTOS-ALICE    PIC 9(02).
       01  WS-PUNTOS-BOB      PIC 9(02).
       01  WS-INDICE          PIC 9(02).
       01  ARREGLO-ALICE.
           05 ARR-ALICE PIC 9(02) OCCURS 3 TIMES.
       01  ARREGLO-BOB.
           05 ARR-BOB PIC 9(02) OCCURS 3 TIMES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 4 TO ARR-ALICE(1)
           MOVE 4 TO ARR-ALICE(2)
           MOVE 6 TO ARR-ALICE(3)

           MOVE 3 TO ARR-BOB(1)
           MOVE 3 TO ARR-BOB(2)
           MOVE 7 TO ARR-BOB(3)

           PERFORM VARYING WS-INDICE FROM 1
                           BY 1 UNTIL WS-INDICE > 3
                IF ARR-ALICE(WS-INDICE) > ARR-BOB(WS-INDICE)
                    ADD 1 TO WS-PUNTOS-ALICE
                END-IF
                IF ARR-ALICE(WS-INDICE) < ARR-BOB(WS-INDICE)
                    ADD 1 TO WS-PUNTOS-BOB
                END-IF
           END-PERFORM
           DISPLAY "Puntos de Alice: " WS-PUNTOS-ALICE
           DISPLAY "Puntos de Bob: " WS-PUNTOS-BOB
           STOP RUN.
       END PROGRAM COB901.
