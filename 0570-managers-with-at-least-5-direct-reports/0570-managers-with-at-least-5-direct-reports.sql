# Write your MySQL query statement below
select Name
from Employee as t1 
join (select ManagerId
    from Employee
    group by ManagerId
    having count(ManagerId) >= 5) as t2
on t1.Id = t2.ManagerId