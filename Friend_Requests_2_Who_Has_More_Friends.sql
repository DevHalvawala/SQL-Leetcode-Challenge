-- SOLUTION --

SELECT
    ID,
    SUM(CNT) AS NUM
FROM
    ( (
        SELECT
            REQUESTER_ID AS ID,
            COUNT(*) AS CNT
        FROM
            REQUESTACCEPTED
        GROUP BY
            REQUESTER_ID
    ) UNION ALL (
        SELECT
            ACCEPTER_ID AS ID,
            COUNT(*) AS CNT
        FROM
            REQUESTACCEPTED
        GROUP BY
            ACCEPTER_ID
    ) ) T3
GROUP BY
    ID
ORDER BY
    NUM DESC LIMIT 1

    
-- QUESTION --

WRITE A SOLUTION TO FIND THE PEOPLE WHO HAVE THE MOST FRIENDS AND THE MOST FRIENDS NUMBER.
THE TEST CASES ARE GENERATED SO THAT ONLY ONE PERSON HAS THE MOST FRIENDS.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
RequestAccepted table:
+--------------+-------------+-------------+
| requester_id | accepter_id | accept_date |
+--------------+-------------+-------------+
| 1            | 2           | 2016/06/03  |
| 1            | 3           | 2016/06/08  |
| 2            | 3           | 2016/06/08  |
| 3            | 4           | 2016/06/09  |
+--------------+-------------+-------------+
Output: 
+----+-----+
| id | num |
+----+-----+
| 3  | 3   |
+----+-----+
Explanation: 
The person with id 3 is a friend of people 1, 2, and 4, so he has three friends in total, 
which is the most number than any others.