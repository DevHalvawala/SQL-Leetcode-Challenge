-- SOLUTION --
-- ## Step 1: Understand the problem
SELECT
    CURRENT_DAY.ID
FROM
    WEATHER AS CURRENT_DAY
WHERE
    EXISTS (
        SELECT
            1
        FROM
            WEATHER AS YESTERDAY
        WHERE
            CURRENT_DAY.TEMPERATURE > YESTERDAY.TEMPERATURE
            AND CURRENT_DAY.RECORDDATE = YESTERDAY.RECORDDATE + INTERVAL 1 DAY
    );

-- QUESTION --

WRITE A SOLUTION TO FIND ALL DATES id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order.
The result format is in the following example.
Example 1:



Input: 
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
Output: 
+----+
| id |
+----+
| 2  |
| 4  |
+----+
Explanation: 
In 2015-01-02, the temperature was higher than the previous day (10 -> 25).
In 2015-01-04, the temperature was higher than the previous day (20 -> 30).