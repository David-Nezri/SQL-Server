	
	WITH SALES  AS(
	SELECT  
	O.ShipVia,AVG(O.Freight) AS AVG_FR
	FROM ORDERS O
	GROUP BY O.ShipVia
	)
	SELECT * FROM SALES
    ORDER BY AVG_FR DESC

		;
	WITH SALES1  AS(
	SELECT  
	O.ShipVia,AVG(O.Freight) AS AVG_FR
	FROM ORDERS O
	GROUP BY O.ShipVia
	),
	SALES2
	AS (
	SELECT * FROM SALES1 WHERE AVG_FR <80 --BETWEEN 1 AND 70
	)
	SELECT * FROM SALES2
