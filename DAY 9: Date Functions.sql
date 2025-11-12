-- =============================================
-- DAY 9: Date Functions
-- =============================================
-- Question 1: Calculate the average stay (in days) for each service.
-- Show only services where the average stay exceeds 7 days.
-- Include the total number of patients and order by the longest average stay.

SELECT
    service,
    ROUND(AVG(CAST(DATEDIFF(DAY, arrival_date, departure_date) AS FLOAT)), 2) AS average_stay,
    COUNT(patient_id) AS patient_count
FROM 
    patients
GROUP BY 
    service
HAVING 
    AVG(CAST(DATEDIFF(DAY, arrival_date, departure_date) AS FLOAT)) > 7
ORDER BY 
    average_stay DESC
