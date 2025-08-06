# Write your MySQL query statement below

select query_name,Round(avg(rating/position),2) As quality, Round(AVG(IF(rating <3,1,0))*100,2) As poor_query_percentage
from Queries
group by query_name