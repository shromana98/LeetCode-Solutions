# Write your MySQL query statement below
WITH cte1 AS (
    SELECT * 
    FROM students
    CROSS JOIN subjects
),
cte2 AS (
    SELECT student_id, subject_name, COUNT(subject_name) AS val
    FROM examinations
    GROUP BY student_id, subject_name
)
SELECT cte1.*, COALESCE(cte2.val, 0) AS  attended_exams
FROM cte1
LEFT JOIN cte2 
    ON cte1.student_id = cte2.student_id 
    AND cte1.subject_name = cte2.subject_name
    order by student_id,subject_name;
