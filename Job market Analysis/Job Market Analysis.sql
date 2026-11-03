SHOW DATABASES;
USE project_job_market_analysis;

SHOW TABLES;
DESCRIBE Market;

SELECT
    Job_Location,
    COUNT(*) AS total_jobs
FROM Market
WHERE Job_Location <> '-1'
GROUP BY Job_Location
ORDER BY total_jobs DESC;

SELECT
    Job_Location,
    ROUND(AVG(Lower_Salary), 2) AS avg_min_salary,
    ROUND(AVG(Upper_Salary), 2) AS avg_max_salary
FROM Market
GROUP BY Job_Location
ORDER BY avg_min_salary DESC;

SELECT
    Job_Location,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
WHERE Job_Location <> '-1'
GROUP BY Job_Location
ORDER BY Average_Salary DESC;

SELECT
    Industry,
    COUNT(*) AS Number_of_Jobs
FROM Market
WHERE Job_Title LIKE '%Data Scientist%'
   OR Job_Title LIKE '%Data Science%'
GROUP BY Industry
ORDER BY Number_of_Jobs DESC
LIMIT 5;

SELECT
    Company_Name,
    COUNT(*) AS Number_of_Jobs
FROM Market
WHERE Company_Name <> '-1'
GROUP BY Company_Name
ORDER BY Number_of_Jobs DESC;

SELECT
    Job_Title,
    COUNT(*) AS Number_of_Jobs
FROM Market
WHERE Job_Title <> '-1'
GROUP BY Job_Title
ORDER BY Number_of_Jobs DESC;

SELECT
    Job_Title,
    COUNT(*) AS Number_of_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
WHERE Job_Title <> '-1'
GROUP BY Job_Title
ORDER BY Number_of_Jobs DESC;

SELECT
    Degree,
    COUNT(*) AS Number_of_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
WHERE Degree <> '-1'
GROUP BY Degree
ORDER BY Average_Salary DESC;

SELECT
    Sector,
    COUNT(*) AS Number_of_Jobs,
    ROUND(AVG(Avg_SalaryK), 2) AS Average_Salary
FROM Market
WHERE Sector <> '-1'
GROUP BY Sector
ORDER BY Number_of_Jobs DESC;






SELECT * FROM Market;
