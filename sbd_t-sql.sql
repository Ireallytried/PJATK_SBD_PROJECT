CREATE TABLE Award (
    IdAward integer  NOT NULL,
    Name char(30)  NOT NULL,
    CONSTRAINT Award_pk PRIMARY KEY (IdAward)
) ;

-- Table: AwardReceived
CREATE TABLE AwardReceived (
    IdAwardReceived integer  NOT NULL,
    Award_IdAward integer  NOT NULL,
    Movie_IdMovie integer  NOT NULL,
    "Date" date  NOT NULL,
    CONSTRAINT AwardReceived_pk PRIMARY KEY (IdAwardReceived)
) ;

-- Table: Cashier
CREATE TABLE Cashier (
    IdCashier integer  NOT NULL,
    FirstName char(50)  NOT NULL,
    LastName char(50)  NOT NULL,
    CashierNumber integer  NOT NULL,
    salary integer NOT NULL,
    CONSTRAINT Cashier_pk PRIMARY KEY (IdCashier)
) ;


-- Table: Customer
CREATE TABLE Customer (
    IdCustomer integer  NOT NULL,
    FirstName char(50)  NOT NULL,
    LastName char(50)  NOT NULL,
    CrediCardNumber char(10)  NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (IdCustomer)
) ;

-- Table: Director
CREATE TABLE Director (
    IdDirector integer  NOT NULL,
    FirstName char(50)  NOT NULL,
    LastName char(50)  NOT NULL,
    DateOfBirth date  NOT NULL,
    CONSTRAINT Director_pk PRIMARY KEY (IdDirector)
) ;

-- Table: Language
CREATE TABLE Language (
    IdLanguage integer  NOT NULL,
    Name char(50)  NOT NULL,
    CONSTRAINT Language_pk PRIMARY KEY (IdLanguage)
) ;

-- Table: Movie
CREATE TABLE Movie (
    IdMovie integer  NOT NULL,
    Title char(50)  NOT NULL,
    Director_IdDirector integer  NOT NULL,
    Language_IdLanguage integer  NOT NULL,
    MovieCompany_IdMovieCompany integer  NOT NULL,
    CONSTRAINT Movie_pk PRIMARY KEY (IdMovie)
) ;

-- Table: MovieCompany
CREATE TABLE MovieCompany (
    IdMovieCompany integer  NOT NULL,
    Name char(50)  NOT NULL,
    Adress char(50)  NOT NULL,
    DayOfEstablishing date  NOT NULL,
    PhoneNumber char(30)  NOT NULL,
    CONSTRAINT MovieCompany_pk PRIMARY KEY (IdMovieCompany)
) ;

-- Table: MovieInAStore
CREATE TABLE MovieInAStore (
    IdMovieInAStore integer  NOT NULL,
    MovieStore_idMovieSotre integer  NOT NULL,
    Movie_IdMovie integer  NOT NULL,
    Price integer  NOT NULL,
    CONSTRAINT MovieInAStore_pk PRIMARY KEY (IdMovieInAStore)
) ;

-- Table: MovieIssuance
CREATE TABLE MovieIssuance (
    IdMovieIssuance integer  NOT NULL,
    BuyingDate date  NOT NULL,
    Cashier_IdCashier integer  NOT NULL,
    Customer_IdCustomer integer  NOT NULL,
    MovieInAStore_IdMovieInAStore integer  NOT NULL,
    CONSTRAINT MovieIssuance_pk PRIMARY KEY (IdMovieIssuance)
) ;

-- Table: MovieStore
CREATE TABLE MovieStore (
    idMovieSotre integer  NOT NULL,
    Name char(50)  NOT NULL,
    Adress char(50)  NOT NULL,
    CONSTRAINT MovieStore_pk PRIMARY KEY (idMovieSotre)
) ;

-- foreign keys
-- Reference: AwardReceived_Award (table: AwardReceived)
ALTER TABLE AwardReceived ADD CONSTRAINT AwardReceived_Award
    FOREIGN KEY (Award_IdAward)
    REFERENCES Award (IdAward);

-- Reference: AwardReceived_Movie (table: AwardReceived)
ALTER TABLE AwardReceived ADD CONSTRAINT AwardReceived_Movie
    FOREIGN KEY (Movie_IdMovie)
    REFERENCES Movie (IdMovie);

-- Reference: MovieInAStore_Movie (table: MovieInAStore)
ALTER TABLE MovieInAStore ADD CONSTRAINT MovieInAStore_Movie
    FOREIGN KEY (Movie_IdMovie)
    REFERENCES Movie (IdMovie);

