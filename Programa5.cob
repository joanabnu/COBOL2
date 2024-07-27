      ******************************************************************
      * Author: Joana Maria Luz de
      * Date:27/07/2024
      * objetivo : variavel de nivel (Estrutural)
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
         01 WRK-DATA1.
             02 WRK-ANO PIC X(04) VALUE SPACES.
             02 WRK-MES PIC X(02) VALUE SPACES.
             02 WRK-DIA PIC X(02) VALUE SPACES.
         02 WRK-ENTRADA.
             05 WRK-CODIGO PIC 9(04) VALUE ZEROS.
             05 WRK-NOME PIC X(15) VALUE SPACES.
             05 WRK-SALARIO PIC 9(06) VALUE ZEROS.

         PROCEDURE DIVISION.
         0100-RECEBE SECTION.
              ACCEPT WRK-DATA1 FROM DATE YYYYMMDD.
              ACCEPT WRK-ENTRADA.
         0200-MOSTRA SECTION.
              DISPLAY "DIA " WRK-DIA, " MES " WRK-MES, " ANO " WRK-ANO.
              DISPLAY "CODIGO : " WRK-CODIGO.
              DISPLAY "NOME : " WRK-NOME.
              DISPLAY "SALARIO : " WRK-SALARIO.
         0300-FINALIZAR SECTION.
              STOP RUN.
          END PROGRAM YOUR-PROGRAM-NAME.
