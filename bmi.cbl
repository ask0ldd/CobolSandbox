       IDENTIFICATION DIVISION.
       PROGRAM-ID. BMICALCULATOR.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WEIGHT  PIC 999.
       01 HEIGHT_INCHES  PIC 999.
       01 BMI     PIC 999V99.

       PROCEDURE DIVISION.
           DISPLAY "Enter your weight in pounds : ".
           ACCEPT WEIGHT.
           DISPLAY "Enter your height in inches :".
           ACCEPT HEIGHT_INCHES.
           COMPUTE BMI = (WEIGHT * 703)/(HEIGHT_INCHES * HEIGHT_INCHES).
           DISPLAY "Your BMI is : " BMI.
           STOP RUN.
       END PROGRAM BMICALCULATOR.


