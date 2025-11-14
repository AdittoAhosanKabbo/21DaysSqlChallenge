-- =============================================
-- DAY 11: DISTINCT and handling duplicates
-- =============================================
-- Challenge: Find all unique combinations of service and event from the
-- services_weekly table where the event is not NULL and not 'none',
-- and return the count of occurrences for each combination.
-- Order the results by count in descending order.

SELECT
    service,
    event,
    COUNT(*) AS cnt_of_occurrences
FROM 
    services_weekly
WHERE 
    event IS NOT NULL
    AND LTRIM(RTRIM(event)) <> ''            -- remove empty or space-only
    AND LOWER(LTRIM(RTRIM(event))) <> 'none' -- remove 'none'
GROUP BY 
    service,
    event
ORDER BY 
    cnt_of_occurrences DESC;
