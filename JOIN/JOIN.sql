--JOIN will return only related rows between tables
SELECT p.ProductName, c.CategoryName
FROM Products p
JOIN Categories c
ON p.CategoryID = c.CategoryID

----LEFT JOIN will return all rows from the left table (after FROM) and only the related
--columns from the right table (after the LEFT JOIN)
SELECT c.CustomerID, o.OrderID
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID

--RIGHT JOIN will return all rows from the right table (after the right join) and only the
--related columns from the left table (after the FROM)
SELECT c.CustomerID, o.OrderID
FROM Customers c
RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID

---FULL JOIN will return all rows from both table. If value in one table doesn’t appear in the
---other we’ll get NULL
SELECT c.CustomerID, o.OrderID
FROM Customers c
FULL JOIN Orders o
ON c.CustomerID = o.CustomerID

--SELF JOIN combines different information from the same table after joining the table to
--itself
SELECT w.FirstName + ' ' + w.LastName AS 'Worker',
m.FirstName + ' ' + m.LastName AS 'Manager'
FROM Employees w
JOIN Employees m
ON w.ReportsTo = m.EmployeeID

---CROSS JOIN produces a result set that is the number of rows in the first table multiplied by
---the number of rows in the second table.
SELECT p.ProductName, c.CategoryName
FROM Products p
CROSS JOIN Categories c
--WHERE p.CategoryID = c.CategoryID

--UNION designed to unify different values from two or more queries.
--If the value is similar in both tables it will be united to one value
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City

--UNION ALL designed to unify different values from two or more queries.
--If the value is similar in both tables it will be duplicated value
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City

--EXCEPT returns unique rows in the first query that doesn’t appears in the second query
SELECT CustomerID
FROM Customers
EXCEPT
SELECT CustomerID
FROM Orders

--INTERSECT returns unique rows in the first query that does appears in the second query
SELECT CustomerID
FROM Customers
INTERSECT
SELECT CustomerID
FROM Orders