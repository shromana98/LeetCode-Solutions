# Write your MySQL query statement below
SELECT * 
FROM Patients AS p
WHERE p.conditions REGEXP '^DIAB1| DIAB1';