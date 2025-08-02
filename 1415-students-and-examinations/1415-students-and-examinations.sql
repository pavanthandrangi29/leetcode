# Write your MySQL query statement below
select s1.student_id,s1.student_name,s2.subject_name,COUNT(E1.student_id) AS attended_exams
from students s1 cross join subjects s2
left join Examinations E1
ON E1.student_id=s1.student_id
and s2.subject_name=E1.subject_name
Group BY s1.student_id,s1.student_name,s2.subject_name
ORDER BY s1.student_id,s2.subject_name