-- Reference: MovieInAStore_MovieStore (table: MovieInAStore)
ALTER TABLE MovieInAStore ADD CONSTRAINT MovieInAStore_MovieStore
    FOREIGN KEY (MovieStore_idMovieSotre)
    REFERENCES MovieStore (idMovieSotre);

-- Reference: MovieIssuance_Cashier (table: MovieIssuance)
ALTER TABLE MovieIssuance ADD CONSTRAINT MovieIssuance_Cashier
    FOREIGN KEY (Cashier_IdCashier)
    REFERENCES Cashier (IdCashier);

-- Reference: MovieIssuance_Customer (table: MovieIssuance)
ALTER TABLE MovieIssuance ADD CONSTRAINT MovieIssuance_Customer
    FOREIGN KEY (Customer_IdCustomer)
    REFERENCES Customer (IdCustomer);

-- Reference: MovieIssuance_MovieInAStore (table: MovieIssuance)
ALTER TABLE MovieIssuance ADD CONSTRAINT MovieIssuance_MovieInAStore
    FOREIGN KEY (MovieInAStore_IdMovieInAStore)
    REFERENCES MovieInAStore (IdMovieInAStore);

-- Reference: Movie_Director (table: Movie)
ALTER TABLE Movie ADD CONSTRAINT Movie_Director
    FOREIGN KEY (Director_IdDirector)
    REFERENCES Director (IdDirector);

-- Reference: Movie_Language (table: Movie)
ALTER TABLE Movie ADD CONSTRAINT Movie_Language
    FOREIGN KEY (Language_IdLanguage)
    REFERENCES Language (IdLanguage);

-- Reference: Movie_MovieCompany (table: Movie)
ALTER TABLE Movie ADD CONSTRAINT Movie_MovieCompany
    FOREIGN KEY (MovieCompany_IdMovieCompany)
    REFERENCES MovieCompany (IdMovieCompany);
    
--end of file

--CASHIER
INSERT INTO Cashier(idcashier, firstname,lastname, cashiernumber,salary)
VALUES (1,'Jack', 'Anderson', '10',1800);
INSERT INTO Cashier(idcashier, firstname,lastname, cashiernumber,salary)
VALUES (2,'James', 'Bailey', '20', 2500);
INSERT INTO Cashier(idcashier, firstname,lastname, cashiernumber,salary)
VALUES (3,'William', 'Baker', '30',2600);
INSERT INTO Cashier(idcashier, firstname,lastname, cashiernumber, salary)
VALUES (4,'Bob', 'Aden', '40', 1950);


--AWARD
INSERT INTO Award (idaward, name)
VALUES (1, 'Oscar');
INSERT INTO Award (idaward, name)
VALUES (2, 'Golden Globes');
INSERT INTO Award (idaward, name)
VALUES (3, 'Cesar Award');
INSERT INTO Award (idaward, name)
VALUES (4, 'Critics Choise Mowie Awards');
--CUSTOMER
INSERT INTO Customer( idcustomer, firstname, lastname, credicardnumber)
VALUES (1, 'Jacob','Cooper', 6778567);
INSERT INTO Customer( idcustomer, firstname, lastname, credicardnumber)
VALUES (2, 'Michael','Fisher', 677873858);
INSERT INTO Customer( idcustomer, firstname, lastname, credicardnumber)
VALUES (3, 'Mason','Fletcherr', 67782975);
INSERT INTO Customer( idcustomer, firstname, lastname, credicardnumber)
VALUES (4, 'Noah ','Jackson', 67789990);

--LANGUAGE
INSERT INTO Language (idlanguage, name)
VALUES (1,'English');
INSERT INTO Language (idlanguage, name)
VALUES (2,'Russian');
INSERT INTO Language (idlanguage, name)
VALUES (3,'Italian');
INSERT INTO Language (idlanguage, name)
VALUES (4,'Spanish');
INSERT INTO Language (idlanguage, name)
VALUES (5,'French');

--Movie Store
Insert Into Moviestore (idmoviesotre,name,adress)
Values (1,' Best Movies', '273 Linden Avenue, Orlando');
Insert Into Moviestore (idmoviesotre,name,adress)
Values (2,'Home cinema', '2535 Duncan Avenue, NY');


--DIRECTOR
Insert Into Director(iddirector, firstname,lastname,dateofbirth)
Values (1, 'Peter', 'Farrelly','1956-12-17');
Insert Into Director(iddirector, firstname,lastname,dateofbirth)
Values (2, 'David', 'Fincher','1962-08-28'); 
Insert Into Director(iddirector, firstname,lastname,dateofbirth)
Values (3, 'Valerie', 'Donzelli','1973-03-02'); 

