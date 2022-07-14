-- delete from this table
-- with this condition
delete from person          -- delete from this table
where id = 1                -- with this condition

-- examples with delete
delete from person
where id between 1 and 10

-- delete a database
drop database test;

-- delete a table
drop table person;

-- delete with foreign key
-- first you need to be sure that this data is not being referenced in other tables
-- or the following message will appear
ERROR:  update or delete on table "car" violates foreign key constraint "person_car_id_fkey" on table "person"
DETAIL:  Key (id)=(3) is still referenced from table "person".
SQL state: 23503