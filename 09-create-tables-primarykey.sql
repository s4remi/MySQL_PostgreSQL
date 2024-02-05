
-- MYsql
DROP TABLE conversations;
DROP TABLE employers;
DROP TABLE users;

CREATE TABLE conversations(
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id int,
    employer_id int,
    message TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,  
    full_name VARCHAR(300) NOT NULL,
    yearly_salary int check(yearly_salary>0 and yearly_salary<200000),
    current_status enum('employed','unemployed','self-employed')
); 

CREATE TABLE employers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(300) NOT NULL,
    company_address  VARCHAR(300) NOT NULL,
    yearly_revenue float (5,2) check (yearly_revenue>0),
    is_hiring  boolean DEFAULT FALSE
);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Some Company Inc', 'Some Street 5, Mycity', 85.91, TRUE);

INSERT INTO users (full_name, yearly_salary, current_status)
VALUES ('Frank Meyer', 30000, 'self-employed');

INSERT INTO conversations (user_id, employer_id, message)
VALUES (1, 2, 'Hi there!');

-- Postgresql:
CREATE type  employment_status as enum('employed','unemployed','self-employed');


DROP TABLE conversations;
DROP TABLE employers;
DROP TABLE users;

CREATE TABLE conversations(
    id serial PRIMARY KEY,
    user_id int,
    employer_id int,
    message TEXT NOT NULL,
    created_at DATE DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE users (
    id serial PRIMARY KEY,  
    full_name VARCHAR(300) NOT NULL,
    yearly_salary int check(yearly_salary>0 and yearly_salary<200000),
    current_status employment_status
); 

CREATE TABLE employers(
    id serial PRIMARY KEY,
    company_name VARCHAR(300) NOT NULL,
    company_address  VARCHAR(300) NOT NULL,
    yearly_revenue float check (yearly_revenue>0),
    is_hiring  boolean DEFAULT FALSE
);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Some Company Inc', 'Some Street 5, Mycity', 85.91, TRUE);

INSERT INTO users (full_name, yearly_salary, current_status)
VALUES ('Frank Meyer', 30000, 'self-employed');

INSERT INTO conversations (user_id, employer_id, message)
VALUES (1, 2, 'Hi there!');

