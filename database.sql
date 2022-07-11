-- create a database
CREATE DATABASE test;

-- create a table
create table person(
    id bigserial not null primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    gender varchar(7) not null,
    date_of_birth DATE not null,
    email varchar(150)
);

-- insert values into tables
insert into person(first_name, last_name, gender, date_of_birth)
values('Anne', 'Smith', 'Female', 09/01/88);

insert into person (first_name, last_name, gender, date_of_birth, email)
values('Jake', 'Jones', 'MALE', date '1990-01-10', 'jake@email.com');

insert into person (first_name, last_name, gender, date_of_birth)
values('Andrew', 'Jacob', 'MALE', date '1977-12-17');

insert into person (first_name, last_name, gender, date_of_birth, email)
values('Julia', 'Bravo', 'FEMALE', date '2012-01-09', 'julia@godday.com');


-- select all the columns(*) from a table
select * from person;

select * from person order by id;

select * from person where '1990-01-01' < date_of_birth and date_of_birth < '2000-01-01' order by id;
-- update a value
update person
set gender='FEMALE'
where id = 1;

-- delete a database
drop database test;

-- delete a table
drop table person;