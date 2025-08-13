# Write your MySQL query statement below
SELECT employee_id FROM Employees
WHERE salary < 30000 AND manager_id IS NOT NULL 
    AND manager_id  not IN (SELECT employee_id FROM Employees) 
ORDER BY employee_id;