--MOVIE COMPANY
Insert Into Moviecompany(idmoviecompany, name ,adress, dayofestablishing,phonenumber)
Values(1, 'Participant Media','331 Foothill Road Third FLoor Beverly Hills','2004-01-15' ,'(310)550-5100');
Insert Into Moviecompany(idmoviecompany, name ,adress, dayofestablishing,phonenumber)
Values(2, 'Columbia Pictures','10202 West Washington Bouevard','1918-06-19' ,'1-310-244-7737');
Insert Into Moviecompany(idmoviecompany, name ,adress, dayofestablishing,phonenumber)
Values(3, 'Wild Bunch','419 Remuera Road','2002-07-13','239-495-2100');

--MOVIE
Insert Into Movie ( idmovie,title, director_iddirector, language_idlanguage,moviecompany_idmoviecompany)
Values( 1, 'Green Book', 1,  1, 1);
Insert Into Movie ( idmovie,title, director_iddirector, language_idlanguage,moviecompany_idmoviecompany)
Values( 2, 'Social Network', 2,  1, 2);
Insert Into Movie ( idmovie,title, director_iddirector, language_idlanguage,moviecompany_idmoviecompany)
Values( 3, 'Declaration of War', 3,  5, 3);



--AWARD RECEIVED
Insert Into Awardreceived (idawardreceived, award_idaward, movie_idmovie,"Date")
Values(1,1,1,'2018-10-05');
Insert Into Awardreceived (idawardreceived, award_idaward, movie_idmovie,"Date")
Values(2,2,1, '2018-03-20');
Insert Into Awardreceived (idawardreceived, award_idaward, movie_idmovie, "Date")
Values(3,1,2,  '2011-03-15');
Insert Into Awardreceived (idawardreceived, award_idaward, movie_idmovie, "Date")
Values(4,2,2,  '2011-08-08');
Insert Into Awardreceived (idawardreceived, award_idaward, movie_idmovie, "Date")
Values(5,3,2,  '2011-07-10');
Insert Into Awardreceived (idawardreceived, award_idaward, movie_idmovie, "Date")
Values(6,4,2,  '2011-06-24');
Insert Into Awardreceived (idawardreceived, award_idaward, movie_idmovie, "Date")
Values(7,3,3, '2012-10-08');

--Movie in a store
Insert Into Movieinastore(idmovieinastore, moviestore_idmoviesotre,movie_idmovie,price)
Values(1,1,1,'50');
Insert Into Movieinastore(idmovieinastore, moviestore_idmoviesotre,movie_idmovie,price)
Values(2,2,1,'60');
Insert Into Movieinastore(idmovieinastore, moviestore_idmoviesotre,movie_idmovie,price)
Values(3,1,2,'50' );
Insert Into Movieinastore(idmovieinastore, moviestore_idmoviesotre,movie_idmovie,price)
Values(4,2,2,'55' );
Insert Into Movieinastore(idmovieinastore, moviestore_idmoviesotre,movie_idmovie,price)
Values(5,1,3,'55');
Insert Into Movieinastore(idmovieinastore, moviestore_idmoviesotre,movie_idmovie,price)
Values(6,2,3,'60' );



--Movie issuance
Insert Into Movieissuance(idmovieissuance, buyingdate, cashier_idcashier, customer_idcustomer, movieinastore_idmovieinastore)
Values (1, '2021-04-15', 1, 1, 1);
Insert Into Movieissuance(idmovieissuance, buyingdate, cashier_idcashier, customer_idcustomer, movieinastore_idmovieinastore)
Values (2, '2021-04-15',  1, 1, 3);
Insert Into Movieissuance(idmovieissuance, buyingdate, cashier_idcashier, customer_idcustomer, movieinastore_idmovieinastore)
Values (3, '2021-04-15',  1, 1, 5);
Insert Into Movieissuance(idmovieissuance, buyingdate, cashier_idcashier, customer_idcustomer, movieinastore_idmovieinastore)
Values (4, '2021-04-15',  1, 1, 5);
Insert Into Movieissuance(idmovieissuance, buyingdate, cashier_idcashier, customer_idcustomer, movieinastore_idmovieinastore)
Values (5, '2021-03-24',  2, 2, 2);
Insert Into Movieissuance(idmovieissuance, buyingdate, cashier_idcashier, customer_idcustomer, movieinastore_idmovieinastore)
Values (6, '2021-03-18',  2, 3, 4);
Insert Into Movieissuance(idmovieissuance, buyingdate, cashier_idcashier, customer_idcustomer, movieinastore_idmovieinastore)
Values (7, '2021-03-18',  2, 3, 6);
Insert Into Movieissuance(idmovieissuance, buyingdate, cashier_idcashier, customer_idcustomer, movieinastore_idmovieinastore)
Values (8, '2021-03-10',  3, 4, 1);
Insert Into Movieissuance(idmovieissuance, buyingdate, cashier_idcashier, customer_idcustomer, movieinastore_idmovieinastore)
Values (9, '2021-03-10',  3, 4, 5);
Insert Into Movieissuance(idmovieissuance, buyingdate, cashier_idcashier, customer_idcustomer, movieinastore_idmovieinastore)
Values (10, '2021-01-05',  3, 3, 3);
Insert Into Movieissuance(idmovieissuance, buyingdate, cashier_idcashier, customer_idcustomer, movieinastore_idmovieinastore)
Values (11, '2021-01-07',  3, 3, 5);
Insert Into Movieissuance(idmovieissuance, buyingdate, cashier_idcashier, customer_idcustomer, movieinastore_idmovieinastore)
Values (12, '2021-05-30',  2, 2, 6);

