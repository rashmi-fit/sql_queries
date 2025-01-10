-- https://leetcode.com/problems/patients-with-a-condition/description/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to find the patient_id, patient_name, and conditions of the patients who have Type I Diabetes. Type I Diabetes always starts with DIAB1 prefix.
-- Approach:
-- using wildcard eg: like %

select
patient_id
,patient_name
,conditions
from Patients
where
-- conditions like 'DIAB1%'
conditions LIKE '%DIAB1%' AND
    (conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%')
