-- Create the database if it does not exist
CREATE DATABASE IF NOT EXISTS medical_appointments_db;

-- Connect to the database
\c medical_appointments_db;

-- Create the appoitments table
CREATE TABLE IF NOT EXISIT appoitments (
    PatientID BIGINT NOT NULL PRIMARY KEY, -- Use BIGINT to store large IDs
    AppointmentID BIGINT NOT NULL UNIQUE, -- Ensures unique appointment IDs
    Gender VARCHAR(6) NOT NULL, -- Limit to "Male" and "Female" for better storage
    ScheduledDay TIMESTAMP NOT NULL, -- Include timezone information if needed
    AppointmentDay TIMESTAMP NOT NULL, -- Include timezone information if needed
    Age INT CHECK (Age >= 0 AND Age <= 120), -- Age should be between 0 and 120
    Neighbourhood VARCHAR(100) NOT NULL, -- Limit to 100 characters
    Scholarship BOOLEAN NOT NULL, -- Use BOOLEAN for true/false values
    Hipertension BOOLEAN NOT NULL, -- Use BOOLEAN for true/false values
    Diabetes BOOLEAN NOT NULL, -- Use BOOLEAN for true/false values
    Alcoholism BOOLEAN NOT NULL, -- Use BOOLEAN for true/false values
    Handcap INT CHECK (Handcap >=0), -- Handicap should be a positive integer
    SMSReceived BOOLEAN, -- Use BOOLEAN for true/false values
    NoShow BOOLEAN NOT NULL -- Use BOOLEAN for true/false values
)