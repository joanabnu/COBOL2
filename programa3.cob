      ******************************************************************
      * Author: Joana Maria luz de
      * Date:28/06/24
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
         77 WRK-IDADE           PIC 9(2) VALUE ZEROS.
         77 WRK-SALARIO         PIC 9(8)V99 VALUE ZEROS.

         PROCEDURE DIVISION.
         0100-RECEBE SECTION.
              DISPLAY "Digite o seu nome : "
              ACCEPT WRK-NOME.
              DISPLAY "Digite a sua idade : "
              ACCEPT WRK-IDADE.
              DISPLAY "Digite o seu salario : "
              ACCEPT WRK-Salario.
         0200-MOSTRA  SECTION.
              DISPLAY "Nome digitado e : " WRK-NOME.
              DISPLAY "Idade digitado e : " WRK-IDADE.
              DISPLAY "Salario digitado : " WRK-Salario.
         0300-FINALIZAR SECTION.
              STOP RUN.
              END PROGRAM YOUR-PROGRAM-NAME.
