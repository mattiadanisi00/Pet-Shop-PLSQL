REM   Script: POPOLAMENTODB_AZIENDA
REM   ---

INSERT INTO DIPARTIMENTO(NUMERO_DIPARTIMENTO,NOME_DIPARTIMENTO) VALUES 
(10,'AMMINISTRAZIONE');

INSERT INTO DIPARTIMENTO(NUMERO_DIPARTIMENTO,NOME_DIPARTIMENTO) VALUES 
(20,'RICERCA');

INSERT INTO DIPARTIMENTO(NUMERO_DIPARTIMENTO,NOME_DIPARTIMENTO) VALUES 
(30,'SVILUPPO');

INSERT INTO DIPARTIMENTO(NUMERO_DIPARTIMENTO,NOME_DIPARTIMENTO) VALUES 
(40,'MANUTENZIONE');

INSERT INTO DIPARTIMENTO(NUMERO_DIPARTIMENTO,NOME_DIPARTIMENTO) VALUES 
(50,'LOGISTICA');

INSERT INTO DIPARTIMENTO(NUMERO_DIPARTIMENTO,NOME_DIPARTIMENTO) VALUES 
(60,'SICUREZZA');

INSERT INTO DIPARTIMENTO(NUMERO_DIPARTIMENTO,NOME_DIPARTIMENTO) VALUES 
(70,'PERSONALE');

INSERT INTO DIPARTIMENTO(NUMERO_DIPARTIMENTO,NOME_DIPARTIMENTO) VALUES 
(80,'MARKETING');

