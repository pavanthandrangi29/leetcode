# Write your MySQL query statement below

select id,case when id%2=0 Then Lag(student) over (order by id) else coalesce(lead(student) over(order by id),student) end as student from seat