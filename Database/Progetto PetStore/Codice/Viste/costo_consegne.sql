CREATE OR REPLACE VIEW COSTO_CONSEGNE AS
  SELECT SUM(COSTO_ACQUISTO * QUANTITA) AS TOTALE,NUMERO_CONSEGNA,MAX(DATA_CONSEGNA) AS DATA_CONSEGNA FROM
  (SELECT CO.NUMERO_CONSEGNA,CO.DATA_CONSEGNA,PR.CODICE_PRODOTTO,COSTO_ACQUISTO,QUANTITA FROM CONSEGNA CO JOIN CONSEGNA_CONTIENE CC ON CO.NUMERO_CONSEGNA = CC.NUMERO_CONSEGNA JOIN PRODOTTO PR ON CC.CODICE_PRODOTTO = PR.CODICE_PRODOTTO
   )
  IQ WHERE NUMERO_CONSEGNA = IQ.NUMERO_CONSEGNA
  GROUP BY NUMERO_CONSEGNA;