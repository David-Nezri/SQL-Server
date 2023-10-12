CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address_ varchar(255),
    City varchar(255)
)
USE testDB

select * from persons

CREATE DATABASE testDB








INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);


INSERT INTO Customers (Customerid,companyname,ContactName ,City, PostalCode)
VALUES ('3323','Google','Yaniv','Paris', '4006')

select * from customers



CRUD

Create Read(select) Update Delete


UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 'ALFKI';

UPDATE Customers
SET COMPANYNAME = 'GOOGLE'
WHERE CustomerID = 'ALFKI';

select * from customers 













;
DELETE FROM [dbo].[Suppliers]  where [Phone] ='(171) 555-2222'
;
DELETE FROM Customers;

DROP TABLE Shippers;

TRUNCATE TABLE table_name;


select  * from [dbo].[Suppliers]







ALTER TABLE Customers
DROP COLUMN Phone;

ALTER TABLE Customers
ADD Email varchar(255);

select * from Customers









