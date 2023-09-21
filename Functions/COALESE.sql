
select * from Employees



select 
region,isnull(region,'No Reporting')
from Employees

select 
region,coalesce(region,fdgfd,'No Reporting')
from Employees


select  
reportsTo,isnull(reportsTo ,'No Reporting')
from 
Employees

select  
reportsTo,coalesce(reportsTo ,'No Reporting')
from 
Employees

select  
reportsTo,isnull(reportsTo ,0)
from 
Employees

select 
reportsTo,CAST(isnull(reportsTo ,'No Reporting') AS VARCHAR)
from Employees

select 
reportsTo ,isnull(CAST(reportsTo  AS VARCHAR),'No Reporting')
from Employees



select * from Employees
region,cast(isnull(reportsTo,'No Reporting') as varchar)
from Employees
select * from Employees


o.region,shipregion,COALESCE(REGION,'No Reporting')
from orders o

create table details (
email varchar(255),
facebook varchar(255)
)

create table details1 (
email varchar(255),
facebook varchar(255)
)

insert into details1 (email,facebook) values('bla87@gmail.com', 'myface')
insert into details1 (email,facebook) values('bla87@gmail.com', 'myface')
insert into details1 (email) values('bla87@gmail.com')
insert into details1 (facebook) values('dfacebook')
insert into details1 (facebook) values(null)

select * from details1

select 
*,
coalesce(email,facebook,'no') as col
from details1
