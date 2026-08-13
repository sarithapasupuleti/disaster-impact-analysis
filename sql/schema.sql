CREATE DATABASE IF NOT EXISTS disaster_db;

USE disaster_db;

CREATE TABLE IF NOT EXISTS regions (
    region_id INT PRIMARY KEY AUTO_INCREMENT,
    region VARCHAR(100) NOT NULL UNIQUE,
    population BIGINT,
    area_sq_km DECIMAL(12,2)
);

CREATE TABLE IF NOT EXISTS disaster_events (
    event_id INT PRIMARY KEY,
    disaster_type VARCHAR(50),
    region VARCHAR(100),
    event_date DATE,
    severity VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS impact_assessment (
    impact_id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT,
    affected_people DECIMAL(15,2),
    economic_loss_musd DECIMAL(15,2),
    FOREIGN KEY (event_id)
        REFERENCES disaster_events(event_id)
);
