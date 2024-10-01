-- SOLUTION --

SELECT
    P.PRODUCT_ID,
    COALESCE((
        SELECT
            NEW_PRICE
        FROM
            PRODUCTS
        WHERE
            PRODUCT_ID = P.PRODUCT_ID
            AND CHANGE_DATE <= '2019-08-16'
        ORDER BY
            CHANGE_DATE DESC LIMIT 1
    ),
    10) AS PRICE
FROM
    (
        SELECT
            DISTINCT PRODUCT_ID
        FROM
            PRODUCTS
    ) P;

    
-- QUESTION --

WRITE A SOLUTION TO FIND THE PRICES OF ALL PRODUCTS ON 2019-08-16. ASSUME THE PRICE OF ALL PRODUCTS BEFORE ANY CHANGE IS 10.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Products table:
+------------+-----------+-------------+
| product_id | new_price | change_date |
+------------+-----------+-------------+
| 1          | 20        | 2019-08-14  |
| 2          | 50        | 2019-08-14  |
| 1          | 30        | 2019-08-15  |
| 1          | 35        | 2019-08-16  |
| 2          | 65        | 2019-08-17  |
| 3          | 20        | 2019-08-18  |
+------------+-----------+-------------+
Output: 
+------------+-------+
| product_id | price |
+------------+-------+
| 2          | 50    |
| 1          | 35    |
| 3          | 10    |
+------------+-------+