-- works to combine 2 tables together
-- only works if existis foreign key referencing the other

-- selects all the people
-- joining with the table car, 
-- referencing the table person where existis the column car_id
-- that receives the id column of the table car

-- in this case, it will only appear people that has a car

select * from person
join car on person.car_id = car.id

-- retrieveng the given columns of the join

select person.first_name, person.last_name, car.make, car.model, car.price
from person
join car on person.car_id = car.id