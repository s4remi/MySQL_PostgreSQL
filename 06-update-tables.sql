-- for running the command line, comment put each database management
-- Mysql:
ALTER TABLE employers modify column yearly_revenue float(5,2);
ALTER TABLE employers modify column is_hiring tinyint DEFAULT 0;
INSERT INTO employers(company_name,company_address,yearly_revenue)
values('Ali\'s inc','mainStreet 23','100.55');
ALTER TABLE users modify column full_name  varchar(300);

-- postgresql:
ALTER TABLE employers ALTER column yearly_revenue set data type float;
ALTER TABLE users ALTER column full_name type varchar(300);
ALTER TABLE employers ALTER column  is_hiring SET DEFAULT false;
INSERT INTO employers(company_name,company_address,yearly_revenue) 
VALUES ('Ali''s inc', 'mainStreet 23', 100.55);
