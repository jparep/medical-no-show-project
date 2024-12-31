COPY appointments (
    patient_id AS "PatientID",
    appointment_id AS "AppointmentID",
    gender AS "Gender",
    scheduled_day AS "ScheduledDay",
    appointment_day AS "AppointmentDay",
    age AS "Age",
    neighbourhood AS "Neighbourhood",
    scholarship AS "Scholarship",
    hypertension AS "Hypertension",
    diabetes AS "Diabetes",
    alcoholism AS "Alcoholism",
    sms_received AS "SMSReceived",
    no_show AS "NoShow"
)
FROM '/docker-entrypoint-initdb.d/processed_data.csv'
DELIMITER ','
CSV HEADER;
