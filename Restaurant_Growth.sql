-- SOLUTION --

SELECT
    T1.VISITED_ON             AS VISITED_ON,
    SUM(T2.DAY_SUM)           AS AMOUNT,
    ROUND(AVG(T2.DAY_SUM), 2) AS AVERAGE_AMOUNT
FROM
    (
        SELECT
            VISITED_ON,
            SUM(AMOUNT) AS DAY_SUM
        FROM
            CUSTOMER
        GROUP BY
            VISITED_ON
    ) T1,
    (
        SELECT
            VISITED_ON,
            SUM(AMOUNT) AS DAY_SUM
        FROM
            CUSTOMER
        GROUP BY
            VISITED_ON
    ) T2
WHERE
    DATEDIFF(T1.VISITED_ON, T2.VISITED_ON) BETWEEN 0 AND 6
GROUP BY
    T1.VISITED_ON
HAVING
    COUNT(T2.VISITED_ON) = 7;
    

-- QUESTION --

YOU ARE THE RESTAURANT OWNER AND YOU WANT TO ANALYZE A POSSIBLE EXPANSION (THERE WILL BE AT LEAST ONE CUSTOMER EVERY DAY).

Compute the moving average of how much the customer paid in a seven days window (i.e., current day + 6 days before). average_amount should be rounded to two decimal places.

RETURN THE RESULT TABLE ORDERED BY VISITED_ON IN ASCENDING ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Customer table:
+-------------+--------------+--------------+-------------+
| customer_id | name         | visited_on   | amount      |
+-------------+--------------+--------------+-------------+
| 1           | Jhon         | 2019-01-01   | 100         |
| 2           | Daniel       | 2019-01-02   | 110         |
| 3           | Jade         | 2019-01-03   | 120         |
| 4           | Khaled       | 2019-01-04   | 130         |
| 5           | Winston      | 2019-01-05   | 110         | 
| 6           | Elvis        | 2019-01-06   | 140         | 
| 7           | Anna         | 2019-01-07   | 150         |
| 8           | Maria        | 2019-01-08   | 80          |
| 9           | Jaze         | 2019-01-09   | 110         | 
| 1           | Jhon         | 2019-01-10   | 130         | 
| 3           | Jade         | 2019-01-10   | 150         | 
+-------------+--------------+--------------+-------------+
Output: 
+--------------+--------------+----------------+
| visited_on   | amount       | average_amount |
+--------------+--------------+----------------+
| 2019-01-07   | 860          | 122.86         |
| 2019-01-08   | 840          | 120            |
| 2019-01-09   | 840          | 120            |
| 2019-01-10   | 1000         | 142.86         |
+--------------+--------------+----------------+
Explanation: 
1st moving average from 2019-01-01 to 2019-01-07 has an average_amount of (100 + 110 + 120 + 130 + 110 + 140 + 150)/7 = 122.86
2nd moving average from 2019-01-02 to 2019-01-08 has an average_amount of (110 + 120 + 130 + 110 + 140 + 150 + 80)/7 = 120
3rd moving average from 2019-01-03 to 2019-01-09 has an average_amount of (120 + 130 + 110 + 140 + 150 + 80 + 110)/7 = 120
4th moving average from 2019-01-04 to 2019-01-10 has an average_amount of (130 + 110 + 140 + 150 + 80 + 110 + 130 + 150)/7 = 142.86