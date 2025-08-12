# Write your MySQL query statement below
SELECT DISTINCT T1.num as ConsecutiveNums
FROM Logs T1,Logs T2,Logs T3
where
T1.Id=T2.Id-1
and T2.Id=T3.Id-1
and T1.num=T2.num
and T2.num=T3.num