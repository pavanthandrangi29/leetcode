# Write your MySQL query statement below
SELECT 
    ROUND(AVG(IF(order_date = customer_pref_delivery_date, 1, 0)) * 100, 2) AS immediate_percentage
FROM (
    SELECT *, 
           DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY order_date ASC) AS order_rank
    FROM delivery
) AS first_orders
WHERE order_rank = 1;
