      ******************************************************************
      * Author: Joana maria luz de sá
      * Date: 08/08 /2024
      * Purpose: Comando de decisão IF usando EVALUETE
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

         77 WRK-VALOR-ED PIC ZZ.ZZZ.ZZ9,99.
         77 WRK-FRETE-ED PIC ZZ.ZZZ.ZZ9,99.
         77 WRK-VALORTOTAL-ED PIC ZZ.ZZZ.ZZ9,99.

       PROCEDURE DIVISION.

         0100-RECEBE SECTION.

              DISPLAY "Informe o produto : "
              ACCEPT WRK-PRODUTO
              DISPLAY "Informe o estado : "
              ACCEPT WRK-ESTADO
              DISPLAY "Informe o valor do produto : "
              ACCEPT WRK-VALOR.

         0200-PROCESSA SECTION.

              EVALUATE WRK-ESTADO
               WHEN "SP"
                  COMPUTE WRK-FRETE = WRK-VALOR *0,10

               WHEN "RJ"
                  COMPUTE WRK-FRETE = WRK-VALOR *0,15

               WHEN "SC"
                  COMPUTE WRK-FRETE = WRK-VALOR *0,20
               WHEN OTHER
               DISPLAY "Não entregamos nesse estado " WRK-ESTADO
              END-EVALUATE.


              COMPUTE  WRK-VALORTOTAL = WRK-VALOR + WRK-FRETE
              MOVE WRK-VALOR TO WRK-VALOR-ED
              MOVE WRK-FRETE TO WRK-FRETE-ED
              MOVE WRK-VALORTOTAL TO WRK-VALORTOTAL-ED.



         0300-MOSTRA SECTION.
              DISPLAY "O produto : " WRK-PRODUTO.
              DISPLAY "Valor do produto : " WRK-VALOR-ED.

              IF WRK-FRETE GREATER 0
                  DISPLAY "Valor frete : " WRK-FRETE-ED

              ELSE
                  DISPLAY "Não entregamos nesse estado " WRK-ESTADO

              END-IF.
    *****COMPUTE WRK-VALORTOTAL = WRK=VALOR + WRK-FRETE.
              DISPLAY "Valor total : " WRK-VALORTOTAL-ED.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
