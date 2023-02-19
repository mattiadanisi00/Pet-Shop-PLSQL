INSERT INTO CLIENTE (LOGIN,NOME,COGNOME,ETA,SESSO,PASSWORD) VALUES
('ANNIBALE','ALESSANDRO','CIRELLI',26,'M','ALEX001');
INSERT INTO CLIENTE (LOGIN,NOME,COGNOME,ETA,SESSO,PASSWORD) VALUES
('CESARE','CORRADO','CUOMO',34,'M','CORR001');
INSERT INTO CLIENTE (LOGIN,NOME,COGNOME,ETA,SESSO,PASSWORD) VALUES
('OTTAVIANO','FRANCESCO','STABILE',36,'M','FRANC001');
INSERT INTO CLIENTE (LOGIN,NOME,COGNOME,ETA,SESSO,PASSWORD) VALUES
('PLATONE','LUIGI','PARLATI',41,'M','LUIGI001');
INSERT INTO CLIENTE (LOGIN,NOME,COGNOME,ETA,SESSO,PASSWORD) VALUES
('ALESSANDRO','RODOLFO','GALEOTAFIORE',30,'M','RUDI001');
INSERT INTO CLIENTE (LOGIN,NOME,COGNOME,ETA,SESSO,PASSWORD) VALUES
('CLEOPATRA','CATERINA','SANTORELLI',27,'F','CATER001');
INSERT INTO CLIENTE (LOGIN,NOME,COGNOME,ETA,SESSO,PASSWORD) VALUES
('GIULIETTA','VIRGINIA','RUOCCO',37,'F','VIRGI001');
INSERT INTO CLIENTE (LOGIN,NOME,COGNOME,ETA,SESSO,PASSWORD) VALUES
('MARGHERITA','MARIA','SCAFURO',35,'F','MARIA001');
INSERT INTO CLIENTE (LOGIN,NOME,COGNOME,ETA,SESSO,PASSWORD) VALUES
('PITAGORA','FRANCESCO','BUONO',34,'M','FRANC001');
INSERT INTO CLIENTE (LOGIN,NOME,COGNOME,ETA,SESSO,PASSWORD) VALUES
('CARLOMAGNO','MASSIMO','IOVINO',47,'M','MAX001');

INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(100,2,TO_DATE('13-03-2009','dd-mm-yyyy'),'ANNIBALE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(101,10,TO_DATE('22-01-2010','dd-mm-yyyy'),'CESARE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(102,0,TO_DATE('16-03-2009','dd-mm-yyyy'),'ALESSANDRO');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(103,10,TO_DATE('22-11-2009','dd-mm-yyyy'),'CESARE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(104,5,TO_DATE('12-11-2009','dd-mm-yyyy'),'OTTAVIANO');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(105,12,TO_DATE('21-01-2010','dd-mm-yyyy'),'ANNIBALE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(106,10,TO_DATE('12-04-2009','dd-mm-yyyy'),'PLATONE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(107,15,TO_DATE('10-07-2009','dd-mm-yyyy'),'CLEOPATRA');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(108,15,TO_DATE('19-06-2009','dd-mm-yyyy'),'ANNIBALE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(109,15,TO_DATE('12-11-2009','dd-mm-yyyy'),'MARGHERITA');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(110,20,TO_DATE('16-01-2010','dd-mm-yyyy'),'CLEOPATRA');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(111,0,TO_DATE('18-11-2009','dd-mm-yyyy'),'GIULIETTA');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(112,0,TO_DATE('12-11-2009','dd-mm-yyyy'),'CLEOPATRA');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(113,0,TO_DATE('14-11-2009','dd-mm-yyyy'),'ANNIBALE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(114,10,TO_DATE('15-01-2010','dd-mm-yyyy'),'ALESSANDRO');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(115,30,TO_DATE('23-11-2009','dd-mm-yyyy'),'ANNIBALE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(116,15,TO_DATE('15-07-2009','dd-mm-yyyy'),'CESARE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(117,20,TO_DATE('12-07-2009','dd-mm-yyyy'),'CESARE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(120,20,TO_DATE('12-11-2009','dd-mm-yyyy'),'ANNIBALE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(121,20,TO_DATE('19-01-2010','dd-mm-yyyy'),'ALESSANDRO');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(122,20,TO_DATE('18-01-2010','dd-mm-yyyy'),'MARGHERITA');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(123,20,TO_DATE('12-11-2009','dd-mm-yyyy'),'GIULIETTA');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(124,10,TO_DATE('18-01-2009','dd-mm-yyyy'),'OTTAVIANO');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(125,15,TO_DATE('12-02-2010','dd-mm-yyyy'),'PLATONE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(126,15,TO_DATE('13-09-2009','dd-mm-yyyy'),'PLATONE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(127,15,TO_DATE('12-01-2010','dd-mm-yyyy'),'GIULIETTA');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(128,3,TO_DATE('01-01-2009','dd-mm-yyyy'),'OTTAVIANO');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(129,3,TO_DATE('12-01-2009','dd-mm-yyyy'),'GIULIETTA');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(130,3,TO_DATE('02-11-2009','dd-mm-yyyy'),'ANNIBALE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(131,4,TO_DATE('03-01-2010','dd-mm-yyyy'),'ANNIBALE');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(132,5,TO_DATE('04-10-2009','dd-mm-yyyy'),'CLEOPATRA');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(133,5,TO_DATE('04-02-2010','dd-mm-yyyy'),'MARGHERITA');
INSERT INTO ACQUISTO(ID, SCONTO, DATA, LOGIN) VALUES
(134,5,TO_DATE('08-02-2010','dd-mm-yyyy'),'CARLOMAGNO');


INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(1,'ASIA',1666,'DISCRETO',1,200,100);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(2,'AREA ITALIANA',1700,'ECCELLENTE',3,100,101);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(3,'EUROPA OVEST',1850,'ECCELLENTE',5,120,102);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(4,'OCEANIA',1902,'DISCRETO',5,34,103);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(5,'EUROPA EST',1840,'BUONO',20,67,104);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(6,'AFRICA',1882,'ECCELLENTE',1,234,105);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(7,'ASIA',1890, 'DISCRETO',1,1000,134);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(8,'AREA ITALIANA',1780,'ECCELLENTE',1,760,134);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(9,'EUROPA OVEST',1934,'DISCRETO',20,25,108);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(10,'EUROPA OVEST',1944,'ECCELLENTE',10,55,109);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(11,'OCEANIA',1968,'ECCELLENTE',2,60,110);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(12,'EUROPA EST',1980,'DISCRETO',3,25,111);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(13,'ASIA',1977,'BUONO',4,33,112);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(14,'AREA ITALIANA',1833,'BUONO',1,420,113);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(15,'EUROPA OVEST',1967,'ECCELLENTE',2,78,114);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(16,'OCEANIA',1915,'DISCRETO',3,197,115);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(17,'EUROPA EST',1741,'ECCELLENTE',7,1100,116);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(18,'AFRICA',1899,'BUONO',12,865,117);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(20,'REPUBBLICA',1968,'BUONO',100,30,120);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(21,'REGNO',1830,'ECCELLENTE',20,15,121);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(22,'REGNO',1920,'BUONO',1,13,122);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(23,'REGNO',1867,'ECCELLENTE',10,45,123);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(24,'SAN MARINO',1599,'DISCRETO',5,23,122);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(25,'VATICANO',1480,'BUONO',100,87,125);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(26,'ANTICHI STATI',1487,'BUONO', 50,29,126);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(27,'REGNO',1901,'DISCRETO',1000,50,127);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(28,'VATICANO',1836,'BUONO',100,89,127);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(29,'REGNO',1870,'ECCELLENTE',500,12,129);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(30,'ITALIA',1993,'BUONO',1,10,130);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(31,'ITALIA',1981,'ECCELLENTE',1,12,131);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(32,'ITALIA',1950,'ECCELLENTE',100,15,132);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(33,'EUROPA',1830,'BUONO',20,20,133);
INSERT INTO OGGETTO(ID_OGG, PROVENIENZA, ANNO, STATO_CONS, TAGLIO, PREZZO, ID_ACQ) VALUES
(34,'EUROPA',1940,'DISCRETO',100,10,134);


INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(1,'Y','PICCOLO');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(2,'Y','PICCOLO');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(3,'Y','PICCOLO');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(4,'Y','PICCOLO');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(5,'Y','PICCOLO');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(6,'Y','PICCOLO');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(7,'Y','MEDIO');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(8,'Y','MEDIO');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(9,'Y','MEDIO');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(10,'Y','MEDIO');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(11,'Y','MEDIO');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(12,'Y','MEDIO');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(13,'N','GRANDE');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(14,'N','GRANDE');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(15,'N','GRANDE');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(16,'N','GRANDE');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(17,'N','GRANDE');
INSERT INTO FRANCOBOLLI(ID_OGG, TIMBRATURA, DIMENSIONE) VALUES
(18,'Y','GRANDE');

INSERT INTO MONETE(ID_OGG, SERIE, MATERIALE) VALUES
(20,1968,'BRONZO');
INSERT INTO MONETE(ID_OGG, SERIE, MATERIALE) VALUES
(21,1830,'ARGENTO');
INSERT INTO MONETE(ID_OGG, SERIE, MATERIALE) VALUES
(22,1920,'ORO');
INSERT INTO MONETE(ID_OGG, SERIE, MATERIALE) VALUES
(23,1867,'ARGENTO');
INSERT INTO MONETE(ID_OGG, SERIE, MATERIALE) VALUES
(24,1599,'ORO');
INSERT INTO MONETE(ID_OGG, SERIE, MATERIALE) VALUES
(25,1480,'ARGENTO');
INSERT INTO MONETE(ID_OGG, SERIE, MATERIALE) VALUES
(26,1487,'ARGENTO');
INSERT INTO MONETE(ID_OGG, SERIE, MATERIALE) VALUES
(27,1901,'ORO');
INSERT INTO MONETE(ID_OGG, SERIE, MATERIALE) VALUES
(28,1836,'ORO');
INSERT INTO MONETE(ID_OGG, SERIE, MATERIALE) VALUES
(29,1870,'ACCIAIO');

INSERT INTO BANCONOTE(ID_OGG, TEMA) VALUES
(30,'MONTESSORI');
INSERT INTO BANCONOTE(ID_OGG, TEMA) VALUES
(31,'M. POLO');
INSERT INTO BANCONOTE(ID_OGG, TEMA) VALUES
(32,'VITTORIO EMANUELE III');
INSERT INTO BANCONOTE(ID_OGG, TEMA) VALUES
(33,'IMPERO');
INSERT INTO BANCONOTE(ID_OGG, TEMA) VALUES
(34,'OCCUPAZIONE ALBANIA');


INSERT INTO AUTORI(ID_OGG, AUTORE) VALUES
(30,'CARAVAGGIO');
INSERT INTO AUTORI(ID_OGG, AUTORE) VALUES
(30,'BOTTICELLI');
INSERT INTO AUTORI(ID_OGG, AUTORE) VALUES
(31,'MICHELANGELO');
INSERT INTO AUTORI(ID_OGG, AUTORE) VALUES
(32,'BOTTICELLI');
INSERT INTO AUTORI(ID_OGG, AUTORE) VALUES
(33,'COLOMBO');
INSERT INTO AUTORI(ID_OGG, AUTORE) VALUES
(33,'PICASSO');
INSERT INTO AUTORI(ID_OGG, AUTORE) VALUES
(34,'PINTURICCHIO');

commit;