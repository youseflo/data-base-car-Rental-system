insert into tbclients 
values ( 2 , 'Ahmed' , 4959595, 42245444 , 'smoha'
)
select * from tbclients

insert into tbclients 
values ( 3, 'mahmoud' , 49304595, 42375444 , 'el-mahta'
)
insert into tbclients 
values ( 4, 'mohamed' , 49292595, 42338344 , 'el-mahta'
)
insert into tbclients 
values ( 5, 'mostafa' , 49292595, 42338344 , 'el-mahta'
)
insert into tbclients 
values (6, 'ibrahem' , 49123455, 41234344 , 'el-mahta'
) 
insert into tbnationality 
values (1, 'Egyptian'  , 3978944 , 'youssef' )

 

 insert into tbnationality 
values (2, 'Spanish'  , 100200300 , 'Xavi' )

insert into tbnationality 
values (3, 'Italian'  , 300200100 , 'gatozo' )

insert into tbnationality 
values (3, 'chilean'  , 300400500 , 'Vidal' )

insert into tbnationality 
values (5, 'libyan'  , 100200200 , 'Ali' )

 update tbnationality
 set nationality_id = 4
 where client_name = 'vidal'

 update tbnationality
 set nationality_name = 'spanish' , client_name = 'Xavi'
 where nationality_id = 2

 select * from tbnationality

 insert into tbinformationofcar
 values (1 , 'Ford', 1-1-2020 , 1 - 4 - 2020 , 1 , 2000 , 1)

 insert into tbinformationofcar
 values (2 , 'Audi', 2-6-2020 , 2 - 9 - 2020 , 1 , 2500 , 2)

 insert into tbinformationofcar
 values (3 , 'BMW', 2-10-2020 , 2 - 13 - 2020 , 4 , 3000 , 1)

 insert into tbinformationofcar
 values (3 , 'Chevrolet', 4-1-2020 , 4 - 4 - 2020 , 2 , 2700 , 3)

 select * from tbinformationofcar
-- What is LEft function used for? 
 SELECT LEFT('SQL Tutorial', 4) AS ExtractString; 
-- What is ASCII function used for? 
SELECT client_name, ASCII(client_name) AS NumCodeOfFirstChar 
FROM tbclients;  
--What is CHAR function used for?
SELECT CHAR(113) AS NumberCodeToCharacter;  
--/What is CHARINDEX function used for?
SELECT CHARINDEX('a', 'mahmoud') AS MatchPosition;

--What is concat function used for?
SELECT CONCAT('Data', ' Base'); 
--What is datelengh  function used for?
SELECT DATALENGTH('Ahmed'); 

select * from tbclients
--What is Difference function used for?
SELECT DIFFERENCE('mohamed','mahmoud'); 
--What is upper function used for?
select upper (client_name) as upperclient_name 
from tbclients ; 
--What is lower function used for?
SELECT LOWER(nationality_name) AS Lowernationality_name
FROM tbnationality; 
--What is format function used for?
SELECT FORMAT(100200300, '##-##-#####') 
from tbnationality
where nationality_id = 2 ;

select * from tbnationality
--What is ltrim function used for?
SELECT LTRIM('     car_model') AS LeftTrimmedString; 
--What is NHAR function used for?
SELECT NCHAR(99) AS NumberCodeToUnicode; 

select * from tbinformationofcar

--What is quotename function used for?
SELECT QUOTENAME('Ford', '()') ; 
 --What is replace function used for?
 SELECT REPLACE('Fond', 'n', 'r'); 
 --What is replicate function used for?
 SELECT REPLICATE(car_id, 3)
FROM tbinformationofcar;
--What is reverse function used for?
SELECT REVERSE(client_name)
FROM tbclients;

--What is right function used for?
SELECT RIGHT(client_name, 6) AS ExtractString
FROM tbclients;
--What is soundex function used for?
SELECT SOUNDEX('Ford'), SOUNDEX('Audi');

