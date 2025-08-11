# Write your MySQL query statement below

select employee_id,department_id
from Employee
group by employee_id,primary_flag
having primary_flag='Y' or  primary_flag='N' and employee_id IN (
        SELECT employee_id
        FROM Employee
        GROUP BY employee_id
        HAVING COUNT(department_id) = 1
   )