INSERT INTO DIPARTIMENTO(NUMERO_DIPARTIMENTO,NOME_DIPARTIMENTO) VALUES 
(90,'IMPORT/EXPORT');

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111111','MICHELE',NULL,'BIANCHI',TO_DATE('11/02/1974','DD/MM/YYYY'),'VIA CIMITERO','2','80200','BENEVENTO','M',40000,NULL,10);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111112','ANDREA',NULL,'BIANCO',TO_DATE('14/05/1976','DD/MM/YYYY'),'VIA PALUDE','2','80200','BENEVENTO','M',2000,NULL,20);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111113','VINCENZO',NULL,'PENNA',TO_DATE('11/03/1978','DD/MM/YYYY'),'VIA NOBILE','2','80100','NAPOLI','M',40000,NULL,30);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111114','NICOLA',NULL,'PORTA',TO_DATE('11/04/1970','DD/MM/YYYY'),'VIA ROMANO','2','80100','AVELLINO','M',40000,NULL,40);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111115','ELISABETTA',NULL,'ESPOSITO',TO_DATE('15/05/1970','DD/MM/YYYY'),'VIA GARIBALDI','2','80300','AVELLINO','F',40000,NULL,50);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111116','MASSIMILIANO',NULL,'ROSSI',TO_DATE('11/05/1971','DD/MM/YYYY'),'VIA MAZZINI','2','80100','NAPOLI','M',40000,NULL,60);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111117','GIUSEPPE',NULL,'VERDI',TO_DATE('11/04/1974','DD/MM/YYYY'),'VIA NAPOLITANO','2','80100','NAPOLI','M',40000,NULL,70);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111118','FRANCESCO',NULL,'RUSSO',TO_DATE('15/12/1974','DD/MM/YYYY'),'VIA DEL CORSO','2','80100','NAPOLI','M',40000,NULL,80);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111119','LUIGI',NULL,'ESPOSITO',TO_DATE('11/12/1975','DD/MM/YYYY'),'VIA REPUBBLICA','2','80300','AVELLINO','M',40000,NULL,90);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111110','LEOPOLDO',NULL,'ALTO',TO_DATE('11/12/1976','DD/MM/YYYY'),'VIA NOVARA','2','80100','NAPOLI','M',18000,'111111111111116',60);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111121','STEFANO',NULL,'BARBUTO',TO_DATE('11/04/1976','DD/MM/YYYY'),'VIA NAPOLI','2','80100','NAPOLI','M',18000,'111111111111111',10);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111122','ADAMO',NULL,'SAGGIOMO',TO_DATE('15/05/1977','DD/MM/YYYY'),'VIA COMIZIANO','2','80100','NAPOLI','M',18000,'111111111111111',10);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111123','MICHELA','ANNASTELLA','BIANCHI',TO_DATE('11/12/1977','DD/MM/YYYY'),'VIA CICCIANO','2','80100','NAPOLI','F',18000,'111111111111111',10);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111124','ELENA',NULL,'ROSSI',TO_DATE('11/04/1979','DD/MM/YYYY'),'VIA NOLA','2','80300','AVELLINO','F',15000,'111111111111111',10);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111125','ALEANDRO',NULL,'AMICO',TO_DATE('15/12/1974','DD/MM/YYYY'),'VIA SPENNATA','2','80100','NAPOLI','M',15000,'111111111111119',90);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111126','ALESSIO',NULL,'DI BUONO',TO_DATE('11/04/1979','DD/MM/YYYY'),'VIA GROTTA','2','80100','NAPOLI','M',15000,'111111111111112',20);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111127','ALESSANDRA',NULL,'AMOROSO',TO_DATE('15/05/1980','DD/MM/YYYY'),'VIA VIVALDI','2','80400','CASERTA','F',15000,'111111111111112',20);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111128','SILVIO',NULL,'BRAMBILLA',TO_DATE('11/05/1981','DD/MM/YYYY'),'VIA CAVOUR','2','80100','NAPOLI','M',20000,'111111111111112',20);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111129','EMILIO',NULL,'FIORENTINO',TO_DATE('16/12/1969','DD/MM/YYYY'),'VIA RESURREZIONE','2','80100','NAPOLI','M',20000,'111111111111112',20);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111130','FRANCESCO',NULL,'ROMANO',TO_DATE('11/04/1968','DD/MM/YYYY'),'VIA PLEBISCITO','2','80100','NAPOLI','M',20000,'111111111111118',80);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111131','MASSIMILIANO',NULL,'LA PIETRA',TO_DATE('17/12/1966','DD/MM/YYYY'),'VIA REALE','2','80100','NAPOLI','M',20000,'111111111111113',30);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111132','MARIA',NULL,'SCAFURI',TO_DATE('11/12/1967','DD/MM/YYYY'),'VIA NUOVA','2','80100','NAPOLI','F',22000,'111111111111113',30);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111133','PAOLO','ROBERTO','FALCAO',TO_DATE('17/04/1971','DD/MM/YYYY'),'VIA VECCHIA','2','80400','CASERTA','M',15000,'111111111111117',70);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111134','RENATO',NULL,'ROSSI',TO_DATE('11/07/1970','DD/MM/YYYY'),'VIA APPIA','2','80100','NAPOLI','M',15000,'111111111111113',30);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111135','ROBERTO',NULL,'ADAMO',TO_DATE('18/07/1973','DD/MM/YYYY'),'VIA ANTICA','2','80100','NAPOLI','M',15000,'111111111111113',30);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111136','NUNZIA',NULL,'DE GIROLAMO',TO_DATE('11/04/1974','DD/MM/YYYY'),'VIA NAPOLI','2','80200','BENEVENTO','F',16000,'111111111111114',40);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111137','ANNA',NULL,'PECORA',TO_DATE('19/07/1974','DD/MM/YYYY'),'VIA NAPOLI','2','80100','NAPOLI','F',16000,'111111111111114',40);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111138','ANTONIO',NULL,'MIRACOLO',TO_DATE('11/07/1975','DD/MM/YYYY'),'VIA CORIANDOLI','2','80100','NAPOLI','M',16000,'111111111111115',50);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111139','EVA',NULL,'MELA',TO_DATE('19/09/1975','DD/MM/YYYY'),'VIA CAPRI','2','80100','NAPOLI','F',15000,'111111111111115',50);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111140','MATTEO','MASSIMO','GARRONE',TO_DATE('11/09/1977','DD/MM/YYYY'),'VIA LEMBO','2','80400','CASERTA','M',15000,'111111111111115',50);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111141','ARONNE',NULL,'SANNINO',TO_DATE('12/09/1979','DD/MM/YYYY'),'VIA MARCONI','2','80100','NAPOLI','M',16000,'111111111111116',60);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111142','ROMUALDO','ANGELINO','LICCARDO',TO_DATE('11/09/1979','DD/MM/YYYY'),'VIA RIGONI','2','80100','NAPOLI','M',16000,'111111111111116',60);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111143','VITTORIO',NULL,'SORTE',TO_DATE('01/03/1979','DD/MM/YYYY'),'VIA ULISSE','2','80100','NAPOLI','M',17000,'111111111111117',70);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111144','SANDRO',NULL,'BUONO',TO_DATE('07/05/1979','DD/MM/YYYY'),'VIA CESARE','2','80100','NAPOLI','M',14000,'111111111111117',70);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111145','LEONARDO',NULL,'RICCO',TO_DATE('13/05/1981','DD/MM/YYYY'),'VIA MARINA','2','80100','NAPOLI','M',13500,'111111111111118',80);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111146','AGOSTINO','VINCENZO','VERDI',TO_DATE('13/09/1981','DD/MM/YYYY'),'VIA NAPOLI','2','80100','NAPOLI','M',13500,'111111111111118',80);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111147','MARCO','ANTONIO','BIANCO',TO_DATE('13/09/1982','DD/MM/YYYY'),'VIA PAGANINI','2','80100','NAPOLI','M',14500,'111111111111119',90);

