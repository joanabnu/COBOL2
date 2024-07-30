      ******************************************************************
      * Author: Joana Maria Luz de
      * Date: 30/07/2024
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

         01 WRK-DATA1.
             02 WRK-ANO PIC X(04) VALUE SPACES.
             02 WRK-MES PIC X(02) VALUE SPACES.
             02 WRK-DIA PIC X(02) VALUE SPACES.

         02 WRK-ENTRADA.
             05 WRK-CODIGO PIC 9(04) VALUE ZEROS.
             05 WRK-NOME PIC X(15) VALUE SPACES.
             05 WRK-SALARIO PIC 9(06) VALUE ZEROS.

      *>    SOMA
         77 WRK-NUM1 PIC 9(04) VALUE ZEROS.
         77 WRK-NUM2 PIC 9(04) VALUE ZEROS.
         77 WRK-RESULTADO PIC S9(05) VALUE ZEROS.

      *>    SUBTRAÇÃO
         77 WRK-NUMSU1 PIC 9(05) VALUE ZEROS.
         77 WRK-NUMSU2 PIC 9(05) VALUE ZEROS.
         77 WRK-RESULTADOSUB PIC S9(05) VALUE ZEROS.

      *>    MULTIPLY
         77 WRK-NUMEMUL1 PIC 9(04) VALUE ZEROS.
         77 WRK-NUMEMUL2 PIC 9(04) VALUE ZEROS.
         77 WRK-RESULTADOMUL PIC S9(08)V99 VALUE ZEROS.
         77 WRK-RESULTADO-ED PIC -ZZ.ZZZ.ZZ9,99 VALUE ZEROS.

      *>    DIVIDE (Comentado no código original)
      *>    77 WRK-NUMEDIV1 PIC 9(04) VALUE ZEROS.
      *>    77 WRK-NUMEDIV2 PIC 9(04) VALUE ZEROS.
      *>    77 WRK-RESULTADODIV PIC S9(08)V99 VALUE ZEROS.
      *>    77 WRK-RESULTADO PIC -ZZ.ZZZ.ZZ9,99 VALUE ZEROS.

       PROCEDURE DIVISION.

         0100-RECEBEDATA SECTION.
              ACCEPT WRK-DATA1 FROM DATE YYYYMMDD.

         0200-RECEBEENTRADA SECTION.
              DISPLAY "Digite entrada de dados : ".
              ACCEPT WRK-ENTRADA.

         0300-RECEBECASOMA SECTION.
              DISPLAY "Digite numero 1 : ".
              ACCEPT WRK-NUM1.
              DISPLAY "Digite numero 2 : ".
              ACCEPT WRK-NUM2.
              ADD WRK-NUM1 WRK-NUM2 TO WRK-RESULTADO.

         0400-RECEBESUBTRACT SECTION.
              DISPLAY "Digite numero 1 : SUB ".
              ACCEPT WRK-NUMSU1.
              DISPLAY "Digite numero 2 SUB : ".
              ACCEPT WRK-NUMSU2.
              SUBTRACT WRK-NUMSU1 FROM WRK-NUMSU2 GIVING WRK-RESULTADOSUB.

         0500-RECEBEMUL SECTION.
              DISPLAY "Digite numero 1 : MUL".
              ACCEPT WRK-NUMEMUL1.
              DISPLAY "Digite numero 2 : MUL".
              ACCEPT WRK-NUMEMUL2.
              MULTIPLY WRK-NUMEMUL1 BY WRK-NUMEMUL2 GIVING WRK-RESULTADOMUL.
              MOVE WRK-RESULTADOMUL TO WRK-RESULTADO-ED.

         0600-MOSTRADATA SECTION.
              DISPLAY "DIA " WRK-DIA ", MES " WRK-MES ", ANO " WRK-ANO.

         0700-MOSTRAENTRADA SECTION.
              DISPLAY "CODIGO : " WRK-CODIGO.
              DISPLAY "NOME : " WRK-NOME.
              DISPLAY "SALARIO : " WRK-SALARIO.

         0800-MOSTRASOMA SECTION.
              DISPLAY "RESULTADO : " WRK-RESULTADO.

         0900-MOSTRASUB SECTION.
              DISPLAY "RESULTADO SUB: " WRK-RESULTADOSUB.

         1000-MOSTRAMUL SECTION.
              DISPLAY "RESULTADO MUL : " WRK-RESULTADO-ED.

         1100-FINALIZAR SECTION.
              STOP RUN.

       END PROGRAM YOUR_PROGRAM_NAME.
