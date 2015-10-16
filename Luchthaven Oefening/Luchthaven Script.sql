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
	Vluchtnummer	number,
    Vliegtuig_ID 	number			not null	references VLIEGTUIG(id),
    Type 			varchar2(255)	not null,

	check(Type in ('Vertrek', 'Landing')),
    primary key (Baan_ID, DatumtijdVan)
);