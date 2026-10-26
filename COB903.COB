      * COBOL Program 903
      * This is a simple COBOL program that counts the occurrences of nucleotides
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB903.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY. FUNCTION ALL INTRINSIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-DNA PIC X(128).
       01  WS-A PIC 9(4).
       01  WS-C PIC 9(4).
       01  WS-G PIC 9(4).
       01  WS-T PIC 9(4).
       01  WS-OTHER PIC 9(4).
       01  WS-LENGTH PIC 9(4).
       01  WS-INDEX PIC 9(4) VALUE 1.
       01  CT-VALOR-1 PIC 9(4) VALUE 1.
       01  CT-A PIC X(1) VALUE 'A'.
       01  CT-C PIC X(1) VALUE 'C'.
       01  CT-G PIC X(1) VALUE 'G'.
       01  CT-T PIC X(1) VALUE 'T'.
       01  WS-ERROR PIC X(36).

       PROCEDURE DIVISION.
           INITIALIZE WS-A
                      WS-C
                      WS-G
                      WS-T
                      WS-LENGTH
                      WS-INDEX
                      WS-OTHER
                      WS-ERROR
           MOVE "GATTACA" TO WS-DNA
           MOVE FUNCTION LENGTH(FUNCTION TRIM(WS-DNA TRAILING))
              TO WS-LENGTH
           PERFORM NUCLEOTIDE-COUNT
           DISPLAY "WS-A: " WS-A
           DISPLAY "WS-C: " WS-C
           DISPLAY "WS-G: " WS-G
           DISPLAY "WS-T: " WS-T
           STOP RUN.
       NUCLEOTIDE-COUNT.
          PERFORM VARYING WS-INDEX
               FROM CT-VALOR-1 BY CT-VALOR-1 UNTIL WS-INDEX > WS-LENGTH
               EVALUATE WS-DNA(WS-INDEX:CT-VALOR-1)
                     WHEN CT-A
                         ADD CT-VALOR-1 TO WS-A
                     WHEN CT-C
                         ADD CT-VALOR-1 TO WS-C
                     WHEN CT-G
                         ADD CT-VALOR-1 TO WS-G
                     WHEN CT-T
                         ADD CT-VALOR-1 TO WS-T
                     WHEN OTHER
                         ADD CT-VALOR-1 TO WS-OTHER
               END-EVALUATE
           END-PERFORM
           IF WS-OTHER > 0
               MOVE "ERROR: Invalid nucleotide in strand" TO WS-ERROR
           END-IF
           .
