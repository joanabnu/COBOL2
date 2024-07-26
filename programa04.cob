      ******************************************************************
      * Author: Joana Maria Luz de
      * Date:26/07/2024
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
             05 WRK-ANO PIC X(04) VALUE SPACES.

             05 WRK-MES PIC X(02) VALUE SPACES.

             05 WRK-DIA PIC X(02) VALUE SPACES.
         PROCEDURE DIVISION.
         0100-RECEBE SECTION.
              ACCEPT WRK-DATA1 FROM DATE YYYYMMDD.
         0200-MOSTRA SECTION.
              DISPLAY "DIA " WRK-DIA, " MES " WRK-MES, " ANO " WRK-ANO.
         0300-FINALIZAR SECTION.
              STOP RUN.
          END PROGRAM YOUR-PROGRAM-NAME.
