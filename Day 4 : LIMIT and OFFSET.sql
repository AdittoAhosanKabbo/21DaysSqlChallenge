-- =============================================
-- DAY 4: Fetching Rows with LIMIT & OFFSET
-- =============================================
-- Question 1: Find the 3rd to 7th highest patient satisfaction scores from the patients table, showing: patient_id, name, service, and satisfaction.

SELECT
    patient_id,
    name,
    service,
    satisfaction AS satisfaction_score
FROM
    patients
ORDER BY
    satisfaction DESC
LIMIT 5 OFFSET 2;
