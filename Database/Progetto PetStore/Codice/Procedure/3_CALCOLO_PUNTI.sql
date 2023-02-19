-- ===================================
-- CALCOLO PUNTI TESSERA DEL CLIENTE X √
-- ===================================

/* la procedura calcola i punti relativi al cliente inserito in input 
Un cliente riceve un punto per ogni euro speso (viene calcolato il prezzo pieno del prodotto senza sconto)*/

CREATE OR REPLACE PROCEDURE CALCOLO_PUNTI(CF_CL IN CHAR) 
IS
  PUNTI           NUMBER:= 0;
  ANNO_CORRENTE   NUMBER;
BEGIN

/* ricaviamo l'anno in quanto i punti presi nell'anno X possono essere usati solo ed esclusivamento nello stesso anno */
  SELECT EXTRACT(YEAR FROM SYSDATE) INTO ANNO_CORRENTE
  FROM DUAL;

/* calcola i punti tramite la seguente query che per ogni riga moltiplica il prezzo del prodotto per la quantita acquistata (acquisti eseguiti nell'anno in cui si chiama la procedura)
Se non vengono trovati scontrini il cliente ha 0 punti totali */
  BEGIN
  SELECT * INTO PUNTI FROM 
    (SELECT SUM(PREZZO*QUANTITA) FROM
    ACQUISTO_CONTIENE AC JOIN PRODOTTO PR ON PR.CODICE_PRODOTTO = AC.CODICE_PRODOTTO
    JOIN ACQUISTO_TESSERA AT ON AT.NUMERO_SCONTRINO = AC.NUMERO_SCONTRINO
    WHERE CF_CLIENTE = CF_CL AND EXTRACT(YEAR FROM DATA_ACQUISTO) IN (ANNO_CORRENTE));
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      PUNTI := 0;
  END;

  PUNTI:= FLOOR(PUNTI);
  DBMS_OUTPUT.PUT_LINE ('PUNTI : '||PUNTI); 

END;
/