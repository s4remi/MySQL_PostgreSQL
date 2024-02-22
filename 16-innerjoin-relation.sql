-- inner join

SELECT first_name,last_name,street,house_number,c.name as city-name
from users as usr
INNER JOIN addresses as addr ON usr.address_id=addr.id
INNER JOIN cities as c ON addr.city_id= c.id;


