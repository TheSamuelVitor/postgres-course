-- create is used to make databases, tables or schemas
-- some examples:
create database test;

create table car (
	id bigserial primary key not null,
	make varchar(100) not null,
	model varchar(100) not null,
	price numeric(19,2) not null
);

create table person (
	id bigserial primary key not null,
	first_name VARCHAR(50) not null,
	last_name VARCHAR(50) not null,
	gender VARCHAR(50) not null,
	date_of_birth DATE not null,
	email VARCHAR(50),
	country_birth VARCHAR(50) not null
);