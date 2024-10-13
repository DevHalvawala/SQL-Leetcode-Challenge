-- SOLUTION --

SELECT
    PATIENT_ID,
    PATIENT_NAME,
    CONDITIONS
FROM
    PATIENTS
WHERE
    CONDITIONS LIKE 'DIAB1%'
    OR CONDITIONS LIKE '% DIAB1%'

    
-- QUESTION --

WRITE A SOLUTION TO FIND THE PATIENT_ID, PATIENT_NAME, AND CONDITIONS OF THE PATIENTS WHO HAVE TYPE I DIABETES. TYPE I DIABETES ALWAYS STARTS WITH DIAB1 PREFIX.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Patients table:
+------------+--------------+--------------+
| patient_id | patient_name | conditions   |
+------------+--------------+--------------+
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |
+------------+--------------+--------------+
Output: 
+------------+--------------+--------------+
| patient_id | patient_name | conditions   |
+------------+--------------+--------------+
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 | 
+------------+--------------+--------------+
Explanation: Bob and George both have a condition that starts with DIAB1.