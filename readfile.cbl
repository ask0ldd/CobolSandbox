       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-FILE.
          
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO 'GAMES.TXT'
           ORGANIZATION IS LINE SEQUENTIAL.       
          
       DATA DIVISION.
       FILE SECTION.
       FD IN-FILE.
       01 IN-RECORD.
           05 ID-GAME          PIC 99.
           05 SPCS1            PIC X(2).
           05 TITLE-GAME       PIC X(40).
           05 DATE-GAME        PIC X(10).
           05 SPCS2            PIC X(2).
           05 NOTE-GAME        PIC 99.

       WORKING-STORAGE SECTION.
       01 SWITCHES.
           05 EOF-SWITCH PIC X VALUE "N".

       01 COUNTERS.
           05 REC-COUNTER PIC 9(3) VALUE 0.
       
       PROCEDURE DIVISION.

           PERFORM 100-INITIALIZE.
           PERFORM 200-PROCESS-RECORDS UNTIL EOF-SWITCH = "Y".
           PERFORM 300-TERMINATE.

       100-INITIALIZE.

           OPEN INPUT IN-FILE.

           READ IN-FILE
               AT END
                   MOVE "Y" TO EOF-SWITCH
               NOT AT END
                   COMPUTE REC-COUNTER = REC-COUNTER + 1
           END-READ.

       200-PROCESS-RECORDS.

           DISPLAY "ID >>>>> " ID-GAME.
           DISPLAY "TITLE >>>>> " TITLE-GAME.
           DISPLAY "RELEASE DATE >>>>> " DATE-GAME.
           DISPLAY "NOTE >>>>> " NOTE-GAME.

           READ IN-FILE
               AT END
                   MOVE "Y" TO EOF-SWITCH
               NOT AT END
                   COMPUTE REC-COUNTER = REC-COUNTER + 1
           END-READ.

       300-TERMINATE.

           DISPLAY "N RECORDS >>>>> " REC-COUNTER.
           CLOSE IN-FILE.

