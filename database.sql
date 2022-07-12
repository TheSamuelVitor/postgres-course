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

-- selects the people where country_birth is in the parenteses
select * from person where country_birth in ('Brazil', 'China', 'France')


-- more complex select
select first_name, last_name, date_of_birth 			-- selects these columns
from person												-- from this table
where country_birth in ('Brazil', 'China', 'France')    -- where country of birth is inside these paretheses
and gender <> 'Female' 									-- and gender is different from 'Female'
order by date_of_birth desc								-- order by date_of_birth
limit 10												-- show only the 10 first results
offset 4												-- do not show the first 4 results


select * from person
where country_birth in ('China', 'Brazil', 'France', 'Mexico', 'Portugal', 'Nigeria')
order by country_birth

-- selects the people where the date of birth is between the given dates
select * from person where date_of_birth between date '2022-01-01' and '2022-12-31'

-- looks for the email where email ends with '.com'
-- % = any character
select * from person where email like '%.com'

-- anyone that has @google in their email
select * from person where email like '%@google%'

-- with a specific amount of charactes
select * from person where email like '________@%'

-- same as like but ignores the case
select * from person where country_birth ilike 'p%'

-- counts how many people are from the country_birth
select country_birth,count(*) from person
group by country_birth -- groups the people that has the same country_birth

select country_birth, count(*) from person
group by country_birth
having count(*) >= 40 -- shows only the countries that has more than 40 people
order by country_birth