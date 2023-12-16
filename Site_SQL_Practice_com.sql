/* EASY QUESTION 1 */
select first_name, last_name, gender
from patients 
where gender = 'M';
/* EASY QUESTION 2 */
select first_name, last_name
from patients 
where allergies IS null;
/* EASY QUESTION 3 */
select first_name
from patients 
where first_name LIKE 'C%';
/* EASY QUESTION 4 */
select first_name, last_name
from patients
where weight between 100 and 120
/* EASY QUESTION 5 */
update patients
set allergies = 'NKA'
where allergies is null;
/* EASY QUESTION 6 */
select concat(first_name,' ', last_name) as full_name
from patients;
/* EASY QUESTION 7 */
select count(*) as total_patients
 from patients
 where year(birth_date) = 2010;
/* EASY QUESTION 8 */
select first_name, last_name, max(height) as height	
from patients;
/* EASY QUESTION 9 */
select * 
from patients
where patient_id in (1,45,534,879,1000);
/* EASY QUESTION 10 */
select count(*) from admissions;
/* EASY QUESTION 11 */
select * 
from admissions 
where admission_date == discharge_date;
/* EASY QUESTION 12 */
select patient_id, count(*)
from admissions
where patient_id = 579
/* EASY QUESTION 13 */
select distinct city
from patients
where province_id = 'NS';
/* EASY QUESTION 14 */
select first_name, last_name, birth_date
from patients
where height > 160 and weight > 70;
/* EASY QUESTION 15 */
select first_name, last_name, allergies
FROM patients
where city =  'Hamilton' AND allergies IS not null;

/* MEDIUM QUESTION 1 */





















