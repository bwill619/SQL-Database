SET FOREIGN_KEY_CHECKS=0;
DROP DATABASE IF EXISTS hospital;
CREATE DATABASE hospital;
USE hospital;

DROP TABLE IF EXISTS nurse CASCADE;
DROP TABLE IF EXISTS physician CASCADE;
DROP TABLE IF EXISTS instruction CASCADE; 
DROP TABLE IF EXISTS patient CASCADE;
DROP TABLE IF EXISTS room CASCADE;
DROP TABLE IF EXISTS payment CASCADE;
DROP TABLE IF EXISTS health_record CASCADE; 

CREATE TABLE nurse (
	ID 	  	    INT(5),
	address     VARCHAR(50),
	cert_number INT(5),
	name		VARCHAR(20),
    phone       VARCHAR(10),
	PRIMARY KEY (ID)
);

CREATE TABLE physician (
	ID 	  	    INT(5),
	address     VARCHAR(50),
	cert_number INT(5),
	p_name		VARCHAR(20),
    field       VARCHAR(20),
    phone       VARCHAR(10),
	PRIMARY KEY (ID)
);
CREATE TABLE instruction (
    p_name          VARCHAR(20),
	code 	  	    INT(5),
	description     VARCHAR(50),
	cert_number     INT(5),
	PRIMARY KEY     (code)
);


CREATE TABLE patient (
	ID 	  	    INT(5),
	address     VARCHAR(50),
	name		VARCHAR(20),
    p_name		VARCHAR(20),
    medication  VARCHAR(20),
	PRIMARY KEY (ID)
);


CREATE TABLE room(
    name         VARCHAR(20),
	number 	  	 INT(5),
	capacity     INT(3),
	fee          INT(6),
	PRIMARY KEY (number)
);
CREATE TABLE payment (
	date 	   DATETIME,
	amount     INT(6)
);
ALTER TABLE payment
DROP COLUMN date;
ALTER TABLE payment
ADD COLUMN p_date DATE;

CREATE TABLE health_record (
	ID 	  	      INT(5),
	description   VARCHAR(50),
	status        VARCHAR(50),
	date		  DATETIME,
    disease       VARCHAR(20),
	PRIMARY KEY (ID),
    FOREIGN KEY (ID) REFERENCES patient(ID)
);
ALTER TABLE health_record
DROP COLUMN date;
ALTER TABLE health_record
ADD COLUMN h_date DATE;

