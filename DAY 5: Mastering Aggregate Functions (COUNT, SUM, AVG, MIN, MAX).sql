-- =============================================
-- DAY 5: Mastering Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
-- =============================================
-- Question 1: Calculate the total number of patients admitted, total patients refused, and the average satisfaction across all services and weeks (rounded to 2 decimal places).

SELECT
    SUM(patients_admitted) AS Total_patients_admitted,
    SUM(patients_refused) AS Total_patient_refused,
    ROUND(AVG(patient_satisfaction), 2) AS Avg_patient_satisfaction
FROM
    services_weekly;
