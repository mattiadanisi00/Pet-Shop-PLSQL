/*
    TRIGGER #8   
    TRIGGER CHE SCALA L'ATTRIBUTO QUANTITÀ DISPONIBILE OGNI VOLTA CHE UN ARTICOLO VIENE COMPRATO
*/
/* TEST
UPDATE ACQUISTO_CONTIENE 
SET QUANTITA = 20
WHERE NUMERO_SCONTRINO = '71549302484'
AND CODICE_PRODOTTO = '76111735';

UPDATE ACQUISTO_CONTIENE 
SET QUANTITA = 0
WHERE NUMERO_SCONTRINO = '71549302484'
AND CODICE_PRODOTTO = '76111735'; */


CREATE OR REPLACE TRIGGER QT_DISPONIBILI_TR
AFTER INSERT OR UPDATE ACQUISTO_CONTIENE
FOR EACH ROW
DECLARE 
    COD                 PRODOTTO.CODICE_PRODOTTO%TYPE;
    QT                  PRODOTTO.QUANTITA_DISPONIBILE%TYPE;
    QT_DISP             PRODOTTO.QUANTITA_DISPONIBILE%TYPE;     
    ECCESSIVO           EXCEPTION;
    PRAGMA AUTONOMOUS_TRANSACTION;

BEGIN

  SELECT QUANTITA_DISPONIBILE INTO QT_DISP 
  FROM PRODOTTO WHERE CODICE_PRODOTTO = :NEW.CODICE_PRODOTTO;

  IF (QT_DISP < :NEW.QUANTITA)  THEN
    RAISE ECCESSIVO;
  END IF;

  UPDATE PRODOTTO
  SET QUANTITA_DISPONIBILE = QUANTITA_DISPONIBILE - :NEW.QUANTITA 
  WHERE CODICE_PRODOTTO = :NEW.CODICE_PRODOTTO;
  COMMIT;

  SELECT CODICE_PRODOTTO,QUANTITA_DISPONIBILE INTO COD,QT
    FROM PRODOTTO
    WHERE CODICE_PRODOTTO = :NEW.CODICE_PRODOTTO;

  DBMS_OUTPUT.PUT_LINE('QUANTITÀ DISPONIBILE PRODOTTO #'||COD||':  '||QT);

EXCEPTION 
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR (-20015, 'PRODOTTO INESISTENTE');

  WHEN ECCESSIVO THEN
    RAISE_APPLICATION_ERROR (-20016, 'NON ABBIAMO ABBASTANZA PRODOTTO DA SODDISFARE LA VOSTRA RICHIESTA');

END
COMMIT;
/

CREATE OR REPLACE TRIGGER QT_DISPONIBILI_TR_II
AFTER UPDATE ON ACQUISTO_CONTIENE
FOR EACH ROW
DECLARE 
    COD                 PRODOTTO.CODICE_PRODOTTO%TYPE;
    QT                  PRODOTTO.QUANTITA_DISPONIBILE%TYPE;         
    QT_DISP             PRODOTTO.QUANTITA_DISPONIBILE%TYPE; 
    ECCESSIVO           EXCEPTION;   
    PRAGMA AUTONOMOUS_TRANSACTION; 
BEGIN

  SELECT QUANTITA_DISPONIBILE INTO QT_DISP 
  FROM PRODOTTO WHERE CODICE_PRODOTTO = :NEW.CODICE_PRODOTTO;

  IF (QT_DISP + :OLD.QUANTITA < :NEW.QUANTITA)  THEN
    RAISE ECCESSIVO;
  END IF;

  
  UPDATE PRODOTTO
  SET QUANTITA_DISPONIBILE = QUANTITA_DISPONIBILE - :NEW.QUANTITA + :OLD.QUANTITA
  WHERE CODICE_PRODOTTO = :NEW.CODICE_PRODOTTO;
  COMMIT; 
  
  SELECT CODICE_PRODOTTO,QUANTITA_DISPONIBILE INTO COD,QT
    FROM PRODOTTO
    WHERE CODICE_PRODOTTO = :NEW.CODICE_PRODOTTO;

  DBMS_OUTPUT.PUT_LINE('QUANTITÀ DISPONIBILE PRODOTTO #'||COD||':  '||QT);

EXCEPTION 
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR (-20015, 'PRODOTTO INESISTENTE');

  WHEN ECCESSIVO THEN
    RAISE_APPLICATION_ERROR (-20016, 'NON ABBIAMO ABBASTANZA PRODOTTO DA SODDISFARE LA VOSTRA RICHIESTA');

END
COMMIT;
/