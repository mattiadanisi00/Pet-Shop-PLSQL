-- ============================
-- DIPENDENTE POCO PRODUTTIVO √
-- ============================

/* Procedura che calcola il dipendente con meno ore e lo richiama. Al terzo richiamo si viene licenziati */

CREATE OR REPLACE PROCEDURE DIPENDENTE_POCO_PRODUTTIVO 
IS 
  CF_DPP             CHAR(16);
  NUMERO_RICHIAMI   NUMBER;
BEGIN 

/* La query seguente calcola le ore per ogni dipendente e salva in una variabile il dipendente poco produttivo*/
  SELECT CF INTO CF_DPP FROM (
    SELECT 
        SUM(EXTRACT(HOUR FROM (ORA_USCITA - ORA_ENTRATA))) AS ORE_DI_LAVORO,
        MAX(CF_DIPENDENTE) AS CF
    FROM E_PRESENTE
        GROUP BY CF_DIPENDENTE
        ORDER BY ORE_DI_LAVORO ASC)
  WHERE ROWNUM = 1;

  DBMS_OUTPUT.PUT_LINE ('DIPENDENTE CON MENO ORE: '||CF_DPP);

  /* contiamo il numero di richiami */

  SELECT COUNT(*) INTO NUMERO_RICHIAMI
    FROM RICHIAMO 
      WHERE CF_DIPENDENTE = CF_DPP
        GROUP BY CF_DIPENDENTE;

/* se il dipendente ha gia avuto 2 richiami, quello appena ottenuto è il terzo e quindi viene licenziato */
  IF (NUMERO_RICHIAMI > 1) THEN 
    DBMS_OUTPUT.PUT_LINE ('IL DIPENDENTE ' ||CF_DPP|| ' HA SUPERATO IL NUMERO MASSIMO DI RICHIAMI E PERTANTO VERRÀ LICENZIATO');
    LICENZIAMENTO(CF_DPP);

/* altrimenti salviamo il record relativo al richiamo */
  ELSE INSERT INTO RICHIAMO(DATA_RICHIAMO,CF_DIPENDENTE) VALUES (TRUNC(SYSDATE,'MONTH'),CF_DPP);
  COMMIT;
  END IF;

/* se non vengono trovati dati il dipendente è al suo primo richiamo */
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    INSERT INTO RICHIAMO(DATA_RICHIAMO,CF_DIPENDENTE) VALUES (TRUNC(SYSDATE,'MONTH'),CF_DPP);
    COMMIT;

END;
/