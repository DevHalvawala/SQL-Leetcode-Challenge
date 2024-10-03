-- QUESTION --

WRITE A SOLUTION TO CALCULATE THE NUMBER OF BANK ACCOUNTS FOR EACH SALARY CATEGORY. THE SALARY CATEGORIES ARE:
"Low Salary": ALL THE SALARIES STRICTLY LESS THAN $20000.
"Average Salary": ALL THE SALARIES IN THE INCLUSIVE RANGE [$20000, $50000].
"High Salary": ALL THE SALARIES STRICTLY GREATER THAN $50000.
THE RESULT TABLE MUST CONTAIN ALL THREE CATEGORIES. IF THERE ARE NO ACCOUNTS IN A CATEGORY, RETURN 0.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Accounts table:
+------------+--------+
| account_id | income |
+------------+--------+
| 3          | 108939 |
| 2          | 12747  |
| 8          | 87709  |
| 6          | 91796  |
+------------+--------+
Output: 
+----------------+----------------+
| category       | accounts_count |
+----------------+----------------+
| Low Salary     | 1              |
| Average Salary | 0              |
| High Salary    | 3              |
+----------------+----------------+
Explanation: 
Low Salary: Account 2.
Average Salary: No accounts.
High Salary: Accounts 3, 6, and 8.