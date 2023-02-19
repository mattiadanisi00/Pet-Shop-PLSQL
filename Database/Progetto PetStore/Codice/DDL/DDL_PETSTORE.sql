DROP TABLE ALLEVAMENTO CASCADE CONSTRAINTS;
DROP TABLE ANIMALE CASCADE CONSTRAINTS;
DROP TABLE CLIENTE CASCADE CONSTRAINTS;
DROP TABLE ADOTTA CASCADE CONSTRAINTS;
DROP TABLE RESTITUISCE CASCADE CONSTRAINTS;
DROP TABLE REPARTO CASCADE CONSTRAINTS;
DROP TABLE FORNITORE CASCADE CONSTRAINTS;
DROP TABLE CONSEGNA CASCADE CONSTRAINTS;
DROP TABLE PRODOTTO CASCADE CONSTRAINTS;
DROP TABLE ACQUISTO CASCADE CONSTRAINTS;
DROP TABLE ACQUISTO_TESSERA CASCADE CONSTRAINTS;
DROP TABLE ACQUISTO_CONTIENE CASCADE CONSTRAINTS;
DROP TABLE VINCITORE_LOTTERIA CASCADE CONSTRAINTS;
DROP TABLE CONSEGNA_CONTIENE CASCADE CONSTRAINTS;
DROP TABLE ADDESTRATORE CASCADE CONSTRAINTS;
DROP TABLE CORSO_DI_ADDESTRAMENTO CASCADE CONSTRAINTS;
DROP TABLE SI_ISCRIVE CASCADE CONSTRAINTS;
DROP TABLE DIPENDENTE CASCADE CONSTRAINTS;
DROP TABLE STIPENDIO CASCADE CONSTRAINTS;
DROP TABLE TURNI_DI_LAVORO CASCADE CONSTRAINTS;
DROP TABLE E_PRESENTE CASCADE CONSTRAINTS;
DROP TABLE VETERINARIO CASCADE CONSTRAINTS;
DROP TABLE PRENOTAZIONE CASCADE CONSTRAINTS;
DROP TABLE VISITA_VETERINARIO CASCADE CONSTRAINTS;
DROP TABLE VISITA_PETCARE CASCADE CONSTRAINTS;
DROP TABLE PROMOZIONE CASCADE CONSTRAINTS;
DROP TABLE PROMOZIONE_RIGUARDA CASCADE CONSTRAINTS;
DROP TABLE RICHIAMO CASCADE CONSTRAINTS;


CREATE TABLE ALLEVAMENTO (
	PARTITA_IVA						CHAR(11) 		PRIMARY KEY,
	NOME_ALLEVAMENTO				VARCHAR2(50)	NOT NULL,
	VIA 							VARCHAR2(20)	NOT NULL,	
	CIVICO 							NUMBER(5,0)		NOT NULL,	
	CAP 							VARCHAR2(6)		NOT NULL, 	
	CITTA							VARCHAR2(30)	NOT NULL
);



CREATE TABLE ANIMALE (
	CODICE_ANIMALE				    CHAR(12) 		PRIMARY KEY,
	PESO 							NUMBER(2,0) 	NOT NULL,
	DATA_ACQUISIZIONE				DATE		 	NOT NULL, 
	SESSO							CHAR(1) 		NOT NULL,
	REPARTO						    NUMBER(2,0)  	NOT NULL,
	TIPO							VARCHAR2(20) 	NOT NULL,
	RAZZA							VARCHAR2(20) 	NOT NULL,
	COSTO_ACQUISIZIONE				NUMBER(4,0),
	PARTITA_IVA_ALLEVAMENTO			CHAR(11),  
	CONSTRAINT FK_ALLEVAMENTO	    FOREIGN KEY (PARTITA_IVA_ALLEVAMENTO) REFERENCES ALLEVAMENTO (PARTITA_IVA) ON DELETE SET NULL,
	CONSTRAINT CHECK_SESSO_AN	 	CHECK (SESSO IN ('M','F'))
);


