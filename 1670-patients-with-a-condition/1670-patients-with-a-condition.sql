# Write your MySQL query statement below
SELECT *
FROM Patients
WHERE conditions LIKE 'DIAB1%'         -- at the start
   OR conditions LIKE '% DIAB1%'       -- in the middle
   OR conditions LIKE '% DIAB1';       -- at the end
