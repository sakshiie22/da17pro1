create table Patients(
patient_id int primary key,
name varchar not null,
isActive boolean default 'true',
spe_id int
)

select * from Patients

insert into Patients(patient_id,name,isActive,spe_id) values(1,'Rohan',true,0009)
insert into Patients(patient_id,name,isActive,spe_id) values(2,'Varun',true,0008)
insert into Patients(patient_id,name,isActive,spe_id) values(3,'Neel',false,0007)
insert into Patients(patient_id,name,isActive,spe_id) values(4,'Mohit',true,0006)


create table Appointments(
id int primary key,
name varchar not null,
address varchar not null,
app_id int,
CONSTRAINT fk_Appointments_Patients FOREIGN Key(app_id) REFERENCES Patients(patient_id)
)

select * from Appointments

insert into Appointments(id,name,address,app_id) values(1234,'app1','pune',1)
insert into Appointments(id,name,address,app_id) values(2345,'app2','mumbai',2)
insert into Appointments(id,name,address,app_id) values(3456,'app3','goa',3)
insert into Appointments(id,name,address,app_id) values(4567,'app4','delhi',4)