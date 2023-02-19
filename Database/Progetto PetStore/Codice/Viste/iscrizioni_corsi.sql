CREATE OR REPLACE VIEW ISCRIZIONI_CORSI AS
  SELECT CF_CLIENTE,CDA.CODICE_CORSO,NOME_CORSO,NUMERO_TESSERINO_ADDESTRATORE,INIZIO_CORSO,FINE_CORSO
    FROM SI_ISCRIVE SI JOIN CORSO_DI_ADDESTRAMENTO CDA ON SI.CODICE_CORSO = CDA.CODICE_CORSO  
            WHERE TRUNC(INIZIO_CORSO) < TRUNC(SYSDATE) AND TRUNC(FINE_CORSO) > TRUNC(SYSDATE);

