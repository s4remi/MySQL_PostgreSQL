-- inner join

SELECT first_name,last_name,street,house_number,c.name as city_name
from users as usr
INNER JOIN addresses as addr ON usr.address_id=addr.id
INNER JOIN cities as c ON addr.city_id= c.id
where c.name='Berlin' or c.name='London'
ORDER BY usr.id;


