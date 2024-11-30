-- https://leetcode.com/problems/students-and-examinations/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to find the number of times each student attended each exam.
WITH AllStudentSubjects AS (
    SELECT 
        s.student_id,
        s.student_name,
        sub.subject_name
    FROM 
        Students s
    CROSS JOIN 
        Subjects sub
)
SELECT 
    a.student_id,
    a.student_name,
    a.subject_name,
    COALESCE(COUNT(e.student_id), 0) AS attended_exams
FROM 
    AllStudentSubjects a
LEFT JOIN 
    Examinations e
ON 
    a.student_id = e.student_id AND 
    a.subject_name = e.subject_name
GROUP BY 
    1,2,3
ORDER BY 
    1,2
