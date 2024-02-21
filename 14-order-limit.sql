-- SELECT* from sales
-- WHERE is_disputed IS NOT TRUE 
-- order by volume DESC LIMIT 3;

--use distinct 

-- SELECT DISTINCT customer_name from sales
-- ORDER BY customer_name;

-- sub-queries
-- SELECT customer_name,product_name
-- FROM(SELECT* from sales
-- WHERE volume>1000) as base_result;

-- or we can create a view and use that
CREATE VIEW base_result AS
SELECT * from sales
WHERE volume>1000;

SELECT customer_name,product_name
from base_result;


