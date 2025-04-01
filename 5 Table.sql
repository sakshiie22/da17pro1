create table book_borrowed(
id int primary key,
name varchar not null,
isActive boolean default 'true',
book_id int
)

select * from book_borrowed

insert into book_borrowed(id,name,isActive,book_id) values(1,'book1',true,66)
insert into book_borrowed(id,name,isActive,book_id) values(2,'book2',true,65)
insert into book_borrowed(id,name,isActive,book_id) values(3,'book3',false,55)
insert into book_borrowed(id,name,isActive,book_id) values(4,'book4',true,54)


create table book_received(
id int primary key,
name varchar not null,
gender varchar default 0,
rec_id int,
CONSTRAINT fk_book_received_book_borrowed FOREIGN Key (rec_id) REFERENCES book_borrowed(id)
)

select * from book_received

insert into book_received(id,name,gender,rec_id) values(01,'rec1','F',1)
insert into book_received(id,name,gender,rec_id) values(02,'rec2','F',2)
insert into book_received(id,name,gender,rec_id) values(03,'rec3','M',3)
insert into book_received(id,name,gender,rec_id) values(04,'rec4','M',4)






