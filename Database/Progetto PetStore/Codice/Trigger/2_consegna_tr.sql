/*
    TRIGGER #2
    TRIGGER CHE IMPENDISCE L'INSERIMENTO DI UN NUMERO DI CONSEGNE MAGGIORE A 2 NELLO STESSO GIORNO √
*/

/* test
update consegna
set data_consegna = to_date('05/01/2022','dd/mm/yyyy');
where numero_consegna = '37842833841' */

CREATE OR REPLACE TRIGGER CONSEGNA_TR
AFTER INSERT OR UPDATE ON CONSEGNA
FOR EACH ROW 

DECLARE 

    NUMERO_CONSEGNE     NUMBER; 
    TROPPE_CONSEGNE     EXCEPTION;
    PRAGMA AUTONOMOUS_TRANSACTION;
  
BEGIN
    SELECT COUNT(*)
      INTO NUMERO_CONSEGNE
      FROM CONSEGNA
     WHERE DATA_CONSEGNA = :NEW.DATA_CONSEGNA;

     IF(NUMERO_CONSEGNE = 2) THEN

       RAISE TROPPE_CONSEGNE;
       
     END IF;

EXCEPTION
  WHEN TROPPE_CONSEGNE THEN
    RAISE_APPLICATION_ERROR (-20010, 'OGNI GIORNO IL NUMERO MASSIMO DI CONSEGNE È: 2. VERIFICA IL CORRETTO INSERIMENTO DEI DATI');

END
COMMIT;
/
