WITH category_cte AS (
    SELECT
        CASE
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income >= 20000 AND income <= 50000 THEN 'Average Salary'
            ELSE 'High Salary'
        END AS category
    FROM Accounts
),
counts AS (
    SELECT category, COUNT(*) AS accounts_count
    FROM category_cte
    GROUP BY category
),
all_categories AS (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
)
SELECT 
    a.category,
    COALESCE(c.accounts_count, 0) AS accounts_count
FROM all_categories a
LEFT JOIN counts c 
    ON a.category = c.category;
