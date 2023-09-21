	
	SELECT ord.ShipCity, sum(ord.Freight) AS TOTAL_FR
	FROM orders as ord
	WHERE ord.ShipVia = 3
	GROUP BY ord.ShipCity
	HAVING sum(ord.Freight) > 1000
	ORDER BY sum(ord.Freight) DESC

	--select * from orders