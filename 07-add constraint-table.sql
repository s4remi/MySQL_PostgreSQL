-- using not null to make sure we have value for required columns:
-- mysql:

-- ALTER TABLE users
modify column full_name  varchar(300) not null,
modify column current_status enum('unemployed','self-employed','employed')  NOT NULL;
ALTER TABLE employers
modify column company_name varchar(200) not null;

INSERT into  users (full_name,current_status) values ('John Doe', 'unemployed');
insert into employers (company_name) values ('ABC Corp');




-- postgresql:
ALTER TABLE users
ALTER COLUMN full_name SET NOT NULL,
ALTER COLUMN current_status SET NOT NULL;


ALTER TABLE employers
ALTER column company_name set  not null;

INSERT INTO users(full_name,current_status)
values('John Doe', 'unemployed');

INSERT INTO employers(company_name)
values('ABC Corp');