select
  patients.patient_id,
  patients.first_name,
  patients.last_name,
  doctors.specialty as attending_doctor_specialty
from patients
  join admissions ON patients.patient_id = admissions.patient_id
  join doctors on doctors.doctor_id = admissions.attending_doctor_id
where
  admissions.diagnosis = "Epilepsy"
  and doctors.first_name = "Lisa";
/*
Show patient_id, first_name, last_name, and attending doctor's specialty.
Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'

Check patients, admissions, and doctors tables for required information.*/




SELECT
  pa.patient_id,
  pa.first_name,
  pa.last_name,
  ph1.specialty
FROM patients AS pa
  JOIN (
    SELECT *
    FROM admissions AS a
      JOIN doctors AS ph ON a.attending_doctor_id = ph.doctor_id
  ) AS ph1 USING (patient_id)
WHERE
  ph1.diagnosis = 'Epilepsy'
  AND ph1.first_name = 'Lisa';

/*
OU*/

SELECT
  a.patient_id,
  a.first_name,
  a.last_name,
  b.specialty
FROM
  patients a,
  doctors b,
  admissions c
WHERE
  a.patient_id = c.patient_id
  AND c.attending_doctor_id = b.doctor_id
  AND c.diagnosis = 'Epilepsy'
  AND b.first_name = 'Lisa';

/*
OU*/

with patient_table as (
    SELECT
      patients.patient_id,
      patients.first_name,
      patients.last_name,
      admissions.attending_doctor_id
    FROM patients
      JOIN admissions ON patients.patient_id = admissions.patient_id
    where
      admissions.diagnosis = 'Epilepsy'
  )
select
  patient_table.patient_id,
  patient_table.first_name,
  patient_table.last_name,
  doctors.specialty
from patient_table
  JOIN doctors ON patient_table.attending_doctor_id = doctors.doctor_id
WHERE doctors.first_name = 'Lisa';/*FEZ UMA PRIMEIRA TABELA E DEPOIS FEZ A CONSULTA JÁ NUMA TABELA FILTRADA*/
