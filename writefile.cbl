       IDENTIFICATION DIVISION.
       PROGRAM-ID. WRITE-FILE.
          
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OUTPUT-FILE ASSIGN TO "OUTPUT.TXT"
           ORGANIZATION IS LINE SEQUENTIAL.
          
       DATA DIVISION.
       FILE SECTION.
       FD OUTPUT-FILE.
       01 OUTPUT-RECORD.
              05 OUTPUT-DATA PIC X(80).
          
       PROCEDURE DIVISION.
           OPEN OUTPUT OUTPUT-FILE.
           MOVE "Hello, World!" TO OUTPUT-DATA.
           WRITE OUTPUT-RECORD.
           CLOSE OUTPUT-FILE.
           STOP RUN.