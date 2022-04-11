CREATE DATABASE LIBRARYDATABASE;
USE LIBRARYDATABASE;
CREATE TABLE BOOK (Book_id INT PRIMARY KEY,Title VARCHAR(20),Publisher_Name VARCHAR(20),Pub_Year DATE);
CREATE TABLE BOOK_AUTHORS(Book_id INT,Author_Name VARCHAR(20) PRIMARY KEY, FOREIGN KEY(Book_id) REFERENCES BOOK(Book_id) ON DELETE CASCADE);
CREATE TABLE PUBLISHER(Publisher_Name VARCHAR(20) PRIMARY KEY,Address VARCHAR(20),Phone BIGINT);
CREATE TABLE LIBRARY_BRANCH(Branch_id INT PRIMARY KEY,Branch_Name VARCHAR(20),Address VARCHAR(20));
CREATE TABLE BOOK_COPIES(Book_id INT,Branch_id INT,No_of_Copies INT,FOREIGN KEY(Book_id) REFERENCES BOOK(Book_id) ON DELETE CASCADE,FOREIGN KEY(Branch_id) REFERENCES LIBRARY_BRANCH(Branch_id) ON DELETE CASCADE);
CREATE TABLE BOOK_LENDING(Book_id INT,Branch_id INT,Card_No INT,Date_Out Date,Due_date DATE,FOREIGN KEY(Book_id) REFERENCES BOOK(Book_id) ON DELETE CASCADE,FOREIGN KEY(Branch_id) REFERENCES LIBRARY_BRANCH(Branch_id) ON DELETE CASCADE);
INSERT INTO BOOK(Book_id,Title,Publisher_Name,Pub_year) VALUES (101,'Orchid for you','ABC Publishers','2002-02-20');
INSERT INTO BOOK(Book_id,Title,Publisher_Name,Pub_year) VALUES (102,'Diochan Fantasy','DEF Publishers','2017-02-10');
INSERT INTO BOOK(Book_id,Title,Publisher_Name,Pub_year) VALUES (103,'Adventures of Creation','GHI Publishers','2017-06-20');
INSERT INTO BOOK(Book_id,Title,Publisher_Name,Pub_year) VALUES (104,'Never leave you','JKL Publishers','2020-02-20');
INSERT INTO BOOK_AUTHORS(Book_id,Author_Name) VALUES (101,'AMEEN KIRAN');
INSERT INTO BOOK_AUTHORS(Book_id,Author_Name) VALUES (102,'SHARAVAN S');
INSERT INTO BOOK_AUTHORS(Book_id,Author_Name) VALUES (103,'SREE PADHMARAJAN');
INSERT INTO BOOK_AUTHORS(Book_id,Author_Name) VALUES (104,'LALJIHADR');
INSERT INTO PUBLISHER(Publisher_Name,Address,Phone) VALUES ('ABC Publishers','123 LANE BHORIGARD',9878758810);
INSERT INTO PUBLISHER(Publisher_Name,Address,Phone) VALUES ('DEF Publishers','456 LANE BHORIGARD',9093943900);
INSERT INTO PUBLISHER(Publisher_Name,Address,Phone) VALUES ('GHI Publishers','789 LANE BHORIGARD',8948939899);
INSERT INTO PUBLISHER(Publisher_Name,Address,Phone) VALUES ('JKL Publishers','453 LANE BHORIGARD',9849898999);
INSERT INTO LIBRARY_BRANCH(Branch_id,Branch_Name,Address) VALUES (10,'QUILION LIB','200 LANE Quiron');
INSERT INTO LIBRARY_BRANCH(Branch_id,Branch_Name,Address) VALUES (20,'STANDFORD LIB','300 LANE Standon');
INSERT INTO LIBRARY_BRANCH(Branch_id,Branch_Name,Address) VALUES (30,'PURKUSH LIB','200 LANE Purshk');
INSERT INTO LIBRARY_BRANCH(Branch_id,Branch_Name,Address) VALUES (40,'LAKFORD LIB','200 LANE Lateford');
INSERT INTO BOOK_COPIES(Book_id,Branch_id,No_of_Copies) VALUES (101,10,30);
INSERT INTO BOOK_COPIES(Book_id,Branch_id,No_of_Copies) VALUES (101,20,40);
INSERT INTO BOOK_COPIES(Book_id,Branch_id,No_of_Copies) VALUES (102,10,30);
INSERT INTO BOOK_COPIES(Book_id,Branch_id,No_of_Copies) VALUES (102,20,30);
INSERT INTO BOOK_COPIES(Book_id,Branch_id,No_of_Copies) VALUES (103,10,0);
INSERT INTO BOOK_COPIES(Book_id,Branch_id,No_of_Copies) VALUES (103,20,0);
INSERT INTO BOOK_COPIES(Book_id,Branch_id,No_of_Copies) VALUES (104,10,0);
INSERT INTO BOOK_COPIES(Book_id,Branch_id,No_of_Copies) VALUES (104,20,0);
INSERT INTO BOOK_LENDING(Book_id,Branch_id,Card_No,Date_Out,Due_date) VALUES (101,20,1001,'2017-02-10','2017-04-10');
INSERT INTO BOOK_LENDING(Book_id,Branch_id,Card_No,Date_Out,Due_date) VALUES (102,20,1001,'2017-02-10','2017-04-10');
INSERT INTO BOOK_LENDING(Book_id,Branch_id,Card_No,Date_Out,Due_date) VALUES (103,20,1001,'2017-02-10','2017-04-10');
INSERT INTO BOOK_LENDING(Book_id,Branch_id,Card_No,Date_Out,Due_date) VALUES (104,20,1001,'2017-02-10','2017-04-10');
INSERT INTO BOOK_LENDING(Book_id,Branch_id,Card_No,Date_Out,Due_date) VALUES (102,20,1002,'2017-02-10','2017-04-10');
INSERT INTO BOOK_LENDING(Book_id,Branch_id,Card_No,Date_Out,Due_date) VALUES (103,10,1020,'2017-04-10','2017-06-10');
INSERT INTO BOOK_LENDING(Book_id,Branch_id,Card_No,Date_Out,Due_date) VALUES (104,10,1010,'2017-04-10','2017-06-10');
INSERT INTO BOOK_LENDING(Book_id,Branch_id,Card_No,Date_Out,Due_date) VALUES (101,20,1030,'2017-06-10','2017-08-10');
INSERT INTO BOOK_LENDING(Book_id,Branch_id,Card_No,Date_Out,Due_date) VALUES (101,20,1040,'2017-08-10','2017-10-10');
SELECT * FROM BOOK;
SELECT * FROM BOOK_AUTHORS;
SELECT * FROM PUBLISHER;
SELECT * FROM LIBRARY_BRANCH;
SELECT * FROM BOOK_COPIES;
SELECT * FROM BOOK_LENDING;
SELECT Book_id,Title,Publisher_Name,Author_Name,Branch_id,No_of_Copies FROM BOOk NATURAL JOIN BOOK_AUTHORS NATURAL JOIN BOOK_COPIES WHERE BOOK.Book_id=Book_Authors.Book_id AND Book.Book_id=BOOK_COPIES.Book_id;
SELECT * FROM BOOK_LENDING WHERE Date_Out BETWEEN '2017-01-01' AND '2017-06-01' GROUP BY Card_No HAVING COUNT(*)>3;
DELETE FROM BOOK WHERE Book_id=104;
SELECT year()(Pub_Year) OVER (PARTITION BY Pub_Year AS Pub_Year) FROM BOOK 




