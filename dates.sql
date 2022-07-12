-- shows the date and hour exactly
select now();

-- just the date
select now()::date

-- just the time
select now()::date

-- time with the time zone
select now()::time with time zone

-- time without the time zone
select now()::time without time zone

-- subtracting 1 year
select now()::date - interval '1 year'

-- extracting the...
select extract(year from now())   -- ...year
select extract(month from now())  -- ...month
select extract(day from now())    -- ...day
select extract(dow from now())    -- ...day of the week


-- my birthday
select now()::date - interval '3 MONTHS' + interval '6 days'

select now()::date - interval '3 MONTHS' + '6 days' + '2 YEARS'

-- 
select 
extract(day from now()) as day, 
extract(dow from now()) as day_of_the_week, 
extract(month from now()) as month, 
extract(year from now()) as year

-- worked because
-- extract received as integer
select 
extract(day from now()) + 3 as day,
extract(dow from now()) as day_of_the_week, 
extract(month from now()) as month, 
extract(year from now()) as year