CREATE TABLE CLIENTE (
	CF 						  CHAR(16) 		PRIMARY KEY, 
	NOME 					VARCHAR2(20) 	NOT NULL, 
	SECONDO_NOME 		    VARCHAR2(20), 
	COGNOME 				VARCHAR2(20) 	NOT NULL, 
	DATA_NASCITA 			DATE			NOT NULL, 			 
	VIA 					VARCHAR2(20),	
	CIVICO 					NUMBER(5,0),	
	CAP 					VARCHAR2(6), 	
	CITTA					VARCHAR2(30),
	SESSO 					VARCHAR2(1), 
	NUMERO_CELLULARE		VARCHAR2(15)	NOT NULL,
  EMAIL                   VARCHAR2(40)    NOT NULL,
	CONSTRAINT CHECK_SESSO 	CHECK (SESSO IN ('M','F'))
);


CREATE TABLE ADOTTA (	
	CODICE_ANIMALE						CHAR(12),
	DATA_ADOZIONE						DATE,
	PREZZO_ADOZIONE					    NUMBER(6,2),
	CF_CLIENTE							CHAR(16),
	CONSTRAINT PK_ADOTTA 			   	PRIMARY KEY (CF_CLIENTE,CODICE_ANIMALE),
	CONSTRAINT FK_CLIENTE				FOREIGN KEY (CF_CLIENTE) REFERENCES CLIENTE(CF) ON DELETE CASCADE,
	CONSTRAINT FK_ANIMALE 			    FOREIGN KEY (CODICE_ANIMALE) REFERENCES ANIMALE(CODICE_ANIMALE) ON DELETE CASCADE
);


CREATE TABLE RESTITUISCE (	
	CODICE_ANIMALE						CHAR(12),
	DATA_RESTITUZIONE					DATE,
	RIMBORSO							NUMBER(6,2),
	CF_CLIENTE							CHAR(16),
	CONSTRAINT PK_RESTITUISCE			PRIMARY KEY (CF_CLIENTE,CODICE_ANIMALE),
	CONSTRAINT FK_CLIENTE_REST			FOREIGN KEY (CF_CLIENTE) REFERENCES CLIENTE(CF) ON DELETE SET NULL,
	CONSTRAINT FK_ANIMALE_REST			FOREIGN KEY (CODICE_ANIMALE) REFERENCES ANIMALE(CODICE_ANIMALE) ON DELETE CASCADE
);



CREATE TABLE REPARTO ( 
	NUMERO_REPARTO 					    NUMBER(2,0) PRIMARY KEY,  
	NOME_REPARTO 						VARCHAR2(30) UNIQUE NOT NULL
);


CREATE TABLE FORNITORE (
	PARTITA_IVA					CHAR(11)		PRIMARY KEY,
	NOME_FORNITORE		        VARCHAR2(30)	UNIQUE NOT NULL, 
	VIA 						VARCHAR2(20),	
	CIVICO 				    	NUMBER(5,0)	,	
	CAP 				    	VARCHAR2(6), 	
	CITTA				    	VARCHAR2(20),
	NUMERO_TELEFONO		        VARCHAR2(11)	NOT NULL
);


CREATE TABLE CONSEGNA (
	NUMERO_CONSEGNA			    CHAR(13) 		PRIMARY KEY,
	DATA_CONSEGNA				DATE			NOT NULL,
	PARTITA_IVA_FORNITORE		CHAR(11),
	CONSTRAINT FK_FORNITORE		FOREIGN KEY (PARTITA_IVA_FORNITORE) REFERENCES FORNITORE(PARTITA_IVA) ON DELETE SET NULL
);

CREATE TABLE PRODOTTO (
	CODICE_PRODOTTO 			CHAR(8)			PRIMARY KEY,
	TIPO_PRODOTTO				VARCHAR2(70),
	REPARTO				    	VARCHAR2(2),
	PREZZO				    	NUMBER(5,2)		NOT NULL,
	COSTO_ACQUISTO				NUMBER(5,2),
	QUANTITA_DISPONIBILE		NUMBER			NOT NULL
);

CREATE TABLE ACQUISTO (
	NUMERO_SCONTRINO				CHAR(11)	PRIMARY KEY,
	DATA_ACQUISTO					DATE		NOT NULL
);

CREATE TABLE ACQUISTO_TESSERA ( 
	NUMERO_SCONTRINO				CHAR(11),
	DATA_ACQUISTO					DATE			NOT NULL,
	CF_CLIENTE						CHAR(16)		NOT NULL,
	CONSTRAINT PK_ACQUISTO_TESSERA	PRIMARY KEY (NUMERO_SCONTRINO),
	CONSTRAINT FK_CLIENTE_ACQUISTO  FOREIGN KEY (CF_CLIENTE) REFERENCES CLIENTE(CF) ON DELETE SET NULL,
	CONSTRAINT FK_ACQUISTO_TESSERA	FOREIGN KEY (NUMERO_SCONTRINO) REFERENCES ACQUISTO(NUMERO_SCONTRINO) ON DELETE SET NULL				
);



