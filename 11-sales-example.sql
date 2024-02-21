-- step 1

-- create database sales_example;

-- step 2

--mysql
-- id int primary key auto_increment,
-- postgres
-- id serial primary key,

-- create table sales(
--     id serial primary key,
--     date_created date default (current_date),
--     date_fulfilled date,
--     customer_name varchar(300) not null,
--     product_name varchar(300) not null,
--     volume numeric(10,2) not null check(volume>=0),
--     is_recurring boolean default false,
--     is_disputed boolean default false
-- );


-- step 3 inserting

-- INSERT into sales (date_fulfilled,customer_name,product_name,volume,is_recurring,is_disputed) 
-- values(null,'Max amini', 'a book', 12.99, true,true),
-- (null,'learning inc','course bundle',4889.43,false,false),
-- ('2022-04-10','big oil ink','trucks',499000.5,false,false);

INSERT INTO sales (
  date_created,
  date_fulfilled,
  customer_name,
  product_name,
  volume,
  is_disputed,
  is_recurring
)
VALUES (
  '2022-01-18',
  '2022-03-11',
  'Company A',
  'A Nice Product',
  489.99,
  FALSE,
  TRUE
), (
  '2022-01-18',
  '2022-05-01',
  'Company B',
  'Video Game Collection',
  3859.12,
  FALSE,
  FALSE
), (
  '2021-12-05',
  NULL,
  'Company C',
  'Daily News Summary',
  4.99,
  FALSE,
  TRUE
), (
  '2021-12-05',
  '2021-12-07',
  'Company A',
  'Good-looking carpet',
  1099.82,
  TRUE,
  FALSE
), (
  '2022-02-21',
  '2022-02-24',
  'Max Schwarz',
  'Lord of the Rings Collection',
  69.99,
  FALSE,
  FALSE
), (
  '2021-10-14',
  '2022-02-21',
  'Max Schwarz',
  'Lord of the Rings Movies',
  25.99,
  FALSE,
  FALSE
), (
  '2022-06-01',
  NULL,
  'Max Schwarz',
  'Another book',
  8.99,
  FALSE,
  FALSE
), (
  '2021-08-17',
  '2021-09-12',
  'Company D',
  'Vehicle Services',
  4999.99,
  TRUE,
  TRUE
), (
  '2021-03-12',
  '2022-06-19',
  'Company D',
  'Vehicle Fleet',
  280000,
  FALSE,
  FALSE
);


INSERT INTO sales (
  date_created,
  date_fulfilled,
  customer_name,
  product_name,
  volume
)
VALUES (
  '2021-12-09',
  '2021-12-17',
  'Company Z',
  'A Tuck',
  109.0
);