USE [Car Rental System]
CREATE TABLE tbclients (
client_id int  ,
 client_name nvarchar (50)  , 
 National_id int  ,
 phone_number int ,
 address nvarchar (100)  ,
 primary key (client_id) );

 create table  tbnationality(
 nationality_id int ,
 nationality_name nvarchar (50)  , 
 ID_number int , 
 client_name nvarchar (50) ,
 primary key (nationality_id));

 create table tbinformationofcar(
 car_id int ,
 car_model varchar (40) ,
 received_date datetime ,
delivery_date datetime ,
 client_id int , 
 rental_price decimal (18,4) , 
 nationality_id int ,
 primary key (car_id)
 ); 
