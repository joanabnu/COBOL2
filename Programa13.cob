      ******************************************************************
      * Author:Joana Maria Luz de Sá
      * Date:04/12/2024
      * Purpose:Comando de repetição PERFORM UNTIL
      * Tectonics: cobc
      ******************************************************************
              ENVIRONMENT    DIVISION.
              IDENTIFICATION DIVISION.

              CONFIGURATION SECTION.

              SPECIAL-NAMES.
              DECIMAL-POINT IS COMMA.
              DATA DIVISION.
              WORKING-STORAGE SECTION.
       77 WRK-NUMERO PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR PIC 9(02) 1.
       77 WRK-RESULTADO PIC 9(03) VALUE ZEROS.

              PROCEDURE DIVISION.
              0001-PRINCIPAL SECTION.
              PERFORM 0100-INICIALIZAR
              PERFORM 0200-PROCESSAR
              PERFORM 0300-FINALIZAR
              STOP RUN.


              0100-INICIALIZAR SECTION.
              DISPLAY "Qual numero : "
              ACCEPT WRK-NUMERO.

              0200-PROCESSAR SECTION.
              PERFORM UNTIL WRK-CONTADOR GREATER 11
              COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
              DISPLAY WRK-NUMERO " X  " WRK-CONTADOR " = " WRK-RESULTADO
              ADD 1 TO WRK-CONTADOR
              END-PERFORM.
              0300-FINALIZAR SECTION.
