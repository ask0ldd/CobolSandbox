       IDENTIFICATION DIVISION.
       PROGRAM-ID. WRITE-FILE.
          
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OUTPUT-FILE ASSIGN TO 'OUTPUT.TXT'
           ORGANIZATION IS LINE SEQUENTIAL.
          
       DATA DIVISION.
       FILE SECTION.
       FD OUTPUT-FILE.
       01 OUTPUT-RECORD.
              05 OUTPUT-DATA   PIC X(10).
              05 SPAC          PIC X(5).
              05 OUTPUT-D2     PIC X(10).
      *    cant define value in file section
          
       PROCEDURE DIVISION.
           OPEN OUTPUT OUTPUT-FILE.
           MOVE 'Hello, World!' TO OUTPUT-DATA.
           MOVE SPACES TO SPAC.
           MOVE 'Bonjour a vous!' TO OUTPUT-D2.
      *    MOVE "Hello, World!" TO OUTPUT-RECORD(1:80).
      *    MOVE "Bonjour à vous!" TO OUTPUT-RECORD(81:80).
      *    WRITE OUTPUT-RECORD.
      *    without FROM OUTPUT-RECORD it won't write OUTPUT-D2
           WRITE OUTPUT-RECORD.
           WRITE OUTPUT-RECORD.
           CLOSE OUTPUT-FILE.
           STOP RUN.

