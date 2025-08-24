# Write your MySQL query statement below
select score,
DENSE_RANK () over (order by Score desc) as 'rank'
from Scores



