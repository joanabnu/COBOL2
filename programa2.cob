   ******************************************************************
      * Author: Joana
      * Date:2/3/06/2024
      * Purpose:Primeiro contato com cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
         77 WRK-NOME  PIC X(30) VALUE "Joana".
         77 WRK-NOM PIC X(30)  VALUE SPACES.
         77 WRK-IDADE PIC 9(2) VALUE ZEROS.
       PROCEDURE DIVISION.
            ACCEPT WRK-NOM.
            ACCEPT WRK-IDADE.
            DISPLAY "Nome digitado : " WRK-NOM.
            DISPLAY "Nome da variavel : " WRK-NOME.
            DISPLAY "Idade informada : " WRK-IDADE.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
