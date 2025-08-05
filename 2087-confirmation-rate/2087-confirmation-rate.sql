# Write your MySQL query statement below

select s.user_id,Round(sum(If(c.action='confirmed', 1, 0))/Count(*),2)As confirmation_rate
from Signups s left join Confirmations c
ON s.user_id=c.user_id
Group By s.user_id
