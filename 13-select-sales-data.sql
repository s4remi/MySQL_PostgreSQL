
-- select * from sales where date_created> '2020-11-01' and date_created<'2022-05-01';

-- note:in the BETWEEN the endpoints are included 
-- select * from sales
-- where date_created BETWEEN '2020-11-01' and '2022-05-01';

-- SELECT* FROM sales
-- where customer_name like 'Max%';



-- find all sales where date fulfilled is 56 days after the date created
SELECT * from sales
where date_fulfilled - date_created <=5 ;


