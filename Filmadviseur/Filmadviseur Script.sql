DROP TABLE BEZOEKER ON CASCADE CONSTRAINTS;
DROP TABLE GENRE ON CASCADE CONSTRAINTS;
DROP TABLE FILM ON CASCADE CONSTRAINTS;
DROP TABLE BIOSCOOP ON CASCADE CONSTRAINTS;
DROP TABLE BIOSCOOP_FILM ON CASCADE CONSTRAINTS;
DROP TABLE BEOORDELING ON CASCADE CONSTRAINTS;
DROP TABLE BEZOEKER_GENRE ON CASCADE CONSTRAINTS;

CREATE TABLE BEZOEKER
(
	ID		number			primary key,
	Naam	varchar2(255)
);

CREATE TABLE GENRE
(
	ID		number			primary key,
	Naam	varchar2(255)
);

CREATE TABLE FILM
(
	ID				number		primary key,
	Titel			varchar2(255),
	Omschrijving	varchar2(255),
	Genre_ID		references GENRE(ID)
);

CREATE TABLE BIOSCOOP
(
	ID		number			primary key,
	Naam	varchar2(255),
	Adres	varchar2(255)
);

CREATE TABLE BIOSCOOP_FILM
(
	Bioscoop_ID		number,
	Film_ID			number,
	
constraint PK_BF primary key(Bioscoop_ID, Film_ID)
);

CREATE TABLE BEOORDELING
(
	ID				number		primary key,
	Rating			number,
	Bezoeker_ID		references BEZOEKER(ID),
	Film_ID			references FILM(ID)
);

CREATE TABLE BEZOEKER_GENRE
(
	Bezoeker_ID		number,
	Genre_ID		number,
	
constraint PK_BG primary key(Bezoeker_ID, Genre_ID)
);