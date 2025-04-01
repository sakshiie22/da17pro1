create table Patient_1(
patient_id int primary key,
name varchar not null,
isActive boolean default 'true',
spe_id int
)

select * from Patient_1

insert into Patient_1(patient_id,name,isActive,spe_id) values(1,'patient1',true,111)
insert into Patient_1(patient_id,name,isActive,spe_id) values(2,'patient2',true,222)
insert into Patient_1(patient_id,name,isActive,spe_id) values(3,'patient3',false,333)
insert into Patient_1(patient_id,name,isActive,spe_id) values(4,'patient4',true,444)


create table Appointment_1(
id int primary key,
name varchar not null,
address varchar not null,
app_id int,
CONSTRAINT fk_Appointment_1_Patient_1 FOREIGN Key(app_id) REFERENCES Patient_1(patient_id)
)

select * from Appointment_1

insert into Appointment_1(id,name,address,app_id) values(999,'app1','add1',1)
insert into Appointment_1(id,name,address,app_id) values(444,'app2','add2',2)
insert into Appointment_1(id,name,address,app_id) values(666,'app3','add3',3)
insert into Appointment_1(id,name,address,app_id) values(888,'app4','add4',4)

create table medicine(
id int primary key,
name varchar not null,
type varchar not null,
med_id int,
CONSTRAINT fk_medicine_Appointment_1 FOREIGN Key(med_id) REFERENCES Appointment_1(id)

)

select * from medicine

insert into medicine(id,name,type,med_id) values(1,'med1','moderate',999)
insert into medicine(id,name,type,med_id) values(2,'med2','low',444)
insert into medicine(id,name,type,med_id) values(3,'med3','high',666)
insert into medicine(id,name,type,med_id) values(4,'med4','moderate',888)