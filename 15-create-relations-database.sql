-- CREATE DATABASE relations;

CREATE TABLE users(
    id serial primary key,
    first_name varchar(300) not null,
    last_name varchar(300) not null,
    email varchar(300) not null,
    address_id int not null  
);


create table addresses(
    id serial primary key,
    street varchar(300) not null,
    house_number varchar(50) not null,
    city_id int not null
);


create table cities(
    id serial primary key,
    name varchar(300) not null
); 


-- inserting data

INSERT INTO cities(name)
values('Berlin'),('New York'),('London');

INSERT into addresses(street,house_number,city_id)
values('Teststreet','8a',3),('Some street','10',1),('Teststreet','1',3),('My street','101',2);

INSERT INTO users(first_name,last_name,email,address_id)
values('max','schwa','max@test.com',2),('manuel','Lorenz','manu@test.com',4),('Julie','Branes','julie@test.com',3)