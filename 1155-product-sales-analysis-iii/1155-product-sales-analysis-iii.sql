SELECT s.product_id, s.year AS first_year, s.quantity, s.price
FROM sales s
JOIN (
    SELECT product_id, MIN(year) AS min_year
    FROM sales
    GROUP BY product_id
) s1
ON s.product_id = s1.product_id AND s.year = s1.min_year;
