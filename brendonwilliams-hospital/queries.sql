SELECT * FROM room;
####Join Queries####
#1 Show the patient and his/her room fee
SELECT p_name AS 'Patient Name', fee AS 'Room Fee'
FROM patient JOIN room;

#2 Show the patient's physician's phone number
SELECT P.name AS 'Patient', S.p_name 'Physician', phone 'Phone Number'
FROM patient AS P JOIN physician AS S;

####Aggregation Queries####
#1 Show the highest patient room fee
SELECT MAX(fee) AS highest_fee
FROM room;

#2 Show the highest payment amount
SELECT MAX(amount) AS 'Max Amount'
FROM payment;

#3 Show the least payment amount
SELECT MIN(amount) AS 'Min Amount'
FROM payment;

#####Nested Queries####
#1 Show physicans from the 919
SELECT p_name, phone
FROM physician
WHERE phone LIKE '%919%';

#2 Show nurses from the 704
SELECT name, phone
FROM nurse
WHERE phone LIKE '%704%';

#3 Show rooms that have at least 2 occupancy
SELECT number, capacity
FROM room
WHERE capacity > 1;

#4 Show the physicians who do not have a description for their instructions
SELECT p_name AS 'Physician Name', description
FROM instruction
WHERE description LIKE 'NULL';

#5 Show the physican that lives at a certain address
SELECT p_name AS 'Name' , address AS 'Address'
FROM physician
WHERE address LIKE '5812 Ocean Spray Ct';

#6 Show the patient that has a certain medication
SELECT name AS 'Name', medication AS 'Medicine'
FROM patient
WHERE medication LIKE 'Ibuprofen';

#7 Show the patient that lives at a certain room number
SELECT name AS 'Name', number AS 'Room Number'
FROM room
WHERE number LIKE '38';

#8 Show the physician with the certain cert number
SELECT p_name AS 'Name', cert_number AS 'Cert Number'
FROM instruction
WHERE cert_number LIKE '78023';

#9 Show the date that the certain payment was made on
SELECT p_date AS 'Date', amount AS 'Amount'
FROM payment
WHERE amount LIKE '4200';

#10 Show the date on the health record for the certain disease
SELECT disease AS 'Disease', h_date AS 'Date'
FROM health_record
WHERE disease LIKE 'Pneumonia';
