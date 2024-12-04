      ******************************************************************
      * Author:Joana Maria Luz de Sá
      * Date:04/12/2024
      * Purpose:Comando de repetição
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
         0001-PRINCIPAL SECTION.
         PERFORM 0100-INICIALIZAR
         PERFORM 0200-PROCESSAR
         PERFORM 0300-FINALIZAR
         STOP RUN.
         0100-INICIALIZAR SECTION.
              DISPLAY "Informe a nota 1 : "
              ACCEPT WRK-NOTA1
              DISPLAY "Informe a nota 2 : "
              ACCEPT WRK-NOTA2.

         0200-PROCESSAR SECTION.
              COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
              DISPLAY "MEDIA " WRK-MEDIA.

              EVALUATE TRUE
              WHEN WRK-MEDIA GREATER 10
                  DISPLAY "ENTRE AS NOTAS CORRETAS"
              WHEN WRK-MEDIA GREATER 6

               DISPLAY "APROVADO"
               WHEN OTHER
               DISPLAY "REPROVADO"
               END-EVALUATE.

         0300-FINALIZAR SECTION.
            DISPLAY "Fim de programa. ".
