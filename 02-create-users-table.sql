--in Postgresql as there is no ENUM we can create the type first like below
CREATE type employment_status as ENUM('employed','self-employed','unemployed');
CREATE TABLE users(
    full_name VARCHAR(200),
    yearly_salary INT,
    current_status employment_status
    --current_status ENUM('employed','self-employed','unemployed')-- MySQL syntax ,
);