-- create a database
CREATE DATABASE test;

-- create a table
create table person (
	id bigserial primary key not null,
	first_name VARCHAR(50) not null,
	last_name VARCHAR(50) not null,
	gender VARCHAR(50) not null,
	date_of_birth DATE not null,
	email VARCHAR(50),
	country_birth VARCHAR(50) not null
);

-- select all the columns(*) from a table
select * from person;

select * from person order by id;

select * from person where '1990-01-01' < date_of_birth and date_of_birth < '2000-01-01' order by id;

select first_name, last_name, email 
from person 
where gender = 'Male' and country_birth = 'United States' 
order by first_name;

select count(*) from person where gender = 'Male';

-- selects the countries that are repeated
select distinct country_birth from person order by country_birth desc;

select * from person 
where gender = 'Male' and country_birth = 'Poland' or country_birth = 'France' 
order by date_of_birth;

-- update a value
update person
set gender='FEMALE'
where id = 1;

-- delete a database
drop database test;

-- delete a table
drop table person;

-- count a column
-- count the amount of person that is male and the country of birth is 'United States'
select count(*)
from person
where gender = 'Male' and country_birth = 'United States';

-- operators that can be used
-- 1 < 2
-- 1 > 2
-- 1 <= 2
-- 1 >= 2
-- 1 = 2
-- 1 <> 2 (diferent)

-- Limiting the quantity to show
select * from person limit 10;

-- another way to limit the amount to show
select * from person offset 5 fetch first 5 row only;

-- the offset number says how many rows shouldn't be shown
select * from person offset 5 limit 5;

