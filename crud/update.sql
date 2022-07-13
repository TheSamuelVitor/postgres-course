-- update a value
update person           -- update table name
set gender='FEMALE'     -- set allows to pass an array of columns including the new values
                        -- set puts the value in the column we pass
where id = 1;           -- with this condition


-- without where it would update every single row in the table

-- we can update more than one field
update person
set first_name = 'Heloise', last_name = 'Lark', email = 'heloiselark@hotmail.com'   
where id = 287