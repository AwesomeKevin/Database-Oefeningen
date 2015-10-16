drop table VLIEGVELD cascade constraints;
drop table BAAN cascade constraints;
drop table VLIEGTUIG cascade constraints;
drop table RESERVERING cascade constraints;

create table VLIEGVELD
(
	ID		number	 		primary key,
	Naam	varchar2(255)	not null
);

create table BAAN(

	ID				number	primary key,
    Vliegveld_ID	number	not null 		references VLIEGVELD(id)
);

create table VLIEGTUIG
(
    ID					number 			primary key,
    Maatschappijnaam	varchar2(255),
    Type				varchar2(255)
);

create table RESERVERING
(
    Baan_ID 		number			not null	references BAAN(id),
    DatumtijdVan	date,
    DatumtijdTot 	date,
	Vluchtnummer	varchar2(255),
    Vliegtuig_ID 	number			not null	references VLIEGTUIG(id),
    Type 			varchar2(255)	not null,

	check(Type in ('Vertrek', 'Landing')),
    primary key (Baan_ID, DatumtijdVan)
);

INSERT INTO VLIEGVELD(ID, Naam)
VALUES(1, 'Eindhoven Airport');

INSERT INTO BAAN(ID, Vliegveld_ID)
VALUES(1, 1);

INSERT INTO BAAN(ID, Vliegveld_ID)
VALUES(2, 1);

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(1, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(2, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(3, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(4, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(5, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(6, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(7, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(8, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(9, 'KLM', '');

INSERT INTO VLIEGTUIG(ID, Maatschappijnaam, Type)
VALUES(10, 'KLM', '');

INSERT INTO RESERVERING(Baan_ID, DatumtijdVan, DatumtijdTot, Vluchtnummer, Vliegtuig_ID, Type)
VALUES(1, TO_DATE('16/10/2015/ 10:15', 'DD/MM/YYYY HH:MI'), TO_DATE('16/10/2015/ 10:30', 'DD/MM/YYYY HH:MI'), 'KLM-400', 1, 'Vertrek');

INSERT INTO RESERVERING(Baan_ID, DatumtijdVan, DatumtijdTot, Vluchtnummer, Vliegtuig_ID, Type)
VALUES(2, TO_DATE('16/10/2015/ 10:15', 'DD/MM/YYYY HH:MI'), TO_DATE('16/10/2015/ 10:30', 'DD/MM/YYYY HH:MI'), 'KLM-404', 2, 'Landing');

INSERT INTO RESERVERING(Baan_ID, DatumtijdVan, DatumtijdTot, Vluchtnummer, Vliegtuig_ID, Type)
VALUES(1, TO_DATE('16/10/2015/ 10:45', 'DD/MM/YYYY HH:MI'), TO_DATE('16/10/2015/ 11:00', 'DD/MM/YYYY HH:MI'), 'KLM-809', 3, 'Vertrek');

INSERT INTO RESERVERING(Baan_ID, DatumtijdVan, DatumtijdTot, Vluchtnummer, Vliegtuig_ID, Type)
VALUES(2, TO_DATE('16/10/2015/ 10:35', 'DD/MM/YYYY HH:MI'), TO_DATE('16/10/2015/ 10:45', 'DD/MM/YYYY HH:MI'), 'KLM-346', 4, 'Landing');

INSERT INTO RESERVERING(Baan_ID, DatumtijdVan, DatumtijdTot, Vluchtnummer, Vliegtuig_ID, Type)
VALUES(1, TO_DATE('16/10/2015/ 11:20', 'DD/MM/YYYY HH:MI'), TO_DATE('16/10/2015/ 11:35', 'DD/MM/YYYY HH:MI'), 'KLM-212', 5, 'Vertrek');