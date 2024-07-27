      ******************************************************************
      * Author: Joana Maria Luz de
      * Date:27/07/2024
      * objetivo : Aprendendo a soma (add)
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
         77 WRK-NUM1 PIC 9(04) VALUE ZEROS.
         77 WRK-NUM2 PIC 9(04) VALUE ZEROS.
         77 WRK-RESULTADO PIC 9(05) VALUE ZEROS.
         PROCEDURE DIVISION.
         0100-RECEBEDATA SECTION.
              ACCEPT WRK-DATA1 FROM DATE YYYYMMDD.
         0200-RECEBEENTRADA SECTION.
              DISPLAY "Digite entrada de dados : "
              ACCEPT WRK-ENTRADA.
         0300-RECEBECALCULO SECTION.
              DISPLAY "Digite numero 1 : "
              ACCEPT WRK-NUM1
              DISPLAY "Digite numero 2 : "
              ACCEPT WRK-NUM2
              ADD WRK-NUM1 WRK-NUM2 to WRK-RESULTADO.
         0400-MOSTRADATA SECTION.

              DISPLAY "DIA " WRK-DIA, " MES " WRK-MES, " ANO " WRK-ANO.

         0500-MOSTRAENTRADA SECTION.
              DISPLAY "CODIGO : " WRK-CODIGO.
              DISPLAY "NOME : " WRK-NOME.
              DISPLAY "SALARIO : " WRK-SALARIO.
         0600-MOSTRACALCULO SECTION.
              DISPLAY "RESULTADO : " WRK-RESULTADO.
         0500-FINALIZAR SECTION.
              STOP RUN.
          END PROGRAM YOUR-PROGRAM-NAME.
