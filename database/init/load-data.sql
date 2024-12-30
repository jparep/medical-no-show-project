COPY appointments(patient_id, appointment_id, gender, scheduled_day, appointment_day, age, neighbourhood, scholarship, hypertension, diabetes, alcoholism, sms_received, no_show)
FROM '/home/jparep/proj/medical-no-show-project/data/processed_data.csv'
DELIMITER ','
CSV HEADER;
