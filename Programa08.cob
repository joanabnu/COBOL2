******************************************************************
      * Author: Joana Maria Luz de
      * Date: 01/08/2024
      * Objetivo: Aprendendo operações aritméticas
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR_PROGRAM_NAME.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
         77 WRK-NUM1 PIC 9(04) VALUE ZERO.
         77 WRK-NUM2 PIC 9(04) VALUE ZERO.
         77 WRK-RESULTADO PIC 9(05) VALUE ZERO.


       PROCEDURE DIVISION.



         0100-PROCESSA SECTION.
         DISPLAY "Numero 1 : "
         ACCEPT WRK-NUM1
         DISPLAY "Numero 2 : "
         ACCEPT WRK-NUM2
         COMPUTE WRK-RESULTADO = (WRK-NUM1 + WRK-NUM2) / 2.
         0200-MOSTRA SECTION.
         DISPLAY "Numero 1 : " WRK-NUM1.
         DISPLAY "Numero 2 : " WRK-NUM2.
         DISPLAY "Resultado : " WRK-RESULTADO.
         0300-FINALIZAR SECTION.
              STOP RUN.
