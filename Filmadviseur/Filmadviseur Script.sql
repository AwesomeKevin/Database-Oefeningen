DROP TABLE BEZOEKER CASCADE CONSTRAINTS;
DROP TABLE GENRE CASCADE CONSTRAINTS;
DROP TABLE FILM CASCADE CONSTRAINTS;
DROP TABLE BIOSCOOP CASCADE CONSTRAINTS;
DROP TABLE BIOSCOOP_FILM CASCADE CONSTRAINTS;
DROP TABLE BEOORDELING CASCADE CONSTRAINTS;
DROP TABLE BEZOEKER_GENRE CASCADE CONSTRAINTS;

CREATE TABLE BEZOEKER
(
	ID		number			primary key,
	Naam	varchar2(255)	not null
);

CREATE TABLE GENRE
(
	ID		number			primary key,
	Naam	varchar2(255)	not null
);

CREATE TABLE FILM
(
	ID				number			primary key,
	Titel			varchar2(255)	not null,
	Omschrijving	varchar2(255),
	Genre_ID		references GENRE(ID)
);

CREATE TABLE BIOSCOOP
(
	ID		number			primary key,
	Naam	varchar2(255)	not null,
	Adres	varchar2(255)	not null
);

CREATE TABLE BIOSCOOP_FILM
(
	Bioscoop_ID		number,
	Film_ID			number,
	
constraint PK_BF primary key(Bioscoop_ID, Film_ID)
);

CREATE TABLE BEOORDELING
(
	ID				number,
	Rating			number		not null		check (Rating in(1, 2, 3, 4, 5)),
	Bezoeker_ID		references BEZOEKER(ID),
	Film_ID			references FILM(ID),
	
constraint PK_BD primary key(ID, Bezoeker_ID, Film_ID)
);

CREATE TABLE BEZOEKER_GENRE
(
	Bezoeker_ID		number,
	Genre_ID		number,
	
constraint PK_BG primary key(Bezoeker_ID, Genre_ID)
);



INSERT INTO BEZOEKER(ID, Naam)
VALUES(1, 'Kevin');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(2, 'Pim');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(3, 'Jeroen');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(4, 'Bas');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(5, 'Kees');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(6, 'Anja');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(7, 'Nick');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(8, 'Lisa');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(9, 'Brecht');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(10, 'Annemieke');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(11, 'Hans');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(12, 'Myrhte');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(13, 'Wendy');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(14, 'Thijs');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(15, 'Frederique');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(16, 'Wilma');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(17, 'Toos');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(18, 'Yusuf');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(19, 'Max');
INSERT INTO BEZOEKER(ID, Naam)
VALUES(20, 'Dirkje');

INSERT INTO GENRE(ID, Naam)
VALUES(1, 'Horror');
INSERT INTO GENRE(ID, Naam)
VALUES(2, 'Komedie');
INSERT INTO GENRE(ID, Naam)
VALUES(3, 'Actie');
INSERT INTO GENRE(ID, Naam)
VALUES(4, 'Avontuur');
INSERT INTO GENRE(ID, Naam)
VALUES(5, 'Science Fiction');
INSERT INTO GENRE(ID, Naam)
VALUES(6, 'Drama');

INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(1, 'Spectre', '', 3);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(2, 'Hotel Transsylvanie 2', '', 2);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(3, 'Ja, Ik Wil!', '', 6);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(4, 'The Martian', '', 5);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(5, 'Crimson Peak', '', 1);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(6, 'Popoz', '', 2);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(7, 'Pan', '', 4);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(8, 'Maze Runner 2', '', 5);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(9, 'The Walk', '', 6);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(10, 'Everest', '', 4);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(11, 'Schone Handen', '', 6);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(12, 'Minions', '', 2);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(13, 'Star Wars 7', '', 5);
INSERT INTO FILM(ID, Titel, Omschrijving, Genre_ID)
VALUES(14, 'Inside Out', '', 2);

INSERT INTO BIOSCOOP(ID, Naam, Adres)
VALUES(1, 'Pathé Eindhoven', 'Dommelstraat 27');
INSERT INTO BIOSCOOP(ID, Naam, Adres)
VALUES(2, 'Pathé Delft', 'Vesteplein 5');
INSERT INTO BIOSCOOP(ID, Naam, Adres)
VALUES(3, 'Pathé De Munt', 'Vijzelstraat 15');
INSERT INTO BIOSCOOP(ID, Naam, Adres)
VALUES(4, 'Pathé Scheveningen', 'Kurhausweg 2A');

INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(1, 1);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(1, 2);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(1, 3);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(1, 4);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(1, 5);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(1, 6);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(1, 7);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(1, 8);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(1, 9);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(1, 10);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(1, 13);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(2, 2);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(2, 3);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(2, 4);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(2, 5);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(2, 6);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(2, 7);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(2, 11);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(2, 14);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(3, 1);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(3, 2);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(3, 5);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(3, 6);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(3, 7);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(3, 9);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(3, 10);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(3, 11);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(3, 12);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(3, 14);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(4, 1);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(4, 3);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(4, 4);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(4, 6);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(4, 7);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(4, 8);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(4, 9);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(4, 10);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(4, 11);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(4, 12);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(4, 13);
INSERT INTO BIOSCOOP_FILM(Bioscoop_ID, Film_ID)
VALUES(4, 14);

INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(1, 4, 1, 1);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(2, 3, 4, 1);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(3, 3, 9, 1);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(4, 2, 13, 1);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(5, 5, 15, 1);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(6, 3, 17, 1);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(7, 4, 19, 1);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(8, 5, 20, 1);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(9, 4, 2, 2);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(10, 1, 3, 2);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(11, 2, 5, 2);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(12, 4, 8, 2);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(13, 2, 10, 2);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(14, 2, 11, 2);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(15, 1, 12, 2);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(16, 3, 15, 2);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(17, 1, 2, 3);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(18, 1, 5, 3);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(19, 3, 6, 3);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(20, 2, 7, 3);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(21, 4, 10, 3);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(22, 1, 13, 3);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(23, 2, 15, 3);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(24, 3, 19, 3);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(25, 4, 3, 4);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(24, 2, 5, 4);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(26, 5, 7, 4);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(27, 4, 9, 4);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(28, 5, 11, 4);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(29, 3, 12, 5);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(30, 4, 12, 5);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(31, 4, 14, 5);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(32, 4, 16, 5);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(33, 3, 18, 5);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(34, 2, 19, 5);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(35, 5, 20, 5);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(36, 5, 3, 6);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(37, 1, 7, 6);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(38, 4, 15, 6);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(39, 2, 17, 6);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(40, 2, 19, 6);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(41, 2, 2, 7);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(42, 4, 4, 7);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(43, 5, 7, 7);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(44, 1, 8, 7);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(45, 2, 9, 7);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(46, 3, 13, 7);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(47, 3, 15, 7);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(48, 2, 2, 8);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(49, 5, 3, 8);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(50, 4, 4, 8);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(51, 5, 7, 8);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(52, 4, 9, 8);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(53, 3, 17, 8);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(54, 2, 1, 9);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(55, 3, 3, 9);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(56, 3, 7, 9);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(57, 2, 9, 9);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(58, 2, 10, 9);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(59, 3, 13, 9);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(60, 4, 16, 9);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(61, 2, 17, 9);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(62, 2, 2, 10);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(63, 4, 5, 10);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(64, 3, 6, 10);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(65, 5, 8, 10);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(66, 5, 10, 11);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(67, 2, 11, 11);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(68, 1, 15, 11);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(69, 4, 17, 11);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(70, 3, 18, 11);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(71, 3, 20, 11);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(72, 3, 3, 12);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(73, 4, 5, 12);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(74, 5, 14, 12);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(75, 2, 17, 12);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(76, 4, 19, 12);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(77, 4, 1, 13);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(78, 3, 6, 13);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(79, 5, 2, 13);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(80, 4, 9, 14);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(81, 5, 11, 14);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(82, 4, 12, 14);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(83, 2, 14, 14);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(84, 3, 17, 14);
INSERT INTO BEOORDELING(ID, Rating, Bezoeker_ID, Film_ID)
VALUES(85, 1, 20, 14);

INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(1, 1);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(1, 3);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(1, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(2, 2);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(2, 5);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(2, 6);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(3, 2);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(3, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(3, 6);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(4, 1);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(4, 2);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(4, 5);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(5, 2);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(5, 3);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(5, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(6, 2);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(6, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(6, 6);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(7, 2);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(7, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(7, 5);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(8, 1);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(8, 2);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(8, 6);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(9, 2);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(9, 5);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(9, 6);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(10, 1);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(10, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(10, 5);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(11, 2);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(11, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(11, 5);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(12, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(12, 5);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(12, 6);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(13, 3);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(13, 5);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(13, 6);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(14, 3);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(14, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(14, 5);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(15, 1);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(15, 3);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(15, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(16, 1);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(16, 2);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(16, 6);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(17, 1);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(17, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(17, 5);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(18, 2);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(18, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(18, 5);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(19, 1);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(19, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(19, 6);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(20, 2);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(20, 4);
INSERT INTO BEZOEKER_GENRE(Bezoeker_ID, Genre_ID)
VALUES(20, 5);
