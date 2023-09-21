SELECT TOP 3 * FROM Customers
SELECT TOP 3 CITY FROM Customers
SELECT DISTINCT COUNTRY FROM Customers
SELECT * FROM CUSTOMERS
SELECT TOP(33) PERCENT * FROM CUSTOMERS

-----AS
SELECT SHIPVIA FROM ORDERS
SELECT SHIPVIA AS Shiproot FROM ORDERS
SELECT SHIPVIA  Shiproot FROM ORDERS
SELECT SHIPVIA  "Ship root" FROM ORDERS
SELECT SHIPVIA*6  revenue FROM ORDERS
---operators
select freight from orders
select freight, freight*5 from orders
select freight, freight/5 from orders
select freight, freight-5 from orders
select freight, freight+5 from orders

select 10%1
select 10%2
select 10%3
select 10%4
select 10%5
select 10%6
select 10%7

select 5*2/5
select (5+2)*5

--calc change the col header
--calc does not modifty the data

/*
= > < >= <= <> !=
*/

---where

select e.FirstName,e.LastName from Employees e
select e.FirstName,e.LastName from Employees e
where EmployeeID = 4

select p.ProductName,p.UnitPrice from Products p
where UnitPrice > 5

select p.ProductName,p.UnitPrice from Products p
where UnitPrice > 5

select p.ProductName,p.UnitPrice from Products p
where UnitPrice <5

select p.ProductName,p.UnitPrice from Products p
where UnitPrice <>18

select p.ProductName,p.UnitPrice from Products p
where UnitPrice =18

---between

select ProductName ,UnitPrice
from Products 
where UnitPrice between 70 and 100
-- 70 AND 100 ARE INCLUDED
select ProductName ,UnitPrice
from Products 
where UnitPrice NOT between 70 and 100 --70 AND 100 ARE NOT INCLUDED 
select FirstName FROM Employees
select FirstName FROM Employees
WHERE FirstName BETWEEN 'A' AND 'K'
select FirstName FROM Employees
WHERE FirstName NOT BETWEEN 'A' AND 'K'
SELECT * FROM ORDERS
WHERE RequiredDate BETWEEN '1996-08-30' AND '1996-09-01' --1 result
SELECT * FROM ORDERS
WHERE RequiredDate not BETWEEN '1996-08-30' AND '1996-09-01' --829
SELECT * FROM ORDERS
WHERE RequiredDate BETWEEN '1996-09-01' AND '1996-08-01' -- CANT WORK
SELECT * FROM ORDERS
WHERE RequiredDate BETWEEN '1996-08-01' AND '1996-09-01' -- WORKin


--in

- The IN Operator is used to test whether a value is “in” a specified list.
--The column data type must match the data type of the values within the round brackets.
--WHERE column_name IN (value, value, value ..)
--IN Operator with Numeric Values
select * from Products
select * from Products p
where SupplierID NOT IN(1,7)
--IN Operator with Character Values
--string values are not case-sensitive by default.
select * from Products
where ProductName IN('CHAI','CHANG')
--IN Operator with Date Values
--Date values must be enclosed within single quotes (‘date value’).
--Date values are format sensitive.
SELECT * FROM ORDERS
WHERE OrderDate IN('1996-07-04'

--and or


--AND requires all conditions to be true.
--OR indicates that at least one of the conditions must be true 
--Note: the WHERE keyword appears only once.



select *
from Products 
where UnitPrice<5 or UnitPrice>90

select *
from Products 
where UnitPrice<1 or UnitPrice>90

select *
from Employees
where FirstName ='nancy' or FirstName ='janet'

select distinct FirstName
from Employees

-- not working
select *
from Employees
where FirstName ='nancy' or 'janet' ;

-- not working
select *
from Employees
where FirstName ='nancy' and FirstName ='janet'

--working - both conditions are true
select *
from Employees
where FirstName ='nancy' and city ='seattle'

--not working
select *
from Employees
where FirstName ='nancy' and city ='seattl'

--------------
--Order of Precedence
--The SQL Server AND operator takes precedence over the SQL Server OR operator 
--(just like a multiplication operation takes precedence over an addition operation).

-- works
SELECT *
FROM employees
WHERE Title = 'sales manager' OR TitleOfCourtesy = 'dr.'

-- not working --- we got also "buchanan" last name
SELECT *
FROM employees
WHERE Title = 'sales manager' OR TitleOfCourtesy = 'dr.'
AND LastName = 'fuller'

 -- this line runs first:
--TitleOfCourtesy = 'dr.'
--AND LastName = 'fuller'

-- and then   Title = 'sales manager' 
 -- that the reason we got empid number 5

--working
SELECT *
FROM employees
WHERE (Title = 'sales manager' OR TitleOfCourtesy = 'dr.')
AND LastName = 'fuller'

-- not working
SELECT *
FROM employees
WHERE (Title = 'sales manager' OR TitleOfCourtesy = 'mr.')
AND LastName = 'fuller'

   


   --like

   /*
PERCENT % Represents zero or more characters
UNDERSCORE _ Represents a single character
BRACKETS [] Represents any single character within 
the brackets [ay]
^ Represents any character not in the brackets[^] 
- Represents a range of characters [a - y ]
SELECT 
FROM 
WHERE column_name LIKE 'pattern'
*/
SELECT * FROM Suppliers
WHERE CITY LIKE 'L%'
SELECT * FROM Suppliers
WHERE CITY LIKE '%L'
SELECT * FROM Suppliers
WHERE CITY LIKE '%L%'
SELECT * FROM Suppliers
WHERE ContactTitle LIKE '_A%'
SELECT * FROM Suppliers
WHERE ContactTitle LIKE '__R%'
SELECT * FROM Suppliers
WHERE COUNTRY LIKE 'U%'
SELECT * FROM Suppliers
WHERE COUNTRY LIKE 'U%A'
SELECT * FROM Suppliers
WHERE COUNTRY LIKE '[AB]%'
SELECT * FROM Suppliers
WHERE COUNTRY LIKE '[A-B]%'
SELECT * FROM Suppliers
WHERE COUNTRY LIKE '[A-Z]%'
SELECT * FROM Suppliers
WHERE COUNTRY LIKE '[AZ]%'
SELECT * FROM Suppliers
WHERE COUNTRY LIKE '[AU]%'
SELECT * FROM Suppliers
WHERE CITY NOT LIKE 'L%'
SELECT * FROM Suppliers
WHERE CITY LIKE 'L%'