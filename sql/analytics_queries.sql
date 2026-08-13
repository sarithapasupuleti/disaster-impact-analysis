-- =========================================================
-- Disaster Impact Analysis
-- Analytics Queries
-- =========================================================

USE disaster_db;


-- 1. Top 5 Regions by Total Affected Population

SELECT
    de.region,
    SUM(ia.affected_people) AS total_affected_people
FROM disaster_events de
JOIN impact_assessment ia
    ON de.event_id = ia.event_id
GROUP BY de.region
ORDER BY total_affected_people DESC
LIMIT 5;


-- 2. Disaster Count by Type and Severity

SELECT
    disaster_type,
    severity,
    COUNT(*) AS disaster_count
FROM disaster_events
GROUP BY disaster_type, severity
ORDER BY disaster_type, severity;


-- 3. Total Economic Loss by Disaster Type

SELECT
    de.disaster_type,
    ROUND(SUM(ia.economic_loss_musd), 2) AS total_economic_loss_musd
FROM disaster_events de
JOIN impact_assessment ia
    ON de.event_id = ia.event_id
GROUP BY de.disaster_type
ORDER BY total_economic_loss_musd DESC;


-- 4. Disaster Events by Year

SELECT
    YEAR(event_date) AS event_year,
    COUNT(*) AS disaster_count
FROM disaster_events
WHERE event_date IS NOT NULL
GROUP BY YEAR(event_date)
ORDER BY event_year;


-- 5. Average Affected People by Region

SELECT
    de.region,
    ROUND(AVG(ia.affected_people), 2) AS avg_affected_people
FROM disaster_events de
JOIN impact_assessment ia
    ON de.event_id = ia.event_id
GROUP BY de.region
ORDER BY avg_affected_people DESC;


-- 6. Number of Disaster Events by Region

SELECT
    region,
    COUNT(*) AS disaster_count
FROM disaster_events
GROUP BY region
ORDER BY disaster_count DESC;


-- 7. Total Economic Loss by Region

SELECT
    de.region,
    ROUND(SUM(ia.economic_loss_musd), 2) AS total_economic_loss_musd
FROM disaster_events de
JOIN impact_assessment ia
    ON de.event_id = ia.event_id
GROUP BY de.region
ORDER BY total_economic_loss_musd DESC;


-- 8. Average Economic Loss by Severity

SELECT
    de.severity,
    ROUND(AVG(ia.economic_loss_musd), 2) AS avg_economic_loss_musd
FROM disaster_events de
JOIN impact_assessment ia
    ON de.event_id = ia.event_id
GROUP BY de.severity
ORDER BY avg_economic_loss_musd DESC;


-- 9. Total Affected People by Disaster Type

SELECT
    de.disaster_type,
    SUM(ia.affected_people) AS total_affected_people
FROM disaster_events de
JOIN impact_assessment ia
    ON de.event_id = ia.event_id
GROUP BY de.disaster_type
ORDER BY total_affected_people DESC;


-- 10. Top 5 Individual Disaster Events by Affected People

SELECT
    de.event_id,
    de.disaster_type,
    de.region,
    de.severity,
    ia.affected_people
FROM disaster_events de
JOIN impact_assessment ia
    ON de.event_id = ia.event_id
ORDER BY ia.affected_people DESC
LIMIT 5;
