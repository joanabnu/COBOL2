      ******************************************************************
      * Author:
      * Date:
      * Purpose:
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
         77 WRK-PRODUTO PIC X(10) VALUE SPACES.
         77 WRK-ESTADO PIC X(02) VALUE SPACES.
         77 WRK-VALOR PIC 9(08) VALUE ZEROS.
         77 WRK-FRETE PIC 9(08)V99 VALUE ZEROS.
         77 WRK-VALORTOTAL PIC 9(09)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
         0100-RECEBE SECTION.

              DISPLAY "Informe o produto : "
              ACCEPT WRK-PRODUTO
              DISPLAY "Informe o estado : "
              ACCEPT WRK-ESTADO
              DISPLAY "Informe o valor do produto : "
              ACCEPT WRK-VALOR.
         0200-PROCESSA SECTION.

              IF WRK-ESTADO EQUAL "SP"
                  COMPUTE WRK-FRETE = WRK-VALOR *0,10
                  COMPUTE WRK-VALORTOTAL = WRK-FRETE + WRK-VALOR
                  END-IF.
              IF WRK-ESTADO EQUAL "RJ"
                  COMPUTE WRK-FRETE = WRK-VALOR *0,15
                  COMPUTE WRK-VALORTOTAL = WRK-FRETE + WRK-VALOR
                  END-IF.
              IF WRK-ESTADO EQUAL "SC"
                  COMPUTE WRK-FRETE = WRK-VALOR *0,20
                  COMPUTE WRK-VALORTOTAL = WRK-FRETE + WRK-VALOR
                  END-IF.
         0300-MOSTRA SECTION.
              DISPLAY "O produto : " WRK-PRODUTO.
              DISPLAY "Valor do produto : " WRK-VALOR.
                 DISPLAY "Valor frete : " WRK-FRETE.
              DISPLAY "Valor total : " WRK-VALORTOTAL.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
