-- ====================================
-- STIPENDI -_-_-_- PROCEDURA SCHEDULER
-- ====================================
/* 
    Procedura utilizzata nello scheduler per automatizzare gli stipendi
*/

CREATE OR REPLACE PROCEDURE STIPENDI IS

    ULTIMO_STIPENDIO    NUMBER;
    CF_DIP              CHAR(16);
    IBAN                STIPENDIO.IBAN_DIPENDENTE%TYPE;
BEGIN

    /* Usiamo un FOR LOOP. Benchè non sia consigliato da usare in un DB data la grande mole di dati, nel nostro casa va
    benissimo in quanto il ciclo avviene al massimo su una ventina di tuple */
    
    FOR i IN (SELECT CF FROM DIPENDENTE) LOOP
    
    BEGIN 


    SELECT CF INTO CF_DIP
    FROM DIPENDENTE
    WHERE CF = (i.CF);

    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20021,'IL DIPENDETE NON È STATO TROVATO NEL DATABASE');
    END;
    
    
    BEGIN

    /* Scriviamo in due variabili rispettivamento l'ultimo stipendio (ho preso il max ragionando che andando avanti lo stipendio non
    fa che salire ma avremmo potuto prendere anche quello con la data piu recente usando una query innestata) dell i-esimo dipendente) */
    
    SELECT MAX(TOTALE_STIPENDIO),MAX(IBAN_DIPENDENTE)  INTO ULTIMO_STIPENDIO,IBAN
    FROM STIPENDIO
    WHERE CF_DIPENDENTE = (i.CF)
    GROUP BY CF_DIPENDENTE;

    /* Se non troviamo il dipendente tra gli ultimi stipendi significa che sebbene sia presente in azienda non ha ancora ricevuto alcuno stipendio, per tanto settiamo lo stipendio al
    minimo (900 euro) */
    
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            ULTIMO_STIPENDIO := 900;
    END;
    
    /* tramite Insert inseriamo nella tabella i vari stipendi */
    INSERT INTO STIPENDIO (CF_DIPENDENTE,DATA_STIPENDIO,IBAN_DIPENDENTE,TOTALE_STIPENDIO) VALUES (i.CF,SYSDATE,IBAN,ULTIMO_STIPENDIO);
    COMMIT;
    END LOOP;
END;
/