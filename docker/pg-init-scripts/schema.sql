CREATE TABLE IF NOT EXISTS appointments (
    PatientID BIGINT NOT NULL PRIMARY KEY,
    AppointmentID BIGINT NOT NULL UNIQUE,
    Gender VARCHAR(6) NOT NULL,
    ScheduledDay TIMESTAMP NOT NULL,
    AppointmentDay TIMESTAMP NOT NULL,
    Age INT CHECK (Age >= 0 AND Age <= 120),
    Neighbourhood VARCHAR(100) NOT NULL,
    Scholarship BOOLEAN NOT NULL,
    Hipertension BOOLEAN NOT NULL,
    Diabetes BOOLEAN NOT NULL,
    Alcoholism BOOLEAN NOT NULL,
    Handcap INT CHECK (Handcap >= 0),
    SMSReceived BOOLEAN NOT NULL,
    NoShow BOOLEAN NOT NULL
);
