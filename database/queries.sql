-- No-show rate by neighbourhood

SELECT
    neighbourhood,
    COUNT(*) AS total_appointments, -- Total number of appointments
    SUM(CASE WHEN NoShow = 'Yes' THEN 1 ELSE 0 END) AS no_show_count, -- Number of no-shows
    (SUM(CASE WHEN NoShow = 'Yes' THEn 1 ELSE 0 END))::FLOAT / COUNT(*) AS no_show_rate -- No-show rate
FROM appointments
GROUP BY neighbourhood
ORDER BY no_show_rate DESC;