--What is rtrim function used for?
SELECT RTRIM('Ford     ') AS RightTrimmedString;
--What is STR function used for?
SELECT STR(192.685);
--What is stuff function used for?
SELECT STUFF('Ford car', 1, 4, 'Audi');
--What is substring function used for?
SELECT SUBSTRING('client name', 1, 6) AS ExtractString;
--What is unicode function used for?
SELECT UNICODE(client_name) AS UnicodeOfFirstChar
FROM tbclients;
--What is MAX function used for?
SELECT MAX(rental_price) AS LargestPrice FROM tbinformationofcar;
--What is MIN function used for?
SELECT MIN(rental_price) AS SmallestPrice FROM tbinformationofcar;
--What is DAY function used for?
SELECT DAY('2020/2/1') AS DayOfMonth;

select *
from tbInformationOfCar 
order by car_model

select *
from tbclients 
order by client_name desc

select top 3 *
from tbInformationOfCar

select top 2 *
from tbInformationOfCar
order by car_model desc

select top 1 *
from tbInformationOfCar
order by rental_price desc

select *
from tbclients
where client_name like 'm%'

select *
from tbclients
where client_name like '%m%'

select client_name , car_model
from tbclients join tbinformationofcar
on tbinformationofcar.client_id = tbclients.client_id

select nationality_name , car_model
from tbnationality  join tbinformationofcar
on tbinformationofcar.nationality_id = tbnationality. nationality_id

select National_id , car_model
from tbclients join tbinformationofcar
on tbinformationofcar.client_id = tbclients.client_id

select client_name, car_model
from tbnationality  join tbinformationofcar
on tbinformationofcar.nationality_id = tbnationality. nationality_id

select phone_number , car_model
from tbclients join tbinformationofcar
on tbinformationofcar.client_id = tbclients.client_id

select client_name from tbclients where client_id in (select client_id from tbinformationofcar where rental_price > 2500) ;

select nationality_name from tbnationality where nationality_id in (select nationality_id from tbinformationofcar where car_model = 'BMW' ) ; 

select phone_number from tbclients where client_id in (select client_id from tbinformationofcar where car_id = 1 ) ; 

select client_name from tbclients

select * from tbinformationofcar 

select count (client_name)
from tbclients ; 

select client_name , count (client_id)
from tbclients
group by client_name

select car_model  , count (car_id)
from tbinformationofcar
group by car_model

insert into tbclients 
values ( 7 , 'Aly' , 4324954, 42303452 , 'elmandra' )
insert into tbclients 
values ( 8 , 'Loaay' , 11111111, 33333333 , 'elhdra' )
insert into tbclients 
values ( 9 , 'Sameh' , 12222222, 33555553 , 'elhdra' )
select * from tbnationality

update tbnationality
set ID_number = 88888888
where nationality_id = 1

update tbnationality
set nationality_name = 'German'
where nationality_id = 4

select * from tbclients

update tbclients 
set  client_name = 'Hamzawy' 
where client_id = 9
update tbclients 
set  address = 'moharm - bk' 
where client_id = 4

update tbclients 
set  phone_number = 349004404
where client_id = 7

select * from tbinformationofcar

update tbinformationofcar
set rental_price = 3500
where client_id = 1


delete from tbclients 
where client_id = 5

delete from tbclients 
where client_name = 'ibrahem'

select * from tbnationality

insert into tbnationality 
values (6, 'south African'  , 95959590 , 'Mark' )

insert into tbnationality 
values (7, 'Japanese'  , 338494403 , 'Pirlo' )

delete from tbnationality
where nationality_id = 6

delete from tbnationality
where nationality_name = 'Japanese'

select * from tbinformationofcar
insert into tbinformationofcar
 values (4 , 'lada', 4-6-2020 , 4 - 9 - 2020 , 2 , 2900 , 5)

 delete from tbinformationofcar 
 where car_model = 'lada'