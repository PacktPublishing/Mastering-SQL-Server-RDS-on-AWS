--create table
CREATE TABLE Customers (
    ID int,
    CustomerName varchar(255),
    ContactName varchar(255),
    [Address] varchar(255),
    City varchar(255),
	PostalCode varchar(50),
	Country  varchar(50)
);

--insert record
INSERT INTO Customers (ID,CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (1,'Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

--create table
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
--insert record
INSERT INTO Persons
VALUES (1, 'Erichsen','Brown', 'Skagen 21', 'Norway');