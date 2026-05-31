CREATE DATABASE delinquency_dataset;

USE delinquency_dataset;

CREATE TABLE
    delinquency_data (
        ID INT PRIMARY KEY,
        Month_1 VARCHAR(20),
        Month_2 VARCHAR(20),
        Month_3 VARCHAR(20),
        Month_4 VARCHAR(20),
        Month_5 VARCHAR(20),
        Month_6 VARCHAR(20),
        Loan_Balance FLOAT,
        Income FLOAT,
        Credit_Card_Type VARCHAR(50)
    );

SELECT
    COUNT(*)
FROM
    delinquency_data;

SELECT
    *
FROM
    delinquency_data
LIMIT
    10;

-- Late Payment in Month 1 to Month 6
-- 159
SELECT
    Month_1
FROM
    delinquency_data
WHERE
    Month_1 = 'Late';

-- 173
SELECT
    Month_2
FROM
    delinquency_data
WHERE
    Month_2 = 'Late';

-- 169
SELECT
    Month_3
FROM
    delinquency_data
WHERE
    Month_3 = 'Late';

-- 181 (Highest)
SELECT
    Month_4
FROM
    delinquency_data
WHERE
    Month_4 = 'Late';

-- 151(Lowest)
SELECT
    Month_5
FROM
    delinquency_data
WHERE
    Month_5 = 'Late';

-- 172
SELECT
    Month_6
FROM
    delinquency_data
WHERE
    Month_6 = 'Late';

-- Missed Payment in Month 1 to Month 6
-- 164
SELECT
    Month_1
FROM
    delinquency_data
WHERE
    Month_1 = 'Missed';

-- 167
SELECT
    Month_2
FROM
    delinquency_data
WHERE
    Month_2 = 'Missed';

-- 162
SELECT
    Month_3
FROM
    delinquency_data
WHERE
    Month_3 = 'Missed';

-- 160 (Lowest)
SELECT
    Month_4
FROM
    delinquency_data
WHERE
    Month_4 = 'Missed';

-- 187 (Highest)
SELECT
    Month_5
FROM
    delinquency_data
WHERE
    Month_5 = 'Missed';

-- 168
SELECT
    Month_6
FROM
    delinquency_data
WHERE
    Month_6 = 'Missed';

-- On-time Payment in Month 1 to Month 6
-- 177 (Highest)
SELECT
    Month_1
FROM
    delinquency_data
WHERE
    Month_1 = 'On-time';

-- 160
SELECT
    Month_2
FROM
    delinquency_data
WHERE
    Month_2 = 'On-time';

-- 169
SELECT
    Month_3
FROM
    delinquency_data
WHERE
    Month_3 = 'On-time';

-- 159 (Lowest)
SELECT
    Month_4
FROM
    delinquency_data
WHERE
    Month_4 = 'On-time';

-- 162
SELECT
    Month_5
FROM
    delinquency_data
WHERE
    Month_5 = 'On-time';

-- 160
SELECT
    Month_6
FROM
    delinquency_data
WHERE
    Month_6 = 'On-time';

-- What is the highest loan balance!?
SELECT
    MAX(Loan_Balance) AS Highest_Loan_Balance
FROM
    delinquency_data;

-- 99620
-- What is the lowest loan balance!?
SELECT
    MIN(Loan_Balance) AS Lowest_Loan_Balance
FROM
    delinquency_data
WHERE
    Loan_Balance > 0;

-- 612
-- Max income
SELECT
    MAX(Income) AS Highest_Income,
    Age
FROM
    delinquency_data
GROUP BY
    Age
ORDER BY
    Highest_Income DESC;

-- 199943
-- Min income
SELECT
    MIN(Income) AS Lowest_Income
FROM
    delinquency_data
WHERE
    Income > 0;

-- 15404