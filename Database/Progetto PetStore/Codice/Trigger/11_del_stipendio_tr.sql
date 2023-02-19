/*
    TRIGGER #11  
    TRIGGER CHE IMPEDISCE DI ELIMINARE UNO STIPENDIO SE IL DIPENDENTE FA PARTE DELL'AZIENDA O SE FA PARTE DELL'ANNO CORRENTE √
*/

/* test
delete stipendio 
where cf_dipendente = '1111111111110000'  */

CREATE OR REPLACE TRIGGER DEL_STIPENDIO_TR
BEFORE DELETE ON STIPENDIO
FOR EACH ROW
DECLARE
  CF_DIP              DIPENDENTE.CF%TYPE;
  IN_ANNO             EXCEPTION;
  DIPENDENTE_ATTIVO   EXCEPTION;
  ANNO_CORRENTE       NUMBER;
  ANNO_STIPENDIO      NUMBER;
  PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN

    SELECT EXTRACT(YEAR FROM :OLD.DATA_STIPENDIO)  INTO ANNO_STIPENDIO
    FROM STIPENDIO
    WHERE DATA_STIPENDIO = :OLD.DATA_STIPENDIO AND IBAN_DIPENDENTE = :OLD.IBAN_DIPENDENTE;
    
    SELECT EXTRACT(YEAR FROM SYSDATE) INTO ANNO_CORRENTE
    FROM DUAL;

    IF (ANNO_STIPENDIO = ANNO_CORRENTE) THEN
        RAISE IN_ANNO;
    END IF;

    SELECT CF INTO CF_DIP
      FROM DIPENDENTE
        WHERE CF = :OLD.CF_DIPENDENTE;

    IF (CF_DIP IS NOT NULL)
      THEN RAISE DIPENDENTE_ATTIVO;
    END IF;
    

EXCEPTION 
  WHEN NO_DATA_FOUND THEN
    NULL;

  WHEN DIPENDENTE_ATTIVO THEN
    RAISE_APPLICATION_ERROR(-20020, 'IL DIPENDENTE FA ANCORA PARTE DELLA AZIENDA E PERTANTO NON È POSSIBILE ELIMINARE LO STIPENDIO');
  
  WHEN IN_ANNO THEN
    RAISE_APPLICATION_ERROR(-20021, 'LO STIPENDIO APPARTIENE ALL ANNO CORRENTE E NON PUO ESSERE CANCELLATO');
  
END;
/