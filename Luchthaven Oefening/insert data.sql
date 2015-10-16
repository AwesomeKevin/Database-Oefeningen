INSERT INTO VLIEGVELD(ID, Naam)
VALUES(1, 'Eindhoven Airport');

INSERT INTO BAAN(ID, VliegveldID)
VALUES(1, 1);

INSERT INTO BAAN(ID, VliegveldID)
VALUES(2, 1);

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(1, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(1, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(1, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(1, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(1, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(1, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(1, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(1, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(1, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(1, 'KLM', '');

INSERT INTO RESERVERING(BaanID, DatumtijdVan, DatumtijdTot, Vluchtnummer, Vliegtuig_ID, Type)
VALUES(1, TO_DATE(16/10/2015/ 10:15, DD/MM/YYYY HH:MI)), TO_DATE(16/10/2015/ 10:30, DD/MM/YYYY HH:MI), 'KLM-400', 1, 'Vertrek')

INSERT INTO RESERVERING(BaanID, DatumtijdVan, DatumtijdTot, Vluchtnummer, Vliegtuig_ID, Type)
VALUES(2, TO_DATE(16/10/2015/ 10:15, DD/MM/YYYY HH:MI)), TO_DATE(16/10/2015/ 10:30, DD/MM/YYYY HH:MI), 'KLM-404', 2, 'Landing')

INSERT INTO RESERVERING(BaanID, DatumtijdVan, DatumtijdTot, Vluchtnummer, Vliegtuig_ID, Type)
VALUES(1, TO_DATE(16/10/2015/ 10:45, DD/MM/YYYY HH:MI)), TO_DATE(16/10/2015/ 11:00, DD/MM/YYYY HH:MI), 'KLM-809', 3, 'Vertrek')

INSERT INTO RESERVERING(BaanID, DatumtijdVan, DatumtijdTot, Vluchtnummer, Vliegtuig_ID, Type)
VALUES(2, TO_DATE(16/10/2015/ 10:35, DD/MM/YYYY HH:MI)), TO_DATE(16/10/2015/ 10:45, DD/MM/YYYY HH:MI), 'KLM-346', 4, 'Landing')

INSERT INTO RESERVERING(BaanID, DatumtijdVan, DatumtijdTot, Vluchtnummer, Vliegtuig_ID, Type)
VALUES(1, TO_DATE(16/10/2015/ 11:20, DD/MM/YYYY HH:MI)), TO_DATE(16/10/2015/ 11:35, DD/MM/YYYY HH:MI), 'KLM-212', 5, 'Vertrek')