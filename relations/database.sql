-- to create a foreign key it's necessary to reference 
-- table_name (reference_column)

-- unique says that only this person can be referenced to this car
create table person (
	id bigserial not null primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	gender varchar(20) not null,
	date_of_birth date not null,
	country_of_birth varchar(50) not null,
	car_id bigint references car(id),
    unique (car_id)
);

create table car (
	id bigserial not null primary key,
	make varchar(100) not null,
	model varchar(100) not null,
	price numeric(19,2) not null
);

-- insert into car
insert into person (first_name, last_name, gender, date_of_birth, country_of_birth)
values('Samuel', 'Vitor', 'Male', '2001-04-18', 'Brazil');

insert into person (first_name, last_name, gender, date_of_birth, country_of_birth)
values('Vinicius', 'Guedes', 'Male', '2004-01-15','Brazil');

insert into person (first_name, last_name, gender, date_of_birth, country_of_birth)
values('Dayanne', 'Lucy', 'Female', '2002-07-08', 'Brazil');

-- insert into car
insert into car (make, model, price)
values('Chevrolet', 'Camaro', '210000');

insert into car (make, model, price)
values('Toyota', 'Hilux', '160000');