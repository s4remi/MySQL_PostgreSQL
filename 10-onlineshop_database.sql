-- Task 1: create DATABASE
CREATE DATABASE online_shop;


-- Task 2&3 create and config table:
CREATE TABLE products(
    -- id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR (200) NOT NULL,
    price numeric(10, 2),
    description text,
    amount_in_stock smallint not NULL,
    image_path VARCHAR(500)
);

-- Task 4: inserting data
INSERT INTO products(price, name,description,amount_in_stock,image_path) 
VALUES(12.99, 'A book', 'This is a great book from HP with an amazing display and powerful!',39,'uploads/images/products/a-book.jpg');


-- Task 5:add constraints

ALTER TABLE products
-- mysql:
modify column name  varchar(200) NOT NULL,
modify column price numeric(10,2) check(price>0) NOT NULL,
modify column description text not null,
modify column amount_in_stock smallint check(amount_in_stock>=0);

-- postgresql:
ALTER column name set not null,
alter column price set not null,
alter column description set not null,
ADD CONSTRAINT price_positive CHECK (price > 0),
ADD CONSTRAINT amount_in_stock_positive CHECK (amount_in_stock >= 0);

-- task 6: add ID column
-- mysql:
alter  table products
add column id int auto_increment primary key;

-- postgresql:
ALTER TABLE products
ADD COLUMN id serial PRIMARY KEY ;

