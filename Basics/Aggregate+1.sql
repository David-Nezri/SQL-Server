		--An aggregate function performs a calculation on a set of values, and returns
		--a single value. Except for COUNT(*), aggregate functions ignore null values. 
		--Aggregate functions are often used with the GROUP BY clause of the SELECT statement.
		SELECT * FROM [Order Details]
		ORDER BY UnitPrice DESC
		
		SELECT MAX(ORD.UnitPrice) MAX_UNITPRICE -- WE CAN USE IT WITH STRING VALUES
		FROM [Order Details] ORD

		SELECT * FROM [Order Details]
		ORDER BY UnitPrice 

		SELECT MIN(ORD.UnitPrice) -- WE CAN USE IT WITH STRING VALUES
		FROM [Order Details] ORD

		SELECT MIN(SHIPNAME) -- WE CAN USE IT WITH STRING VALUES
		FROM ORDERS

		SELECT MAX(SHIPNAME) -- WE CAN USE IT WITH STRING VALUES
		FROM ORDERS


		SELECT AVG(ORD.UnitPrice)
		FROM [Order Details] ORD

		SELECT SUM(ORD.UnitPrice)
		FROM [Order Details] ORD
	
		SELECT STDEV(ORD.UnitPrice)
		FROM [Order Details] ORD

		SELECT VAR(ORD.UnitPrice)
		FROM [Order Details] ORD

			SELECT COUNT(ORD.UnitPrice)
		    FROM [Order Details] ORD

						SELECT COUNT(ORD.Discount)
		    FROM [Order Details] ORD

			SELECT COUNT(*) 
			FROM [Order Details]


			SELECT * FROM ORDERS

			SELECT COUNT(O.ShipRegion)
		    FROM ORDERS O

			SELECT COUNT(*) 
			FROM ORDERS 

					SELECT * FROM ORDERS
	SELECT avg(O.ShipRegion)
		    FROM ORDERS O


