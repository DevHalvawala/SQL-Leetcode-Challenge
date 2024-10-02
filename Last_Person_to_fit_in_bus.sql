-- SOLUTION --

WITH RUNNING_WEIGHT AS(
    SELECT
        *,
        SUM(WEIGHT) OVER(ORDER BY TURN) AS RUNNING_WT
    FROM
        QUEUE
)
SELECT
    PERSON_NAME
FROM
    RUNNING_WEIGHT
WHERE
    RUNNING_WT <= 1000
ORDER BY
    RUNNING_WT DESC LIMIT 1;

    
-- QUESTION --

WRITE A SOLUTION TO FIND THE PERSON_NAME OF THE LAST PERSON THAT CAN FIT ON THE BUS WITHOUT EXCEEDING THE WEIGHT LIMIT. THE TEST CASES ARE GENERATED SUCH THAT THE FIRST PERSON DOES NOT EXCEED THE WEIGHT LIMIT.
NOTE THAT ONLY ONE PERSON CAN BOARD THE BUS AT ANY GIVEN TURN.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Queue table:
+-----------+-------------+--------+------+
| person_id | person_name | weight | turn |
+-----------+-------------+--------+------+
| 5         | Alice       | 250    | 1    |
| 4         | Bob         | 175    | 5    |
| 3         | Alex        | 350    | 2    |
| 6         | John Cena   | 400    | 3    |
| 1         | Winston     | 500    | 6    |
| 2         | Marie       | 200    | 4    |
+-----------+-------------+--------+------+
Output: 
+-------------+
| person_name |
+-------------+
| John Cena   |
+-------------+