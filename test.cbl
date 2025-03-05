       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 X PIC 99.
       01 Y PIC 99.
       01 Z PIC 99.
       01 DESC PIC X(8).
       01 JSTRING PIC X(5) VALUE IS ' John'.

       PROCEDURE DIVISION.
               MOVE 10 TO X.
               MOVE 25 TO Y.
               MOVE "X + Y = " TO DESC.
               PERFORM ADDNDISP-RESULT.
               STOP RUN.

       ADDNDISP-RESULT.
               ADD X TO Y GIVING Z.
               DISPLAY DESC Z JSTRING.