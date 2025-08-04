# Write your MySQL query statement below

select e2.name
from Employee E1 inner join Employee E2
ON E1.managerId=E2.id
Group By e2.id,e2.name
Having COUNT(e1.id)>=5;