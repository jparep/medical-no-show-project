COPY appointments (
    patient_id,
    appointment_id,
    gender,
    scheduled_day,
    appointment_day,
    age,
    neighbourhood,
    scholarship,
    hypertension,
    diabetes,
    alcoholism,
    sms_received,
    no_show
)
FROM '/docker-entrypoint-initdb.d/processed_data.csv'
DELIMITER ','
CSV HEADER;
