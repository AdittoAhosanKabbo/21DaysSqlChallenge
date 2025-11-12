-- =============================================
-- DAY 6: Understanding the GROUP BY clause
-- =============================================
-- Question 1: For each hospital service, calculate the total number of patients admitted, total patients refused, and the admission rate (percentage of requests that were admitted).

SELECT 
    service, 
    SUM(patients_admitted) AS total_admitted,
    SUM(patients_refused) AS total_refused,
    (SUM(patients_admitted) * 100.0 / 
    (SUM(patients_admitted) + SUM(patients_refused))) AS admission_rate
FROM 
    services_weekly
GROUP BY 
    service
ORDER BY 
    admission_rate DESC;
