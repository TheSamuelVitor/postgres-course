-- retrieves all the data of the table on the right side
select *
from person
right join car on person.car_id = car.id