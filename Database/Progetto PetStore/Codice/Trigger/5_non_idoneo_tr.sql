/*
    TRIGGER #5
    TRIGGER CHE IMPEDISCE A UN CLIENTE NON IDONEO DI ADOTTARE UN ANIMALE 
*/

/* per non idoneo intendiamo che:
1. il cliente non è maggiorenne
2. Il cliente ha effettuato almeno 2 restituzioni */

/* test
update cliente 
set data_nascita = to_date('23/09/2015','dd/mm/yyyy')
where cf = 'DNSMTT00P23F839I';

INSERT INTO ADOTTA (CODICE_ANIMALE,DATA_ADOZIONE,PREZZO_ADOZIONE,CF_CLIENTE) VALUES ('112542139480',TO_DATE('15/01/2022','DD/MM/YYYY'),400,'DNSMTT00P23F839I');
 */

CREATE OR REPLACE TRIGGER NON_IDONEO_TR
AFTER INSERT OR UPDATE ON ADOTTA
FOR EACH ROW

DECLARE
    NON_IDONEO            EXCEPTION;
    NUMERO_RESTITUZIONI   NUMBER;
    DATA_ADOZIONE_TR      DATE;
    ETA                   NUMBER;
    DN                    DATE;
    PRAGMA AUTONOMOUS_TRANSACTION;
    
BEGIN

    SELECT DATA_NASCITA INTO DN FROM CLIENTE WHERE CF = :NEW.CF_CLIENTE;

    ETA:= FLOOR(MONTHS_BETWEEN(SYSDATE, DN) / 12);

    IF (ETA < 18) THEN RAISE NON_IDONEO;
    END IF;
    
    SELECT COUNT (*) INTO NUMERO_RESTITUZIONI
     FROM RESTITUISCE WHERE CF_CLIENTE = :NEW.CF_CLIENTE
      GROUP BY CF_CLIENTE;

    IF (NUMERO_RESTITUZIONI > 1) THEN RAISE NON_IDONEO;
    END IF;

EXCEPTION
  WHEN NON_IDONEO THEN
    RAISE_APPLICATION_ERROR(-20012,'IL CLIENTE NON È IDONEO ALL ADOZIONE');
  
  WHEN NO_DATA_FOUND THEN
    NULL;
END
COMMIT;
/