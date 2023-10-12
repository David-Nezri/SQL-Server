--OVER()
select Discount,UnitPrice,
 SUM(UnitPrice) OVER() SumRunningUnitPrice
from [Order Details]

--ORDER BY
SELECT Discount,UnitPrice,
 SUM(UnitPrice) OVER(ORDER BY UnitPrice) AS SumRunningUnitPrice
FROM [Order Details]

--PARTITION BY
SELECT Discount,UnitPrice,
 SUM(UnitPrice) OVER(PARTITION BY UnitPrice ORDER BY UnitPrice) AS
SumRunningUnitPrice
FROM [Order Details] 


--Ranking

SELECT 
Discount,
UnitPrice,
RANK() OVER() AS RANK_
FROM [Order Details]

 SELECT 
Discount,
UnitPrice,
 RANK() OVER(order by unitprice desc) AS RANK_
 FROM [Order Details]
 ;
  SELECT 
  Discount,
  UnitPrice,
  Row_number() OVER(order by discount) AS Row_number_
  FROM [Order Details]
	 ;
  SELECT 
  Discount,
  UnitPrice,
  DENSE_RANK() OVER(order by unitprice) AS dense_RANK_
  FROM [Order Details]


  SELECT 
   C.CompanyName,
   C.City,
   cume_dist() OVER(PARTITION BY CITY ORDER BY  COMPANYNAME DESC) cume_dist
   FROM Customers C


   SELECT 
   C.CompanyName,
   C.City,
   cume_dist() OVER( ORDER BY  C.City) cume_dist
   FROM Customers C


  SELECT 
    C.CompanyName,
   C.City,
  percent_rank() OVER(PARTITION BY CITY ORDER BY COMPANYNAME) percent_rank
   FROM Customers C

   --row number 2- 1 /  3total rows - 1
   1/2


   
  SELECT 
   *,
   FIRST_VALUE(UNITPRICE) OVER(PARTITION BY SUPPLIERID ORDER BY UNITPRICE DESC) FIRST_VALUE
  FROM Products P
  ;

  SELECT P.SupplierID,MIN(P.UnitPrice)
  FROM Products P
  GROUP BY P.SupplierID

    SELECT 
   *,
   FIRST_VALUE(unitsinstock) OVER(PARTITION BY SUPPLIERID ORDER BY unitsinstock) FIRST_VALUE
  FROM Products P
  ;



   SELECT 
   *,
LAST_VALUE(UNITPRICE) OVER( PARTITION BY SUPPLIERID ORDER BY UNITPRICE 
                          rows between unbounded preceding and unbounded following) AS LAST_VALUE
  FROM Products P
  
   SELECT 
   *,
LAST_VALUE(UNITPRICE) OVER( PARTITION BY SUPPLIERID ORDER BY UNITPRICE)
                         AS LAST_VALUE
  FROM Products P





  SELECT 
	   P.ProductName, P.UnitPrice,
	   LEAD(P.PRODUCTNAME) OVER(ORDER BY P.UNITPRICE) AS LEAD_
  FROM Products P

  SELECT 
	   P.ProductName, P.UnitPrice,
	   LEAD(P.PRODUCTNAME,3) OVER(ORDER BY P.UNITPRICE) AS LEAD_
  FROM Products P

  
  SELECT 
	   P.ProductName, P.UnitPrice,P.SupplierID,
	   LEAD(P.PRODUCTNAME) OVER(PARTITION BY P.SupplierID ORDER BY P.UNITPRICE) AS LEAD_
  FROM Products P

    SELECT 
	   P.ProductName, P.UnitPrice,P.SupplierID,
	   LEAD(P.PRODUCTNAME,1) OVER(PARTITION BY P.SupplierID ORDER BY P.UNITPRICE) AS LEAD_
  FROM Products P

     SELECT 
	   P.ProductName, P.UnitPrice,P.SupplierID,
	   LEAD(P.PRODUCTNAME,3) OVER(PARTITION BY P.SupplierID ORDER BY P.UNITPRICE) AS LEAD_
  FROM Products P

   SELECT 
	   P.ProductName, P.UnitPrice,P.SupplierID,
	   LEAD(P.PRODUCTNAME,2,'NO') OVER(PARTITION BY P.SupplierID ORDER BY P.UNITPRICE) AS LEAD_
  FROM Products P

     SELECT 
	   P.ProductName, P.UnitPrice,P.SupplierID,
	   LAG(P.PRODUCTNAME,2,'NOPE') OVER(PARTITION BY P.SupplierID ORDER BY P.UNITPRICE) AS LEAD_
  FROM Products P




  -- (odd)
  SELECT * from Employees
   SELECT
	  E.BirthDate,
	   NTILE(2) OVER(ORDER BY E.BirthDate) AS NTILE_
  FROM Employees E
 -- (even)
     SELECT 
	  R.RegionID,
	   NTILE(2) OVER(ORDER BY R.RegionID) AS NTILE_
  FROM Region R
  --(row_num)
      SELECT 
	  E.BirthDate,
	   NTILE(11) OVER(ORDER BY E.BirthDate) AS NTILE_
  FROM Employees E

       SELECT 
	  E.BirthDate,e.TitleOfCourtesy,
	   NTILE(2) OVER(partition by e.TitleOfCourtesy ORDER BY E.BirthDate desc) AS NTILE_
  FROM Employees E

  select distinct e.TitleOfCourtesy from Employees e







		SELECT Amount_of_Products, Ntile4, min(revenue) as min_revenue, avg(revenue) as
		avg_revenue, max(revenue) as max_revenue

			FROM  (
			SELECT Amount_of_Products, revenue, 
			NTILE(4)  OVER(PARTITION BY Amount_of_Products ORDER BY revenue)  AS Ntile4

				FROM 
				(
				select OrderID, count(ProductID) as Amount_of_Products
				,sum(UnitPrice) as revenue
				from [Order Details]
				group by OrderID
				) aa
						) aa
						group by Amount_of_Products, Ntile4


select * from [Order Details]














