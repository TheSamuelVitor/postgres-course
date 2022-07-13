-- dropping the primary key constraint called person_pkey
alter table person
drop constraint person_pkey

-- adding a constraint key called email
alter table person
add constraint unique_email_address 
unique (email)

-- ERROR:  duplicate key value violates unique constraint "unique_email_address"
-- DETAIL:  Key (email)=(gpresshaugh0@pinterest.com) already exists.
-- SQL state: 23505

-- checks a condition in the constraint
-- in this column can only have the datas in the parentheses
alter table person add constraint gender_constraint
check  (gender in ('Genderqueer', 'Bigender', 'Genderfluid', 'Male', 'Non-binary','Polygender', 'Female', 'Agender'))