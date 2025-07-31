# Write your MySQL query statement below
select a1.machine_id, ROUND(SUM(a2.timestamp - a1.timestamp)/COUNT(*),3)AS processing_time
FROM Activity a1 
Inner Join Activity a2
ON a1.machine_id=a2.machine_id
AND a1.process_id= a2.process_id
AND a1.activity_type='start' AND a2.activity_type='end'
Group BY a1.machine_id
