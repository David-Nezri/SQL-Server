--ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW

			--means that the window consists of the first row of the
			--partition and all the rows up to the current row ( end pint is current row)
--------------------------------------------------------------------------------
--ROWS BETWEEN UNBOUNDED PRECEDING AND  UNBOUNDED FOLLOWING 

			--UNBOUNDED PRECEDING means that the starting boundary is the first row 
			--in the partition, and UNBOUNDED FOLLOWING
			--means that the ending boundary is the last row in the partition
----------------------------------------------------------------------------------			--------
--(FOLLOWING) הבא 
---(PRECEDING) קודם 
-- (UNBOUNDED)בלי גבול 
--(CURRENT ROW)שורה נוכחית
----------------------------------------------------------------------------------





--PRECEDING
ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING
ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
ROWS BETWEEN 2 PRECEDING AND 1 PRECEDING

--FOLLOWING
ROWS BETWEEN 1 FOLLOWING AND 1 FOLLOWING
ROWS BETWEEN 1 FOLLOWING AND 1 UNBOUNDED FOLLOWING
ROWS BETWEEN 1 FOLLOWING AND 2 FOLLOWING
ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING

create table index_(
index_ int
)

Insert into index_( index_)
values(1)
Insert into index_( index_)
values(2)
Insert into index_( index_)
values(3)
Insert into index_( index_)
values(4)
Insert into index_( index_)
values(5)
Insert into index_( index_)
values(6)
Insert into index_( index_)
values(7)
Insert into index_( index_)
values(8)
Insert into index_( index_)
values(9)
Insert into index_( index_)
values(10)


select * from index_


 SELECT 
  SUPPLIERID,UNITPRICE,
LAST_VALUE(UNITPRICE) OVER( PARTITION BY SUPPLIERID ORDER BY UNITPRICE 
                          rows between unbounded preceding and unbounded following) AS LAST_VALUE
  FROM Products P
  
   SELECT 
    SUPPLIERID,UNITPRICE,
LAST_VALUE(UNITPRICE) OVER( PARTITION BY SUPPLIERID ORDER BY UNITPRICE)
                         AS LAST_VALUE
  FROM Products P


   SELECT 
  SUPPLIERID,UNITPRICE,
LAST_VALUE(UNITPRICE) OVER(  ORDER BY UNITPRICE 
                          rows between unbounded preceding and unbounded following) AS LAST_VALUE
  FROM Products P
  