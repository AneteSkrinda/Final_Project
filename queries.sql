--remove whole table
drop table boxoffice;

--clear whole table
truncate table boxoffice;

--show all movies with the highest total_gross on top
select * 
from boxoffice
order by total_gross desc;

--show disributors by highest total_gross 
select monthname(release_date) as month, sum(total_gross) as total_gross_sum
from boxoffice
group by monthname(release_date)
order by month(release_date)