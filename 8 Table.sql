create table customer(
id int primary key,
name varchar not null,
isActive boolean default 'true',
cus_id int
)

select * from customer

insert into customer(id,name,isActive,cus_id) values(1,'customer1',true,344)
insert into customer(id,name,isActive,cus_id) values(2,'customer2',true,355)
insert into customer(id,name,isActive,cus_id) values(3,'customer3',false,366)
insert into customer(id,name,isActive,cus_id) values(4,'customer4',false,388)


create table products(
id int primary key,
name varchar not null,
address varchar not null,
pro_id int,
CONSTRAINT fk_products_customer FOREIGN Key(pro_id) REFERENCES customer(id)
)

select * from products

insert into products(id,name,address,pro_id) values(12,'product1','add1',1)
insert into products(id,name,address,pro_id) values(13,'product2','add1',2)
insert into products(id,name,address,pro_id) values(14,'product3','add1',3)
insert into products(id,name,address,pro_id) values(15,'product4','add1',4)

create table orders(
id int primary key,
name varchar not null,
type varchar not null,
order_id int,
CONSTRAINT fk_orders_products FOREIGN Key(order_id) REFERENCES orders(id)

)

select * from orders

insert into orders(id,name,type,order_id) values(1,'order1','handle with care',12)
insert into orders(id,name,type,order_id) values(2,'order2','handle with care',13)
insert into orders(id,name,type,order_id) values(6,'order3','no need',14)
insert into orders(id,name,type,order_id) values(8,'order4','handle with care',15)
