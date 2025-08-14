# Write your MySQL query statement below
(select u.name as results
from Users u left join MovieRating m
on u.user_id=m.user_id
group by u.name
order by count(distinct movie_id)desc,name limit 1)

union all

(select m3.title
from MovieRating m1 left join Movies m3
on m1.movie_id=m3.movie_id
where Date_format(created_at,'%Y-%m')='2020-02'
group by m3.title
order by avg(m1.rating) desc,m3.title
limit 1);