CREATE TABLE ACQUISTO_CONTIENE (
	NUMERO_SCONTRINO			CHAR(11),
	CODICE_PRODOTTO				CHAR(8),
	QUANTITA					NUMBER(4,0),
	CONSTRAINT PK_AC 			PRIMARY KEY (NUMERO_SCONTRINO,CODICE_PRODOTTO),
	CONSTRAINT FK_ACQUISTO		FOREIGN KEY (NUMERO_SCONTRINO) REFERENCES ACQUISTO (NUMERO_SCONTRINO) ON DELETE SET NULL,
	CONSTRAINT FK_PRODOTTO		FOREIGN KEY (CODICE_PRODOTTO) REFERENCES PRODOTTO (CODICE_PRODOTTO) ON DELETE SET NULL				
);

CREATE TABLE VINCITORE_LOTTERIA (
	NOME						VARCHAR2(20),
	COGNOME						VARCHAR2(20),
	CF_VINCITORE				CHAR(16)		NOT NULL,
	MESE_VINCITA				VARCHAR2(9)		NOT NULL,
	CONSTRAINT PK_LOTTERIA 	    PRIMARY KEY (CF_VINCITORE,MESE_VINCITA),
	CONSTRAINT FK_VINCITORE		FOREIGN KEY (CF_VINCITORE) REFERENCES CLIENTE (CF) ON DELETE CASCADE
);

CREATE TABLE CONSEGNA_CONTIENE (
	NUMERO_CONSEGNA			    		CHAR(13),
	CODICE_PRODOTTO						CHAR(8),
	QUANTITA							NUMBER(4,0),
	CONSTRAINT PK_CC 					PRIMARY KEY (NUMERO_CONSEGNA,CODICE_PRODOTTO),
	CONSTRAINT FK_CONSEGNA_CC			FOREIGN KEY (NUMERO_CONSEGNA) REFERENCES CONSEGNA (NUMERO_CONSEGNA) ON DELETE SET NULL,
	CONSTRAINT FK_PRODOTTO_CC			FOREIGN KEY (CODICE_PRODOTTO) REFERENCES PRODOTTO (CODICE_PRODOTTO) ON DELETE CASCADE				
);

CREATE TABLE ADDESTRATORE (
    NUMERO_TESSERINO    CHAR(9)        PRIMARY KEY,
    NOME                VARCHAR2(20)    NOT NULL,
    COGNOME             VARCHAR2(20)    NOT NULL,
    DATA_DI_NASCITA     DATE            NOT NULL
);

CREATE TABLE CORSO_DI_ADDESTRAMENTO (    
    CODICE_CORSO                    CHAR(3)         PRIMARY KEY,
	NOME_CORSO						VARCHAR2(60)	NOT NULL,
    TARIFFA_ADDESTRATORE            NUMBER(5,2)     NOT NULL,
    NUMERO_TESSERINO_ADDESTRATORE   CHAR(9)			NOT NULL,
	INIZIO_CORSO					DATE,
	FINE_CORSO						DATE,
    CONSTRAINT FK_ADDESTRATORE      FOREIGN KEY (NUMERO_TESSERINO_ADDESTRATORE) REFERENCES ADDESTRATORE(NUMERO_TESSERINO) ON DELETE CASCADE
);


CREATE TABLE SI_ISCRIVE (
	CF_CLIENTE 					            CHAR(16),
	CODICE_CORSO				            CHAR(3),
	DATA_ISCRIZIONE				            DATE			NOT NULL,
	COSTO_ISCRIZIONE			            NUMBER(5,2)		NOT NULL,
    MOD_PAGAMENTO                           CHAR(1),
    CONSTRAINT PK_SI_ISCRIVE                PRIMARY KEY (CF_CLIENTE,CODICE_CORSO),
    CONSTRAINT FK_CLIENTE_ISCRIVE           FOREIGN KEY (CF_CLIENTE) REFERENCES CLIENTE(CF) ON DELETE SET NULL,
    CONSTRAINT FK_CORSO_DI_ADDESTRAMENTO    FOREIGN KEY (CODICE_CORSO) REFERENCES CORSO_DI_ADDESTRAMENTO(CODICE_CORSO) ON DELETE SET NULL
);