select* from cashier
--Trigger1--
--trigger does not allow to insert values that are negative or higher than 99999
GO
CREATE OR ALTER TRIGGER sal_check
ON cashier FOR INSERT 
AS
BEGIN
DECLARE @Sal INT;
SELECT @Sal = salary FROM INSERTED;
IF @Sal < 0 or @Sal>99999
	BEGIN
		ROLLBACK;
	RAISERROR (' Salary can not be negative or salary is too big ',1,2);
	END;
END;
-----TEST-------
INSERT INTO Cashier(idcashier,firstname,lastname,CashierNumber,salary) 
VALUES (9,'A','B', 9, -50);



--Trigger2--
CREATE TABLE CustomerUpdate( idCustomer int NOT NULL, updStatus nvarchar(30));
-------trigger stores updates info in the table
GO
CREATE OR ALTER TRIGGER customer_updates ON Customer 
AFTER UPDATE
AS 
BEGIN
DECLARE @idC INT, @S NVARCHAR(30);
SELECT @idC=idcustomer FROM Customer 
IF UPDATE(idcustomer)
	SET @S='ID was updated'
IF UPDATE(firstname)
	SET @S='Firstname was updated'
IF UPDATE(lastname)
	SET @S='Lastname was updated'
IF UPDATE(credicardnumber)
	SET @S='Credit card number was updated'
INSERT INTO CustomerUpdate VALUES (@idC,@S)
END;
---Test---		
UPDATE customer SET FirstName='ABC' where idcustomer=1
select * from CustomerUpdate
select * from customer


--procedure1---
--procedure finds director. language and company for given movie 
GO
CREATE OR ALTER PROCEDURE show_movie
@title CHAR(30)
AS SELECT m.title,d.firstname, d.lastname,l.name AS Language, mo.name AS Company FROM movie m 
			JOIN director d ON m.Director_IdDirector=d.IdDirector
			JOIN MovieCompany mo ON m.MovieCompany_IdMovieCompany=mo.IdMovieCompany
			JOIN Language l ON m.Language_IdLanguage=l.IdLanguage
			WHERE title=@title;
----TEST----
EXECUTE show_movie 'Green Book';



---procedure2----
--if cashier salary is lower than parameter X =increase by 15%
--if cashier salary is higher than parameter Y =increase  by 5%
GO
CREATE OR ALTER PROCEDURE sal_change
@x_value NUMERIC(7,2),
@y_value NUMERIC(7,2)
AS
DECLARE
cur CURSOR FOR SELECT salary, idcashier
FROM cashier 
WHERE salary<@x_value OR salary>@y_value;
DECLARE
@Sal NUMERIC(7,2),
@Id integer;
BEGIN 
	OPEN cur 
	FETCH NEXT FROM  cur INTO @Sal, @Id
	WHILE @@FETCH_STATUS=0
	BEGIN 
		IF @Sal <@x_value 
		SET @Sal= @Sal * 1.15;
		ELSE SET @Sal=@Sal * 1.05;
		UPDATE cashier SET salary= @Sal WHERE  idcashier=@Id ;
		PRINT 'Salary of cashier with id '+ cast(@Id AS VARCHAR) +' was changed ';
		FETCH NEXT FROM cur INTO @Sal, @Id;
	END;
	CLOSE cur;
	DEALLOCATE cur;
END;
--TEST--
GO
EXEC sal_change @x_value=1950, @y_value=2500

