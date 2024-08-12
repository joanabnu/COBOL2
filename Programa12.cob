
      ******************************************************************
      * Author: Joana Maria luz de sá
      * Date: 08/08/2024
      * Purpose: Comando de decisão IF
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
       77 WRK-NOTA1 PIC 9(02)V99 VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02)V99 VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
         0100-RECEBE SECTION.
              DISPLAY "Informe a nota 1 : "
              ACCEPT WRK-NOTA1
              DISPLAY "Informe a nota 2 : "
              ACCEPT WRK-NOTA2.
         0200-PROCESSAR SECTION.
              COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
         0300-MOSTRA SECTION.

         0400-FINALIZAR SECTION.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
