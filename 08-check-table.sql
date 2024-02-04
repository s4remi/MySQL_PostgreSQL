-- since we already have salary with value of 0 we need to update the values in the table first
UPDATE users
set yearly_salary=null
where full_name='nicolas johson';

ALTER TABLE users
add constraint yearly_salary_positive check (yearly_salary>0 and yearly_salary<200000);

INSERT into users(full_name,current_status)
values('John Doe','unemployed'); 