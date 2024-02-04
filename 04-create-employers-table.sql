CREATE TABLE employers (
    company_name VARCHAR(200),
    company_address VARCHAR(200),
    yearly_revenue numeric(5,2), -- exact value 
    is_hiring BOOLEAN
);
/*-- yearly_revenue FLOAT(5,2) (approximation)it means we can have upto 5 digit in total with 2 decimal. allowed 123.12, not allowed 1234.12*/
INSERT into employers(company_name,company_address,yearly_revenue,is_hiring)
values('Learning inc','education street 12, london',0.87,TRUE);

INSERT into employers(company_name,company_address,yearly_revenue,is_hiring)
values('Big oil Inc','JoeRogan street 14, Houston',112.55,FALSE);

INSERT into employers(company_name,company_address,yearly_revenue,is_hiring)
values('Hipster Food','Avocado street 5, Berlin',6.87,TRUE);
