# Write your MySQL query statement below

select r.contest_id,Round(Count(DISTINCT r.user_id)/count(distinct u.user_id)*100,2) as percentage
from Users u cross join Register r
group by r.contest_id 
order by percentage desc,r.contest_id asc