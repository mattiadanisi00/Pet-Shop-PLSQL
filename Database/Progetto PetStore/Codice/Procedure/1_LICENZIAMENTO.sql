

-- =============
-- LICENZIAMENTO √
-- =============

/* la procedura prende un dipendente in input e lo licenzia (eliminazione dal database) */

CREATE OR REPLACE PROCEDURE LICENZIAMENTO 
(CF_DIP IN CHAR)
IS
  N_REPARTO                     REPARTO.NUMERO_REPARTO%TYPE;
  CF_NUOVO_CAPOREPARTO          CHAR(16);
BEGIN

    /* verifico che il dipendente non sia un caporeparto */
    BEGIN 
    SELECT NUMERO_REPARTO INTO N_REPARTO 
    FROM REPARTO 
    WHERE CF_CAPOREPARTO = CF_DIP;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DELETE FROM DIPENDENTE WHERE CF = CF_DIP; /* se non ci sono reparti associati (no data found) elimino direttamente 
            il dipendente */
            COMMIT;
    END;
    
    /* se il dip è un caporeparto allora dobbiamo trovare un nuovo caporeparto prendendolo dai dipendenti che non dirigono nessun 
    reparto */
    BEGIN
    IF (N_REPARTO IS NOT NULL) THEN 
    SELECT CF INTO CF_NUOVO_CAPOREPARTO FROM (
        SELECT CF FROM DIPENDENTE
        MINUS
        SELECT CF_CAPOREPARTO FROM REPARTO
    )
    WHERE ROWNUM = 1;
    END IF;
    
    COMMIT;
    
    /* se non ci sono dipendenti semplici si assegna il reparto al dipendente piu anziano */
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            SELECT MAX(CF) INTO CF_NUOVO_CAPOREPARTO FROM DIPENDENTE WHERE DATA_NASCITA = (SELECT MIN(DATA_NASCITA) FROM DIPENDENTE 
        WHERE CF != CF_DIP);
        COMMIT;
    END;
    
      
    UPDATE REPARTO
    SET CF_CAPOREPARTO = CF_NUOVO_CAPOREPARTO
    WHERE NUMERO_REPARTO = N_REPARTO;
    COMMIT;

    UPDATE VISITA_PETCARE
    SET CF_DIPENDENTE = CF_NUOVO_CAPOREPARTO
    WHERE CF_DIPENDENTE = CF_DIP;
    COMMIT;

    /* una volta aggiornato il db possiamo eliminare il dipendente */
    DELETE FROM DIPENDENTE WHERE CF = CF_DIP;
    COMMIT;

    DBMS_OUTPUT.PUT_LINE ('IL DIPENDENTE LICENZIATO È: '||CF_DIP);
    
END;
/