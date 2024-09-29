CREATE TABLE Countries
(
COUNTRY_ID varchar(2),
COUNTRY_NAME varchar(40),
REGION_ID decimal(10,0)
);

CREATE TABLE Countries2
LIKE Countries;

CREATE TABLE IF NOT EXISTS dup_countries
LIKE Countries;

CREATE TABLE jobs
(JOB_ID varchar(10) NOT NULL,
JOB_TITLE varchar(40) NOT NULL,
MIN_SALARY decimal(6,0),
MAX_SALARY decimal(6,0),
	CHECK(MAX_SALARY <= 25000)
);

CREATE TABLE IF NOT EXISTS Countries
(
COUNTRY_ID varchar(2),
COUNTRY_NAME varchar(40)
	CHECK (COYNTRY_NAME IN ('ITALY', 'INDIA', 'CHINA')),
REGION_ID decimal(10,0)
);

CREATE TABLE departments
(
DEPARTMENT_ID varchar(10) NOT NULL,
DEPARTMENT_NAME varchar(20) NOT NULL
);

CREATE TABLE employees 
(
EMPLOYEE_ID decimal(6,0) NOT NULL PRIMARY KEY,
FIRST_NAME varchar(20) DEFAULT NULL,
LAST_NAME varchar(30) NOT NULL,
EMAIL varchar(40) NOT NULL,
PHONE_NUM varchar(20) DEFAULT NULL,
HIRE_DATE date NOT NULL,
JOB_ID varchar(10) NOT NULL,
SALARY decimal(8,2) DEFAULT NULL,
COMMISSION decimal(2,2) DEFAULT NULL,
MANAGER_ID decimal(6,0) DEFAULT NULL,
DEPARTMENT_ID decimal(4,0) DEFAULT NULL,
FOREIGN KEY(DEPARTMENT_ID) REFERENCES departments(DEPARTMENT_ID),
FOREIGN KEY(JOB_ID) REFERENCES jobs(JOB_ID)
)
ENGINE = InnoDB;

INSERT INTO Countries
VALUES('C1', 'INDIA',1001);

CREATE TABLE IF NOT EXISTS country_new
AS SELECT *
FROM Countries;

INSERT INTO countries
VALUES 
('C1', 'INDIA', '1001'),
('C2', 'USA', '1007'),
('C3', 'UK', '1003');

SELECT *
FROM countries;

