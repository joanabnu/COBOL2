      ******************************************************************
      * Author: Joana Maria Luz de
      * Date: 01/08/2024
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
         77 WRK-NUM1 PIC 9(04) VALUE ZERO.
         77 WRK-NUM2 PIC 9(04) VALUE ZERO.
         77 WRK-RESULTADO PIC 9(05) VALUE ZEROS.

        PROCEDURE DIVISION.

         0100-RECEBE SECTION.

              DISPLAY "Numero 1 : "
              ACCEPT WRK-NUM1.
              DISPLAY "Numero 2 : "
              ACCEPT WRK-NUM2.

               DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULTADO
               ON SIZE ERROR
               DISPLAY "Erro - division por 0 ".
         0200-MOSTRAR SECTION.
              DISPLAY "Numero 1 : " WRK-NUM1.
              DISPLAY "Numero 2 : " WRK-NUM2.
              DISPLAY "Resultado : " WRK-RESULTADO.

         0300-FINALIZAR SECTION.
              STOP RUN.

       END PROGRAM YOUR_PROGRAM_NAME.
