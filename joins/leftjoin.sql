-- allows to combine like inner join
-- shows all the column from table A with the corresponding of table B
-- it also shows null even if there isn't a match
select *
from person
left join car on person.car_id = car.id


-- 
select person.first_name, person.last_name, 
car.make, car.model, car.price 
from person 
left join car using (car_uuid);