CREATE TABLE DIPENDENTE (
  NUMERO_REPARTO          		NUMBER(2,0),
  CF 								CHAR(16) 		PRIMARY KEY, 
	NOME 							VARCHAR2(20) 	NOT NULL, 
	SECONDO_NOME 		    		VARCHAR2(20), 
	COGNOME 						VARCHAR2(20) 	NOT NULL, 
	DATA_NASCITA 					DATE			NOT NULL, 			 
	VIA 							VARCHAR2(20),	
	CIVICO 							NUMBER(5,0)	,	
	CAP 							VARCHAR2(6), 	
	CITTA							VARCHAR2(20),	
	SESSO 							VARCHAR2(1), 
	DATA_ASSUNZIONE					DATE,
	NUMERO_CELLULARE				VARCHAR2(15)	NOT NULL,
    EMAIL                   		VARCHAR2(35)    NOT NULL,
    CONSTRAINT FK_REPARTO   		FOREIGN KEY (NUMERO_REPARTO) REFERENCES REPARTO(NUMERO_REPARTO) ON DELETE SET NULL,
	CONSTRAINT CHECK_SESSO_DIP	 	CHECK (SESSO IN ('M','F'))
);

CREATE TABLE STIPENDIO (
	CF_DIPENDENTE				CHAR(16),
	DATA_STIPENDIO				DATE,
	IBAN_DIPENDENTE				CHAR(27),
	TOTALE_STIPENDIO			NUMBER(5,0),
	CONSTRAINT PK_STIPENDIO		PRIMARY KEY (IBAN_DIPENDENTE,DATA_STIPENDIO),
	CONSTRAINT FK_DIP_STIP		FOREIGN KEY (CF_DIPENDENTE) REFERENCES DIPENDENTE (CF) ON DELETE SET NULL
);

ALTER TABLE REPARTO 
	ADD CF_CAPOREPARTO						CHAR(16);

ALTER TABLE REPARTO
	ADD	CONSTRAINT FK_CAPOREPARTO			FOREIGN KEY (CF_CAPOREPARTO) REFERENCES DIPENDENTE (CF) ON DELETE SET NULL;


CREATE TABLE TURNI_DI_LAVORO (
	GIORNATA_DI_LAVORO	DATE			NOT NULL,
	ORA_INIZIO					TIMESTAMP		NOT NULL,	
	ORA_FINE						TIMESTAMP		NOT NULL,
	CONSTRAINT PK_TDL				    PRIMARY KEY (GIORNATA_DI_LAVORO,ORA_INIZIO)
  );


CREATE TABLE E_PRESENTE (
	GIORNATA_DI_LAVORO				DATE		NOT NULL,
	ORA_INIZIO						TIMESTAMP	NOT NULL,
	CF_DIPENDENTE					CHAR(16)	NOT NULL,
	E_PRESENTE						CHAR(1)		NOT NULL,
	ORA_ENTRATA						TIMESTAMP,		
	ORA_USCITA						TIMESTAMP,
	CONSTRAINT PK_EP 			   	PRIMARY KEY (GIORNATA_DI_LAVORO,ORA_INIZIO,CF_DIPENDENTE),		
	CONSTRAINT FK_TURNI_DI_LAVORO	FOREIGN KEY (GIORNATA_DI_LAVORO,ORA_INIZIO) REFERENCES TURNI_DI_LAVORO(GIORNATA_DI_LAVORO,ORA_INIZIO) ON DELETE SET NULL,
	CONSTRAINT FK_DIPENDENTE		FOREIGN KEY (CF_DIPENDENTE) REFERENCES DIPENDENTE (CF) ON DELETE CASCADE,
	CONSTRAINT CHECK_PRESENZA 		CHECK (E_PRESENTE IN ('Y','N'))
);

CREATE TABLE VETERINARIO (
    CODICE_VETERINARIO      CHAR(12)        PRIMARY KEY,
    NOME                    VARCHAR2(20)    NOT NULL,
    COGNOME                 VARCHAR2(20)    NOT NULL,
    DATA_DI_NASCITA         DATE            NOT NULL
);

CREATE TABLE PRENOTAZIONE (
	CODICE_PRENOTAZIONE					CHAR(6)		PRIMARY KEY,
	DATA_PRENOTAZIONE					DATE		NOT NULL,
	ORA_PRENOTAZIONE					TIMESTAMP   NOT NULL,
	TIPO_PRENOTAZIONE					CHAR(1)		NOT NULL,		
	CONSTRAINT CHECK_PRENOTAZIONE		CHECK(TIPO_PRENOTAZIONE IN ('P','V'))
);

