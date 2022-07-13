delete from person          -- delete from this table
where id = 1                -- with this condition

-- examples with delete
delete from person
where id between 1 and 10

-- delete a database
drop database test;

-- delete a table
drop table person;
