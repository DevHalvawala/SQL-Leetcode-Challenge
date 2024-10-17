-- SOLUTION --

SELECT
    SELL_DATE,
    COUNT(DISTINCT PRODUCT) AS NUM_SOLD,
    GROUP_CONCAT( DISTINCT PRODUCT ORDER BY PRODUCT ASC SEPARATOR ',' ) AS PRODUCTS
FROM
    ACTIVITIES
GROUP BY
    SELL_DATE
ORDER BY
    SELL_DATE;

    
-- QUESTION --

WRITE A SOLUTION TO FIND FOR EACH DATE THE NUMBER OF DIFFERENT PRODUCTS SOLD AND THEIR NAMES.
THE SOLD PRODUCTS NAMES FOR EACH DATE SHOULD BE SORTED LEXICOGRAPHICALLY.
RETURN THE RESULT TABLE ORDERED BY SELL_DATE.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Activities table:
+------------+------------+
| sell_date  | product     |
+------------+------------+
| 2020-05-30 | Headphone  |
| 2020-06-01 | Pencil     |
| 2020-06-02 | Mask       |
| 2020-05-30 | Basketball |
| 2020-06-01 | Bible      |
| 2020-06-02 | Mask       |
| 2020-05-30 | T-Shirt    |
+------------+------------+
Output: 
+------------+----------+------------------------------+
| sell_date  | num_sold | products                     |
+------------+----------+------------------------------+
| 2020-05-30 | 3        | Basketball,Headphone,T-shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |
+------------+----------+------------------------------+
Explanation: 
For 2020-05-30, Sold items were (Headphone, Basketball, T-shirt), we sort them lexicographically and separate them by a comma.
For 2020-06-01, Sold items were (Pencil, Bible), we sort them lexicographically and separate them by a comma.
For 2020-06-02, the Sold item is (Mask), we just return it.