INSERT INTO IMPIEGATO(CF,NOME,SECONDO_NOME,COGNOME,DATA_NASCITA,VIA,CIVICO,CAP,CITTA,SESSO,STIPENDIO,CF_SUPERVISORE,NUMERO_DIPARTIMENTO) VALUES 
('111111111111148','PIETRO',NULL,'CIARAVOLA',TO_DATE('14/04/1973','DD/MM/YYYY'),'VIA FONSECA','2','80100','NAPOLI','M',16500,'111111111111119',90);

update DIPARTIMENTO set CF_DIRETTORE='111111111111111',INIZIO_ATTIVITA_DIRETTORE=TO_DATE('01/01/2000','DD/MM/YYYY') where NUMERO_DIPARTIMENTO=10;

update DIPARTIMENTO set CF_DIRETTORE='111111111111112',INIZIO_ATTIVITA_DIRETTORE=TO_DATE('11/06/2002','DD/MM/YYYY') where NUMERO_DIPARTIMENTO=20;

update DIPARTIMENTO set CF_DIRETTORE='111111111111113',INIZIO_ATTIVITA_DIRETTORE=TO_DATE('17/05/2005','DD/MM/YYYY') where NUMERO_DIPARTIMENTO=30;

update DIPARTIMENTO set CF_DIRETTORE='111111111111114',INIZIO_ATTIVITA_DIRETTORE=TO_DATE('03/02/2003','DD/MM/YYYY') where NUMERO_DIPARTIMENTO=40;

update DIPARTIMENTO set CF_DIRETTORE='111111111111115',INIZIO_ATTIVITA_DIRETTORE=TO_DATE('06/07/2001','DD/MM/YYYY') where NUMERO_DIPARTIMENTO=50;

update DIPARTIMENTO set CF_DIRETTORE='111111111111116',INIZIO_ATTIVITA_DIRETTORE=TO_DATE('09/08/2002','DD/MM/YYYY') where NUMERO_DIPARTIMENTO=60;

update DIPARTIMENTO set CF_DIRETTORE='111111111111117',INIZIO_ATTIVITA_DIRETTORE=TO_DATE('11/03/2000','DD/MM/YYYY') where NUMERO_DIPARTIMENTO=70;

update DIPARTIMENTO set CF_DIRETTORE='111111111111118',INIZIO_ATTIVITA_DIRETTORE=TO_DATE('02/04/2007','DD/MM/YYYY') where NUMERO_DIPARTIMENTO=80;

update DIPARTIMENTO set CF_DIRETTORE='111111111111119',INIZIO_ATTIVITA_DIRETTORE=TO_DATE('01/08/2010','DD/MM/YYYY') where NUMERO_DIPARTIMENTO=90;

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(10,'NAPOLI');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(10,'CASERTA');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(20,'AVELLINO');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(20,'BENEVENTO');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(20,'CASERTA');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(20,'NAPOLI');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(20,'SALERNO');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(30,'AVELLINO');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(30,'BENEVENTO');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(30,'CASERTA');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(30,'NAPOLI');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(30,'SALERNO');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(40,'BENEVENTO');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(50,'AVELLINO');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(60,'NAPOLI');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(60,'SALERNO');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(70,'NAPOLI');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(70,'CASERTA');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(80,'ROMA');

INSERT INTO SEDE_DIPARTIMENTO(NUMERO_DIPARTIMENTO,CITTA_SEDE)VALUES 
(90,'MILANO');

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(1,'PJ1','NAPOLI',10);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(2,'PJ2','NAPOLI',10);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(3,'PJ3','AVELLINO',20);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(4,'PJ4','CASERTA',20);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(5,'PJ5','NOLA',10);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(6,'PJ6','NAPOLI',20);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(7,'PJ7','CASERTA',30);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(8,'PJ8','NAPOLI',30);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(9,'PJ9','BENEVENTO',40);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(10,'PJ10','BENEVENTO',40);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(11,'PJ11','CASERTA',50);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(12,'PJ12','AVELLINO',60);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(13,'PJ13','AVELLINO',70);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(14,'PJ14','AVELLINO',80);

