-- select used to retrieve data from the database
-- some examples

-- select all the columns(*) from a table
select * from person;

select * from person order by id;

-- operators that can be used
-- 1 < 2
-- 1 > 2
-- 1 <= 2
-- 1 >= 2
-- 1 = 2
-- 1 <> 2 (diferent)

select * from person
where '1990-01-01' < date_of_birth and date_of_birth < '2000-01-01' 
order by id;

select count(*) from person where gender = 'Male';

select distinct country_birth from person 
order by country_birth desc;

select * from person 
where gender = 'Male' and country_birth = 'Poland' or country_birth = 'France' 
order by date_of_birth;

-- count a column
-- count the amount of person that is male and the country of birth is 'United States'
select count(*)
from person
where gender = 'Male' and country_birth = 'United States';

select first_name, last_name, email 
from person 
where gender = 'Male' and country_birth = 'United States' 
order by first_name;

-- Limiting the quantity to show
select * from person limit 10;

-- another way to limit the amount to show
select * from person offset 5 fetch first 5 row only;

-- the offset number says how many rows shouldn't be shown
select * from person offset 5 limit 5;

-- selects the people where country_birth is in the parenteses
select * from person where country_birth in ('Brazil', 'China', 'France')

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

-- calculating the max and min price of a car
select min(price), max(price) from car

-- round the average price of a car
select round(avg(price)) from car

-- shows the sum of the prices of a car
select sum(price) from car

-- shows the make, max, min, average and sum of the price of the car grouped by the make
select make, max(price), min(price), avg(price), sum(price) from car
group by make
order by make

-- mathemathic operators
select 10 + 2;			-- = 12
select 10 - 2;			-- = 8
select 10 * 2;			-- = 20
select 10 / 2;			-- = 5
select 10 % 3;			-- = 1
select 10 ^ 3;			-- = 1000
select factorial(5)		-- = 120

-- an example to use the operators
select id, make, model, price, round(price - (price / 10)), price*0.1 from car

-- to change the name of the column put the 'as' after it
select id, make, model, price as original_price, round(price*0.1) as discount, 
round(price - (price / 10)) as price_with_Discount from car

-- writes the message in the email that are null
select coalesce(email, 'email not provided') from person


--------------------------------------------------------
-------- more complex select
--------------------------------------------------------
select id, first_name, last_name, gender, date_of_birth,
coalesce(email, 'email not provided') as email, country_birth
from person

select make, max(price) from car group by make
order by max(price) desc

select * from person
where country_birth in ('China', 'Brazil', 'France', 'Mexico', 'Portugal', 'Nigeria')
order by country_birth

select first_name, last_name, date_of_birth 			-- selects these columns
from person												-- from this table
where country_birth in ('Brazil', 'China', 'France')    -- where country of birth is inside these paretheses
and gender <> 'Female' 									-- and gender is different from 'Female'
order by date_of_birth desc								-- order by date_of_birth
limit 10												-- show only the 10 first results
offset 4												-- do not show the first 4 results

-- extractiong someone's age
select id, first_name, last_name, gender, date_of_birth, email, country_birth,
age(now()::date, date_of_birth) as age
from person

select 
person.first_name, person.last_name, 
car.make, car.model, car.price
from person
join car on person.car_id = car.id
where make = 'Chevrolet'