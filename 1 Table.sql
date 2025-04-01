create table university(
id int primary key,
name varchar not null,
subject varchar not null,
isActive boolean default 'true'
)

select * from university

insert into university(id,name,subject,isActive) values (1,'na1','maths',true)
insert into university(id,name,subject,isActive) values (2,'na2','sci',true)
insert into university(id,name,subject,isActive) values (3,'na3','eng',false)
insert into university(id,name,subject,isActive) values (4,'na4','bio',true)

create table course(
id serial primary key,
name varchar not null,
contact bigint default 0,
col_id int,
CONSTRAINT fk_course_university FOREIGN Key (col_id) REFERENCES university(id)
) 

select * from course

insert into course(id,name,contact,col_id) values (1,'Electical',23456,1)
insert into course(id,name,contact,col_id) values (2,'Computer science',12345,2)
insert into course(id,name,contact,col_id) values (3,'Mechanical',34567,3)
insert into course(id,name,contact,col_id) values (4,'Civil',45678,4)

