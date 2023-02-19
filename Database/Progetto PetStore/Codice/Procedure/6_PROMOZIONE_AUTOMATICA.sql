-- ==============================================================================================
-- PROMOZIONE AUTOMATICA DEL 10% PER IL PRODOTTO PIU VENDUTO DEL MESE (DURATA PROMO: 1 SETTIMANA) √
-- ==============================================================================================

/* Procedura che sconta del 10% il prodotto piu venduto del mese */

CREATE OR REPLACE PROCEDURE PROMOZIONE_AUTOMATICA IS

COD_PROD_PIU_VENDUTO         PRODOTTO.CODICE_PRODOTTO%TYPE;
COD_ULTIMA_PROMOZIONE        PROMOZIONE.CODICE_PROMOZIONE%TYPE;

BEGIN

  /* Salviamo in una variabile il codice dell'ultima promozione */
  BEGIN 
  SELECT CODICE_PROMOZIONE INTO COD_ULTIMA_PROMOZIONE
   FROM (SELECT CODICE_PROMOZIONE 
    FROM PROMOZIONE
      ORDER BY CODICE_PROMOZIONE DESC) WHERE ROWNUM = 1;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      COD_ULTIMA_PROMOZIONE:= -1;
  END;

/* tramite una query troviamo il prodotto piu venduto */
  SELECT CODICE INTO COD_PROD_PIU_VENDUTO
   FROM (SELECT SUM(QUANTITA) AS TOTALE,MAX(CODICE_PRODOTTO) AS CODICE FROM ACQUISTO_CONTIENE
    GROUP BY CODICE_PRODOTTO
    ORDER BY TOTALE DESC) WHERE ROWNUM = 1;

/* inseriamo la promozione tramite insert assegnando come codice_promozione il codice dell ultima promozione + 1 e come data_inizio/data_fine sysdate +1 a sysdate +8 (una settimana
che parte dal giorno dopo che si richiama la procedura) */
  INSERT INTO PROMOZIONE(CODICE_PROMOZIONE,DATA_INIZIO,DATA_FINE)
  VALUES(COD_ULTIMA_PROMOZIONE+1,SYSDATE+1,SYSDATE+8); -- PROMOZIONE ATTIVA DAL GIORNO DOPO PER TUTTA LA SETTIMANA
  COMMIT;

  INSERT INTO PROMOZIONE_RIGUARDA(CODICE_PROMOZIONE,CODICE_PRODOTTO,SCONTO_APPLICATO)
  VALUES(COD_ULTIMA_PROMOZIONE+1,COD_PROD_PIU_VENDUTO,0.10);
  COMMIT;
END;
/