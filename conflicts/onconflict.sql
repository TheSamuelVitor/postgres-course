-- the on conflict command tells what to do when a given column is in conflict
-- the on conflict especification needs to have a constraint

-- on this example if id gives conflict 
-- the person won't be added
insert into person(id, first_name, last_name, gender, date_of_birth, email, country_birth)
values (287, 'Heloise', 'Lark', 'Female', '2021-10-13', 'heloiselark@hotmail.com', 'Brazil')
on conflict (id) do nothing

-- in case the specification given in the conflict doesn't have a constraint 
-- the following message will appear
ERROR: there is no unique or exclusion constraint matching the ON CONFLICT specification