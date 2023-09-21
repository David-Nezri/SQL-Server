	
	select orderdate, cast(orderdate as date) from orders
	select cast(employeeid as varchar) from orders
	select employeeid  from orders
	select cast(orderdate as int) from orders
	select cast(Freight as int) from orders
		select Freight  from orders
	SELECT CONVERT(varchar,orderdate,103) from orders
	select orderdate from orders

	--bigint, int, smallint, tinyint, bit, decimal, numeric, money, smallmoney, 
	--float, real, datetime, smalldatetime, char, varchar,
	--text, nchar, nvarchar, ntext, binary, varbinary, or image