INSERT INTO nurse VALUES(1,'123 Nurse Lane', 12345, 'Alyssa Jenkins', 9192204929);
INSERT INTO nurse VALUES(2, '1234 RN Road', 54321, 'Hannah Smith', 7045657898);
INSERT INTO nurse VALUES(3, '523 CNA Place', 34578, 'Victoria Campbell', 2521238902);
INSERT INTO nurse VALUES(4, '2720 Medical Drive', 23679, 'Stacey Velasquez', 7047543243);
INSERT INTO nurse VALUES(5, '7802 University Blvd', 16907, 'Danielle Marshall', 9195654717);


INSERT INTO physician VALUES(1, '123 Doctor Lane', 67394, 'Brendon Williams','Family', 9199850759);
INSERT INTO physician VALUES(2,'3456 Surgeon Blvd',13427, 'Thomas Wilkins', 'Psychiatry',7042673845);
INSERT INTO physician VALUES(3,'4589 Medicinal Ave', 30913, 'Jasmine Stevenson', 'OBGYN',2525220023); 
INSERT INTO physician VALUES(4,'427 Random Drive',78023,'Evan Peterson','Pediatry',9192705789);
INSERT INTO physician VALUES(5,'5812 Ocean Spray Ct',38213, 'Tasha Johnson', 'Anesthesiology', 7041238945);

INSERT INTO instruction VALUES('Brendon Williams',1,'No Instructions',67394);
INSERT INTO instruction VALUES('Thomas Wilkins',2,NULL,13427);
INSERT INTO instruction VALUES('Jasmine Stevenson',3,NULL,30913);
INSERT INTO instruction VALUES('Evan Peterson',4,NULL,78023);
INSERT INTO instruction VALUES('Tasha Johnson',5,NULL,38213);

INSERT INTO patient VALUES(1,'123 Beach Lane','John Parker','Brendon Williams','Ibuprofen');
INSERT INTO patient VALUES(2,'254 Stone Drive','Jeff Goodman','Thomas Wilkins',NULL);
INSERT INTO patient VALUES(3,'803 Swoosh Blvd','Samantha Green','Jasmine Stevenson',NULL);
INSERT INTO patient VALUES(4,'389 Watercrest Place','Evelyn Rodriguez','Evan Peterson',NULL);
INSERT INTO patient VALUES(5,'803 Charlotte Way','Michael McCoy','Tasha Johnson',NULL);

INSERT INTO room VALUES('John Parker',12,1,4200);
INSERT INTO room VALUES('Jeff Goodman',45,1,5700);
INSERT INTO room VALUES('Samantha Green',17,2,234);
INSERT INTO room VALUES('Evelyn Rodriguez',23,1,875);
INSERT INTO room VALUES('Michael McCoy',38,1,12600);

INSERT INTO payment VALUES(4200,'2019-03-27');
INSERT INTO payment VALUES(5700,'2018-12-12');
INSERT INTO payment VALUES(234,'2020-05-19');
INSERT INTO payment VALUES(875,'2014-07-22');
INSERT INTO payment VALUES(12600,'2021-01-15');

INSERT INTO health_record VALUES(1,NULL,NULL,'Chicken Pox','2020-09-23');
INSERT INTO health_record VALUES(2,NULL,NULL,'Malaria','2019-11-22');
INSERT INTO health_record VALUES(3,NULL,NULL,'COVID-19','2021-03-27');
INSERT INTO health_record VALUES(4,NULL,NULL,'Flu','2021-04-02');
INSERT INTO health_record VALUES(5,NULL,NULL,'Pneumonia','2021-04-01');