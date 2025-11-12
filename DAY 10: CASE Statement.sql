-- =============================================
-- DAY 10: CASE Statement
-- =============================================
-- Challenge: Create a service performance report showing service name,
-- total patients admitted, and a performance category based on the
-- following: 'Excellent' if avg satisfaction >= 85, 'Good' if >= 75,
-- 'Fair' if >= 65, otherwise 'Needs Improvement'.
-- Order by average satisfaction descending.

SELECT
    LOWER(service) AS service,
    COUNT(patient_id) AS total_patients,
    ROUND(AVG(CAST(satisfaction AS FLOAT)), 2) AS avg_satisfaction,
    CASE 
        WHEN AVG(CAST(satisfaction AS FLOAT)) >= 85 THEN 'Excellent'
        WHEN AVG(CAST(satisfaction AS FLOAT)) >= 75 THEN 'Good'
        WHEN AVG(CAST(satisfaction AS FLOAT)) >= 65 THEN 'Fair'
        ELSE 'Needs Improvement'
    END AS performance_category
FROM 
    patients
GROUP BY 
    service
ORDER BY 
    avg_satisfaction DESC;
