# Write your MySQL query statement below

select p.product_name,sum(o.unit) as unit
from products p   join orders o
on p.product_id=o.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_name
HAVING SUM(unit)>=100;