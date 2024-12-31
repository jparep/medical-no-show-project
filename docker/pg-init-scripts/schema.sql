CREATE TABLE IF NOT EXISTS appointments (
    patient_id BIGINT PRIMARY KEY,                      -- Use snake_case for consistency
    appointment_id BIGINT UNIQUE NOT NULL,             -- UNIQUE and NOT NULL explicitly defined
    gender VARCHAR(6) NOT NULL,                        -- Sufficient for "Male"/"Female"
    scheduled_day TIMESTAMP NOT NULL,                  -- TIMESTAMP for date-time information
    appointment_day TIMESTAMP NOT NULL,                -- Ensures consistent timezone handling
    age INT CHECK (age BETWEEN 0 AND 120),             -- Cleaner range check
    neighbourhood VARCHAR(100) NOT NULL,               -- Sufficient for storing names
    scholarship BOOLEAN NOT NULL,                      -- BOOLEAN for binary values
    hypertension BOOLEAN NOT NULL,                     -- Corrected spelling and use BOOLEAN
    diabetes BOOLEAN NOT NULL,                         -- BOOLEAN for true/false
    alcoholism BOOLEAN NOT NULL,                       -- BOOLEAN for true/false
    handicap INT DEFAULT 0 CHECK (handicap >= 0),      -- Renamed and added default value
    sms_received BOOLEAN NOT NULL,                     -- BOOLEAN for true/false
    no_show BOOLEAN NOT NULL                           -- BOOLEAN for true/false
);