CREATE TABLE VISITA_VETERINARIO (
  CODICE_VETERINARIO                  CHAR(12)		    NOT NULL,      
  TARIFFA_VETERINARIO                 NUMBER(5,2)     NOT NULL,
	PREZZO_VISITA                       NUMBER(5,2)     NOT NULL,
	CODICE_ANIMALE				    	        CHAR(12) 		    NOT NULL,
	CODICE_PRENOTAZIONE					        CHAR(6)			    NOT NULL,
  CONSTRAINT PK_VISITA_VETERINARIO    PRIMARY KEY (CODICE_VETERINARIO,CODICE_PRENOTAZIONE),
  CONSTRAINT FK_VETERINARIO           FOREIGN KEY (CODICE_VETERINARIO) REFERENCES VETERINARIO(CODICE_VETERINARIO) ON DELETE SET NULL,
	CONSTRAINT FK_ANIMALE_VV		        FOREIGN KEY (CODICE_ANIMALE) REFERENCES ANIMALE(CODICE_ANIMALE) ON DELETE CASCADE,
	CONSTRAINT FK_PRENOTAZIONE_VV		    FOREIGN KEY (CODICE_PRENOTAZIONE) REFERENCES PRENOTAZIONE (CODICE_PRENOTAZIONE) ON DELETE CASCADE

);

CREATE TABLE VISITA_PETCARE (
  CF_DIPENDENTE                         CHAR(16)		    NOT NULL,       
  PREZZO_VISITA                         NUMBER(4,2)     NOT NULL,
	CODICE_ANIMALE				    	          CHAR(12) 		NOT NULL,
	CODICE_PRENOTAZIONE					          CHAR(6)			NOT NULL,
  CONSTRAINT PK_VISITA_PETCARE          PRIMARY KEY (CF_DIPENDENTE,CODICE_PRENOTAZIONE),
  CONSTRAINT FK_DIPENDENTE_VP           FOREIGN KEY (CF_DIPENDENTE) REFERENCES DIPENDENTE(CF) ON DELETE SET NULL,
	CONSTRAINT FK_ANIMALE_VP		          FOREIGN KEY (CODICE_ANIMALE) REFERENCES ANIMALE(CODICE_ANIMALE) ON DELETE CASCADE,
	CONSTRAINT FK_PRENOTAZIONE_VP		      FOREIGN KEY (CODICE_PRENOTAZIONE) REFERENCES PRENOTAZIONE (CODICE_PRENOTAZIONE) ON DELETE CASCADE
);


CREATE TABLE PROMOZIONE (
	CODICE_PROMOZIONE			NUMBER(4,0)		PRIMARY KEY,
	DATA_INIZIO					DATE			NOT NULL,
	DATA_FINE					DATE			NOT NULL,
	CONSTRAINT CHECK_DATE		CHECK(DATA_INIZIO < DATA_FINE)					
);

CREATE TABLE PROMOZIONE_RIGUARDA (
	CODICE_PROMOZIONE				NUMBER(4,0),
	CODICE_PRODOTTO					CHAR(8),
	SCONTO_APPLICATO				NUMBER(2,2),
	CONSTRAINT PK_PR 				PRIMARY KEY (CODICE_PROMOZIONE,CODICE_PRODOTTO),
	CONSTRAINT FK_PROMOZIONE		FOREIGN KEY (CODICE_PROMOZIONE) REFERENCES PROMOZIONE (CODICE_PROMOZIONE) ON DELETE CASCADE,	
	CONSTRAINT FK_PRODOTTO_PROMO	FOREIGN KEY (CODICE_PRODOTTO) REFERENCES PRODOTTO (CODICE_PRODOTTO) ON DELETE CASCADE	
);

CREATE TABLE RICHIAMO(
	DATA_RICHIAMO						DATE,
	CF_DIPENDENTE						CHAR(16),
	CONSTRAINT PK_RICHIAMO				PRIMARY KEY(DATA_RICHIAMO,CF_DIPENDENTE),
	CONSTRAINT FK_DIPENDENTE_R			FOREIGN KEY (CF_DIPENDENTE) REFERENCES DIPENDENTE (CF) ON DELETE CASCADE
);


COMMIT;