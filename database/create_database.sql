CREATE DATABASE IF NOT EXISTS medical_appointments_db;  -- Create the database if it does not exist
USE medical_appointments_db;  -- Use the database
\c medical_appointments_db;  -- Connect to the database

CREATE TABLE appointments (
    PatientId PRIMARY int64 NOT NULL,
    AppointmentID UNIQUE int64 NOT NULL,
    Gender VARCHAR(6),
    ScheduledDay DATETIME
    AppointmentDay DATETIME
    Age int64,
    Neighbourhood VARCHAR(100),
    Scholarship int64,
    Hipertension int64, 
    Diabetes int64, 
    Alcoholism int64,  
    Handcap int64,
    SMS_received int64,
    No_Show VARCHAR(3)
 );