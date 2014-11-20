---------------
-- Aufgabe 3 --
---------------
-- a
SELECT name, wohnort FROM mitglieder;
-- b
SELECT anr FROM registrierungen;
-- c
SELECT mnr, dvdnr, rueckgabe - datum FROM ausleihen;
-- d
SELECT mnr, dvdnr, rueckgabe - datum FROM ausleihen WHERE rueckgabe IS NOT NULL
  UNION
  SELECT mnr, dvdnr, SYSDATE - datum FROM ausleihen WHERE rueckgabe IS NULL;
-- e
SELECT LOWER(SUBSTR(name,0,2)) FROM angestellte;
-- f
SELECT TO_CHAR(gdatum, 'YY') FROM mitglieder;
-- g
SELECT 'SQL ist bis jetzt einfach :O' FROM registrierungen;
SELECT DISTINCT 'SQL ist bis jetzt einfach :O' FROM registrierungen;
-- h
SELECT fnr || ';' || ort || ';' || plz FROM filialen;
-- i
  -- nope
-- j
SELECT katalognr, titel, TO_CHAR(TO_DATE(MINDESTALTER, 'j'), 'jsp'), gebuehr FROM filme;
-- k
SELECT titel, ROWID FROM filme;
SELECT titel, ROWNUM FROM filme;
SELECT titel, ROWID FROM filme WHERE mindestalter >= 12;
SELECT titel, ROWNUM FROM filme WHERE mindestalter >= 12;

---------------
-- Aufgabe 4 --
---------------
-- a
SELECT mnr, dvdnr FROM ausleihen WHERE TO_CHAR(rueckgabe, 'YYYY') = '2013';
-- b
SELECT mnr, dvdnr FROM ausleihen WHERE TO_CHAR(rueckgabe, 'YYYY') != '2007';
-- c
SELECT mnr, dvdnr FROM ausleihen WHERE TO_CHAR(rueckgabe, 'YYYY') != '2007' OR rueckgabe IS NULL;
-- e
SELECT mnr, rueckgabe FROM ausleihen WHERE mnr = 'M003';
-- f
SELECT mnr, dvdnr FROM ausleihen WHERE rueckgabe IS NOT NULL;
-- g
SELECT * FROM mitglieder WHERE EXTRACT(YEAR FROM ((SYSDATE-gdatum) YEAR TO MONTH)) > 35;
-- h
SELECT * FROM angestellte WHERE name LIKE '%r%' OR name LIKE '%R%';
-- i
SELECT dvdnr, datum FROM ausleihen WHERE mnr = 'M002' OR mnr = 'M004';
-- j
SELECT * FROM filme WHERE mindestalter BETWEEN 7 AND 12;
