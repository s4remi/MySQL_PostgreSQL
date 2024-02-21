-- update id 13 because of the typo and wrong input
UPDATE sales SET product_name='Ali''s Truck',volume=volume*1000 WHERE id=13;

-- delete rows
delete from sales WHERE id=1;