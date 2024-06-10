# Write your MySQL query statement below
SELECT id,
       CASE WHEN p_id is NULL then 'Root'
            WHEN p_id is not NULL AND id in (SELECT DISTINCT p_id FROM Tree) 
            then 'Inner'
            ELSE 'Leaf'
        END as type
    FROM tree;