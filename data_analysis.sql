CREATE TABLE
    delinquency_data (
        Age INT,
        Income FLOAT,
        Credit_Score FLOAT,
        Credit_Utilization FLOAT,
        Missed_Payments INT,
        Delinquent_Account INT,
        Loan_Balance FLOAT,
        Debt_to_Income_Ratio FLOAT,
        Employment_Status VARCHAR(50),
        Account_Tenure INT,
        Credit_Card_Type VARCHAR(50),
        Location VARCHAR(100),
        Month_1 VARCHAR(20),
        Month_2 VARCHAR(20),
        Month_3 VARCHAR(20),
        Month_4 VARCHAR(20),
        Month_5 VARCHAR(20),
        Month_6 VARCHAR(20)
    );

LOAD DATA INFILE 'C:\Anchal Workspace\Delinquency_analysis\cleaned_data.csv' INTO
TABLE delinquency_data FIELDS TERMINATED BY ',' IGNORE 1 ROWS;

SHOW VARIABLES LIKE "secure_file_priv";

SELECT
    *
FROM
    delinquency_data
LIMIT
    10;