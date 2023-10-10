--SINGLE
	SELECT CategoryID, ProductName, UnitPrice
	FROM Products
	WHERE CategoryID = 

	(SELECT CategoryID
	FROM Products
	WHERE ProductName = 'Ikura')

	SELECT * FROM Products

	--MULTIPLE ROWS
	SELECT CustomerID, CompanyName
		FROM Customers
		WHERE CustomerID IN
		
		(SELECT  CustomerID
		FROM Orders
		WHERE ShipCity = 'London')
 			

--	   NESTED
		SELECT ProductName, UnitPrice
			FROM Products
			WHERE UnitPrice > 
			
			(SELECT UnitPrice
			FROM Products
			WHERE ProductID = 4)
	
			AND CategoryID = 
			
			(SELECT CategoryID
			FROM Products
			WHERE ProductName = 'Tofu')

           AND ProductName <> 'Rössle Sauerkraut'



			--Derived
		--	Present the order ID and order date with max unit price for each order
				SELECT ord.OrderID, o.OrderDate, ord.MaxUnitPrice
				FROM
				(SELECT OrderID, MAX(UnitPrice) AS MaxUnitPrice
				FROM [Order Details]
				GROUP BY OrderID) ord
				JOIN Orders o
				ON ord.OrderID = o.OrderID

			--	select * from [dbo].[Order Details]




				SELECT ord.OrderID, max(ord.UnitPrice), o.OrderDate 
				FROM [Order Details] ord
				JOIN Orders o
				ON ord.OrderID = o.OrderID
				GROUP BY ord.OrderID, o.OrderDate 


				select * from Orders o left join [Order Details] ord 
				on ord.OrderID = o.OrderID






				--correlated
				select p.ProductName ,
				(select sum(ord.Quantity) as qty from [Order Details] ord where ord.ProductID = p.productid
				)
				from products p
			








					--correlated JOIN
				select p.ProductName ,sum(ord.Quantity)
				 from [Order Details] ord
				  join Products p on ord.ProductID = p.productid
				 group by p.ProductName
				 		order by  sum(ord.Quantity) DESC
		