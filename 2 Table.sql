create table order_received(
id int primary key,
name varchar not null,
address varchar not null,
Quantity bigint
)

select * from order_received

insert into order_received(id,name,address,Quantity) values(111,'order 1','mumbai',3)
insert into order_received(id,name,address,Quantity) values(222,'order 2','pune',6)
insert into order_received(id,name,address,Quantity) values(333,'order 3','banglore',5)
insert into order_received(id,name,address,Quantity) values(444,'order 4','nashik',7)


create table order_delivered(
id int primary key,
name varchar not null,
isActive boolean default 'true',
ord_id int,
CONSTRAINT fk_order_delivered_order_received FOREIGN Key(ord_id) REFERENCES order_received(id)
)

select * from order_delivered

insert into order_delivered(id,name,isActive,ord_id) values(01,'delivered1',true,111)
insert into order_delivered(id,name,isActive,ord_id) values(02,'delivered2',true,222)
insert into order_delivered(id,name,isActive,ord_id) values(03,'delivered3',false,333)
insert into order_delivered(id,name,isActive,ord_id) values(04,'delivered4',false,444)

