-- previously concluded to do nothing on conflict
-- used on conflict to do something
insert into person (id, first_name, last_name, gender, email, date_of_birth, country_birth)
values (14, 'Ross', 'Geller', 'Male', 'rossgeller@paleonthologist.com', '1987-05-07', 'United States')
on conflict (id) do update set first_name = excluded.first_name, last_name = excluded.last_name, gender = excluded.gender, email = excluded.email,
date_of_birth = excluded.date_of_birth, country_birth = excluded.country_birth