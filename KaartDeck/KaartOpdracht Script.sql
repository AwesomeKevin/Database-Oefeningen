DROP TABLE PLAYER CASCADE CONSTRAINTS;
DROP TABLE DECK CASCADE CONSTRAINTS;
DROP TABLE DECKCARD CASCADE CONSTRAINTS;
DROP TABLE CARD CASCADE CONSTRAINTS;

CREATE TABLE PLAYER
(
	ID 			number(8)		PRIMARY KEY,
	naam		varchar2(30)	NOT NULL,
	email		varchar2(30)	UNIQUE,
	wachtwoord	varchar2(255)	NOT NULL
);

CREATE TABLE DECK
(
	ID				number(8)		PRIMARY KEY,
	omschrijving	varchar2(255),
	playerID		number(5),
	
	CONSTRAINT fk_playerID FOREIGN KEY (playerID) REFERENCES PLAYER(ID)
);

CREATE TABLE CARD
(
	ID				number(5)		PRIMARY KEY,
	naam			varchar2(30)	UNIQUE,
	afbeelding		varchar2(255)
);

CREATE TABLE DECKCARD
(
	deckID	number(5),
	cardID	number(5),
	
	CONSTRAINT pk_deckcard PRIMARY KEY(cardID, deckID),
	CONSTRAINT fk_cardID FOREIGN KEY (cardID) REFERENCES CARD(ID),
	CONSTRAINT fk_deckID FOREIGN KEY (deckID) REFERENCES DECK(ID)
);

INSERT INTO PLAYER VALUES (1, 'Jan Janssen', 'jan@janssen.nl', 'welkom1234');
INSERT INTO PLAYER VALUES (2, 'Erik Keijsers', 'e.keijsers@hotmail.com', 'ErikVikingKoning45');

INSERT INTO DECK VALUES (1, 'murlock', 1);
INSERT INTO DECK VALUES (2, 'paladin', 1);
INSERT INTO DECK VALUES (3, 'windeck', 2);
INSERT INTO DECK VALUES (4, 'trolldeck', 2);

INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(1, 'kaart 1', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(2, 'kaart 2', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(3, 'kaart 3', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(4, 'kaart 4', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(5, 'kaart 5', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(6, 'kaart 6', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(7, 'kaart 7', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(8, 'kaart 8', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(9, 'kaart 9', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(10, 'kaart 10', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(11, 'kaart 11', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(12, 'kaart 12', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(13, 'kaart 13', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(14, 'kaart 14', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(15, 'kaart 15', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(16, 'kaart 16', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(17, 'kaart 17', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(18, 'kaart 18', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(19, 'kaart 19', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(20, 'kaart 20', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(21, 'kaart 21', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(22, 'kaart 22', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(23, 'kaart 23', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(24, 'kaart 24', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(25, 'kaart 25', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(26, 'kaart 26', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(27, 'kaart 27', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(28, 'kaart 28', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(29, 'kaart 29', null);
INSERT INTO CARD(ID, Naam, Afbeelding) VALUES(30, 'kaart 30', null);

INSERT INTO DECKCARD VALUES (1, 1); 
INSERT INTO DECKCARD VALUES (1, 4);
INSERT INTO DECKCARD VALUES (1, 9);
INSERT INTO DECKCARD VALUES (1, 12);
INSERT INTO DECKCARD VALUES (1, 15);
INSERT INTO DECKCARD VALUES (1, 8);
INSERT INTO DECKCARD VALUES (1, 2);
INSERT INTO DECKCARD VALUES (1, 3);
INSERT INTO DECKCARD VALUES (1, 22);
INSERT INTO DECKCARD VALUES (1, 26);
INSERT INTO DECKCARD VALUES (2, 5);
INSERT INTO DECKCARD VALUES (2, 6);
INSERT INTO DECKCARD VALUES (2, 19);
INSERT INTO DECKCARD VALUES (2, 29);
INSERT INTO DECKCARD VALUES (2, 23);
INSERT INTO DECKCARD VALUES (2, 18);
INSERT INTO DECKCARD VALUES (2, 1);
INSERT INTO DECKCARD VALUES (2, 4);
INSERT INTO DECKCARD VALUES (2, 9);
INSERT INTO DECKCARD VALUES (2, 12);
INSERT INTO DECKCARD VALUES (3, 8);
INSERT INTO DECKCARD VALUES (3, 1);
INSERT INTO DECKCARD VALUES (3, 5);
INSERT INTO DECKCARD VALUES (3, 12);
INSERT INTO DECKCARD VALUES (3, 9);
INSERT INTO DECKCARD VALUES (3, 19);
INSERT INTO DECKCARD VALUES (3, 29);
INSERT INTO DECKCARD VALUES (3, 30);
INSERT INTO DECKCARD VALUES (3, 15);
INSERT INTO DECKCARD VALUES (3, 18);
INSERT INTO DECKCARD VALUES (4, 2);
INSERT INTO DECKCARD VALUES (4, 12);
INSERT INTO DECKCARD VALUES (4, 19);
INSERT INTO DECKCARD VALUES (4, 5);
INSERT INTO DECKCARD VALUES (4, 7);
INSERT INTO DECKCARD VALUES (4, 9);
INSERT INTO DECKCARD VALUES (4, 4);
INSERT INTO DECKCARD VALUES (4, 3);
INSERT INTO DECKCARD VALUES (4, 29);
INSERT INTO DECKCARD VALUES (4, 1);