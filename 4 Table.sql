create table department(
id int primary key,
name varchar not null,
isActive boolean default 'true',
dep_id int
)

select * from department

insert into department(id,name,isActive,dep_id) values(1,'dep1',true,1100)
insert into department(id,name,isActive,dep_id) values(2,'dep2',true,2200)
insert into department(id,name,isActive,dep_id) values(3,'dep3',false,3300)
insert into department(id,name,isActive,dep_id) values(4,'dep4',true,4400)


create table employess(
id int primary key,
name varchar not null,
gender varchar default 0,
emp_id int,
CONSTRAINT fk_employess_department FOREIGN Key (emp_id) REFERENCES department(id)
)

select * from employess

insert into employess(id,name,gender,emp_id) values(99,'emp1','F',1)
insert into employess(id,name,gender,emp_id) values(98,'emp2','M',2)
insert into employess(id,name,gender,emp_id) values(97,'emp3','M',3)
insert into employess(id,name,gender,emp_id) values(96,'emp4','F',4)