INSERT INTO PROGETTO(NUMERO_PROGETTO,NOME_PROGETTO,SEDE_PROGETTO,DIPARTIMENTO_RESPONSABILE) VALUES 
(15,'PJ15','AVELLINO',90);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111111',1,300);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111112',3,400);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111113',7,450);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111114',9,560);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111115',11,600);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111116',12,170);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111117',13,110);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111118',14,900);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111119',15,100);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111110',1,190);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111121',2,130);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111122',3,140);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111123',4,170);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111124',5,190);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111125',6,140);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111126',7,140);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111127',8,200);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111128',9,220);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111129',10,180);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111130',11,220);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111131',12,120);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111132',13,180);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111133',14,180);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111134',15,180);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111135',14,190);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111136',13,300);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111137',12,300);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111138',11,220);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111139',10,120);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111140',9,120);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111141',8,210);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111142',7,230);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111143',6,240);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111144',5,240);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111145',4,250);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111146',3,260);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111147',2,120);

INSERT INTO LAVORA_SU(CF_IMPIEGATO,NUMERO_PROGETTO,ORE) VALUES 
('111111111111148',1,120);

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111111','ELENA','F',TO_DATE('01/01/1973','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111111','RICCARDO','M',TO_DATE('01/01/1984','DD/MM/YYYY'),'FIGLIO');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111112','PATRIZIA','F',TO_DATE('01/01/1978','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111112','MARIA','F',TO_DATE('01/01/1990','DD/MM/YYYY'),'FIGLIA');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111113','MARIA','F',TO_DATE('01/01/1970','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111114','MARIA','F',TO_DATE('01/01/1980','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111114','FRANCESCA','F',TO_DATE('01/01/1989','DD/MM/YYYY'),'FIGLIA');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111115','ELEONORA','F',TO_DATE('01/01/1970','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111118','CAMILLA','F',TO_DATE('01/01/1971','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111121','LUCA','M',TO_DATE('01/01/1993','DD/MM/YYYY'),'FIGLIO');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111122','SERENA','F',TO_DATE('01/01/1976','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111123','LUISA','F',TO_DATE('01/01/1977','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111123','ANDREA','M',TO_DATE('01/01/1989','DD/MM/YYYY'),'FIGLIO');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111124','MATILDE','F',TO_DATE('01/01/1971','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111124','EMANUELA','F',TO_DATE('01/01/1994','DD/MM/YYYY'),'FIGLIA');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111124','SERENA','F',TO_DATE('01/01/1998','DD/MM/YYYY'),'FIGLIA');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111125','VIRGINIA','F',TO_DATE('01/01/1978','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111126','ROSA','F',TO_DATE('01/01/1976','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111127','PEPPA','F',TO_DATE('01/01/1972','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111128','MICHELA','F',TO_DATE('01/01/1971','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111129','ANTONELLA','F',TO_DATE('01/01/1978','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111130','CLAUDIA','F',TO_DATE('01/01/1982','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111130','ROMEO','M',TO_DATE('01/01/1999','DD/MM/YYYY'),'FIGLIO');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111131','GIULIETTA','F',TO_DATE('01/01/1980','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111132','ROSA','F',TO_DATE('01/01/1977','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111134','ROSA','F',TO_DATE('01/01/1978','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111137','REBECCA','F',TO_DATE('01/01/1978','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111137','TITTI','F',TO_DATE('01/01/1998','DD/MM/YYYY'),'FIGLIA');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111137','ARTURO','M',TO_DATE('01/01/1998','DD/MM/YYYY'),'FIGLIO');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111139','LUIGIA','F',TO_DATE('01/01/1978','DD/MM/YYYY'),'MOGLIE');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111139','ENZA','F',TO_DATE('01/01/1998','DD/MM/YYYY'),'FIGLIA');

INSERT INTO FAMILIARE_A_CARICO(CF_IMPIEGATO,NOME_FAMILIARE,SESSO,DATA_NASCITA,RELAZIONE_PARENTELA) VALUES 
('111111111111139','ANNIBALE','M',TO_DATE('01/01/1998','DD/MM/YYYY'),'FIGLIO');

commit

