-- install the extension to use this library
-- checks if this library is not installed yet
create extension if not exists "uuid-ossp";

-- shows the possible commands
\df

select uuid_generate_v4(); -- > calls the function

-- inserting in a table with uuid
insert into car(car_uuid, make, model, price)
values(uuid_generate_v4(), 'Hyundai', 'Kwid', 40000);