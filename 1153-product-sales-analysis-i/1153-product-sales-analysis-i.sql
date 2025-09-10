# Write your MySQL query statement below
select product_name, year, price
from sales as e1  join product as e2 ON
e1.product_id=e2.product_id