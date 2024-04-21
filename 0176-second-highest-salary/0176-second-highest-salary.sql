# Write your MySQL query statement below
SELECT (SELECT MAX(Salary) FROM Employee WHERE Salary NOT IN (SELECT MAX(Salary) FROM Employee)) SecondHighestSalary;