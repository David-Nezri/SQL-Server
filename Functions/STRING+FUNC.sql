	select shipcity,left(ord.ShipCity,2) from orders ord
	select shipcity,right(ord.ShipCity,2) from orders ord
	select shipcity,len(shipcity) from orders
	select shipcity,upper(shipcity) from orders
	select shipcity,lower(shipcity) from orders
	select TitleOfCourtesy, replace(TitleOfCourtesy,'.','-') from Employees
	select concat(lastname,firstname) from Employees
	select shipcity,CHARINDEX('e',shipcity) from orders
	select reverse(shipcity) from orders
	select shipcity, SUBSTRING(shipcity,2,4) from orders
	select TitleOfCourtesy, replace(TitleOfCourtesy,'.','-') from Employees
	select replace('defdefdef','def','abc') --results in abcabcabc
    ---We cannot replace a specific occurrence of “def” using REPLACE.
    select stuff('defdefdef',4, 3,'abc') --results in defabcdef
    --where 4 is the character to begin replace from and 3 is the number of characters to replace.

	SELECT shipcity,PATINDEX('%a%', shipcity) from orders

	