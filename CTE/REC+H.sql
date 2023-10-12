select * from Employees

create table Employees_ (
id int,
name varchar(255),
manager_id int,
title varchar(255)
)

insert into  Employees_(id,name,manager_id,title) values(1 ,'michal',null,'ceo')
insert into  Employees_(id,name,manager_id,title) values( 7,'lior',1,'cfo')
insert into  Employees_(id,name,manager_id,title) values( 3,'gali',7,'hrmanager')
insert into  Employees_(id,name,manager_id,title) values( 4,'yodi',3,'analyst')
insert into  Employees_(id,name,manager_id,title) values( 5,'tosi',3,'analyst')
insert into  Employees_(id,name,manager_id,title) values(6,'adir',3 ,'analyst')
insert into  Employees_(id,name,manager_id,title) values(2,'yanir' ,3,'analyst')

select * from Employees_

;
wITH cte_hierarchy_ as (

	SELECT id,manager_id,name,title ,1 as level_
	FROM  Employees_
	WHERE name = 'lior'
	UNION all
	SELECT e.id,e.manager_id,e.name,e.title , hie.level_ + 1 as level_
	FROM cte_hierarchy_ as hie
	join  Employees_ e on hie.id = e.manager_id
	)
	select * from cte_hierarchy_