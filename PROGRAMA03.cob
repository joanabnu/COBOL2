      ******************************************************************
      * Author: Joana Maria luz de
      * Date:01/07/24
      * Purpose: E
      * Tectonics: cobc
      ******************************************************************
         IDENTIFICATION DIVISION.
         PROGRAM-ID. YOUR-PROGRAM-NAME.
         ENVIRONMENT DIVISION.
         CONFIGURATION SECTION.
         SPECIAL-NAMES.
             DECIMAL-POINT IS COMMA.
         DATA DIVISION.
         WORKING-STORAGE SECTION.

         77 WRK-NOME            PIC X(30) VALUE SPACES.
         77 WRK-VALOR           PIC 9(03)V99 VALUE ZEROS.
         77 WRK-VALOR2          PIC 9(03)V99 VALUE ZEROS.
         77 WRK-RESULTADO       PIC S9(03)V99 VALUE ZEROS.

         PROCEDURE DIVISION.
         0100-RECEBE SECTION.
              DISPLAY "Digite o seu nome : "
              ACCEPT WRK-NOME.
              DISPLAY "Digite a sua  valor 1  : "
              ACCEPT WRK-VALOR.
              DISPLAY "Digite o seu valor 2 : "
              ACCEPT WRK-VALOR2.
              COMPUTE WRK-RESULTADO = WRK-VALOR - WRK-VALOR2.
         0200-MOSTRA  SECTION.
              DISPLAY "Nome digitado e : " WRK-NOME.
              DISPLAY "VALOR 1 : " WRK-VALOR.
              DISPLAY "VALOR 2  : " WRK-VALOR2.
              DISPLAY "resultado : " WRK-RESULTADO.
         0300-FINALIZAR SECTION.
              STOP RUN.
              END PROGRAM YOUR-PROGRAM-NAME.