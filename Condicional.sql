SELECT patient_id,
	weight,
    height, 
    (case 
     when weight/(power(height/100,2) >= 30 then
                  1
             else
                 0
             end) as isObese
FROM patients;

/*
Show patient_id, weight, height, isObese from the patients table.

Display isObese as a boolean 0 or 1.

Obese is defined as weight(kg)/(height(m)2) >= 30.

weight is in units kg.

height is in units cm.*/

SELECT
  patient_id,
  weight,
  height,
  weight / power(CAST(height AS float) / 100, 2) >= 30 AS obese
FROM patients
