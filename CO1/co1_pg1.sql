CREATE DATABASE MOVIE;
USE MOVIE;
CREATE table MOVIES(title VARCHAR(20) NOT NULL PRIMARY KEY,director VARCHAR(20) NOT NULL,myear INT NOT NULL,rating FLOAT NOT NULL);
CREATE table ACTORS(actor VARCHAR(20) NOT NULL PRIMARY KEY,ayear INT NOT NULL);
CREATE table ACTS(actor VARCHAR(20) NOT NULL,title VARCHAR(20) NOT NULL,FOREIGN KEY(actor) REFERENCES ACTORS(actor) ON DELETE CASCADE,FOREIGN KEY(title) REFERENCES MOVIES(title) ON DELETE CASCADE);
CREATE table DIRECTORS(director VARCHAR(20) NOT NULL PRIMARY KEY,dyear INT NOT NULL);
ALTER TABLE MOVIES ADD CONSTRAINT director FOREIGN KEY(director) REFERENCES DIRECTORS(director) ON DELETE CASCADE;
INSERT INTO DIRECTORS (director,dyear) VALUES('Coen',1954);
INSERT INTO DIRECTORS (director,dyear) VALUES('Hanson',1945);
INSERT INTO DIRECTORS (director,dyear) VALUES('Raimi',1959);
SELECT * FROM DIRECTORS;
INSERT INTO ACTORS (actor,ayear) VALUES('Cage',1964);
INSERT INTO ACTORS (actor,ayear) VALUES('Hanks',1956);
INSERT INTO ACTORS (actor,ayear) VALUES('Maguire',1975);
INSERT INTO ACTORS (actor,ayear) VALUES('McDormand',1957);
SELECT * FROM ACTORS;
INSERT INTO MOVIES (title,director,myear,rating) VALUES('Fargo','Coen',1996,8.2);
INSERT INTO MOVIES (title,director,myear,rating) VALUES('Raising Arizona','Coen',1987,7.6);
INSERT INTO MOVIES (title,director,myear,rating) VALUES('Spiderman','Raimi',2002,7.4);
INSERT INTO MOVIES (title,director,myear,rating) VALUES('Wonder Boys','Hanson',2000,7.6);
SELECT * FROM MOVIES;
INSERT INTO ACTS (actor,title) VALUES('Cage','Raising Arizona');
INSERT INTO ACTS (actor,title) VALUES('Maguire','Spiderman');
INSERT INTO ACTS (actor,title) VALUES('Maguire','Wonder Boys');
INSERT INTO ACTS (actor,title) VALUES('McDormand','Fargo');
INSERT INTO ACTS (actor,title) VALUES('McDormand','Raising Arizona');
INSERT INTO ACTS (actor,title) VALUES('McDormand','Wonder Boys');
SELECT * FROM ACTORS;
SELECT * FROM MOVIES WHERE myear>1997;
SELECT * FROM MOVIES WHERE director='Hason' and myear>1997;
SELECT title,rating FROM MOVIES;
SELECT DISTINCT actor,director FROM  DIRECTORS NATURAL JOIN MOVIES NATURAL JOIN ACTS NATURAL JOIN ACTORS;
SELECT title FROM  DIRECTORS NATURAL JOIN MOVIES NATURAL JOIN ACTS WHERE actor="McDormand" AND director="Coen";

