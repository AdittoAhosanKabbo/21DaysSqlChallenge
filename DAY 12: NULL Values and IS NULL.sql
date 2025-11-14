-- =============================================
-- DAY 12: NULL Values and IS NULL/IS NOT NULL
-- =============================================
-- Challenge: Analyze the event impact by comparing weeks with events vs weeks without events.
-- Show: event status ('With Event' or 'No Event'), count of weeks,
-- average patient satisfaction, and average staff morale.
-- Order by average patient satisfaction descending.

SELECT
    CASE
        WHEN event IS NULL OR LOWER(event) = 'none' THEN 'No Event'
        ELSE 'With Event'
    END AS Event_Status,
    COUNT(*) AS week_count,
    AVG(patient_satisfaction) AS avg_satisfaction,
    AVG(staff_morale) AS avg_staff_morale
FROM
    services_weekly
GROUP BY
    CASE
        WHEN event IS NULL OR LOWER(event) = 'none' THEN 'No Event'
        ELSE 'With Event'
    END
ORDER BY
    avg_satisfaction DESC;
