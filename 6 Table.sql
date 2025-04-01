create table university_1(
id int primary key,
name varchar not null,
subject varchar not null,
isActive boolean default 'true'
)

select * from university_1

insert into university_1(id,name,subject,isActive) values (11,'uni1','maths',true)
insert into university_1(id,name,subject,isActive) values (22,'uni2','sci',true)
insert into university_1(id,name,subject,isActive) values (33,'uni3','eng',false)
insert into university_1(id,name,subject,isActive) values (44,'uni4','bio',true)

create table course_1(
id serial primary key,
name varchar not null,
contact bigint default 0,
col_id int,
CONSTRAINT fk_course_1_university FOREIGN Key (col_id) REFERENCES university_1(id)
) 

select * from course_1

insert into course_1(id,name,contact,col_id) values (1,'AI',23456,11)
insert into course_1(id,name,contact,col_id) values (2,'IT',12345,22)
insert into course_1(id,name,contact,col_id) values (3,'DS',34567,33)
insert into course_1(id,name,contact,col_id) values (4,'ML',45678,44)

create table subject_1(
id serial primary key,
name varchar not null,
isActive boolean default 'true',
sub_id int,
CONSTRAINT fk_subject_1_course_1 FOREIGN Key (sub_id) REFERENCES course_1(id)
) 

select * from subject_1

insert into subject_1(id,name,isActive,sub_id) values (1,'sub1',true,1)
insert into subject_1(id,name,isActive,sub_id) values (2,'sub2',true,2)
insert into subject_1(id,name,isActive,sub_id) values (3,'sub3',false,3)
insert into subject_1(id,name,isActive,sub_id) values (4,'sub4',true,4)






