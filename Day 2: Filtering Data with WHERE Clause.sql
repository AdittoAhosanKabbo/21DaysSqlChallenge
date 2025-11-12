-- =============================================
-- DAY 2: Filtering Data with WHERE Clause
-- =============================================
-- Question 1: Display all patients in ‘Surgery’ with a satisfaction score below 70, including their ID, name, age, and satisfaction score.

SELECT
    patient_id,
    name,
    age,
    satisfaction AS satisfaction_score
FROM
    patients
WHERE
    service = 'Surgery' AND satisfaction < 70;
