DROP DATABASE IF EXISTS `covid_coverage`;
CREATE DATABASE `covid_coverage`; 
USE `covid_coverage`;

-- drop a database
-- USE database_name;
-- SELECT DATABASE();
-- DROP DATABASE database_name;


--create tables

CREATE TABLE hospital_data (

    ccn INT PRIMARY KEY,
    facility_name VARCHAR(255),
    state VARCHAR(50),
    zip_code INT,
    provider_subtype VARCHAR(100),
    certified_bed_count INT,
    component_hospitals FLOAT,
    week_ending TIMESTAMP,
    total_beds FLOAT,
    all_adult_hospital_beds FLOAT,
    inpatient_beds FLOAT,
    all_adult_hospital_inpatient_beds FLOAT,
    inpatient_beds_used FLOAT,
    all_adult_hospital_inpatient_bed_occupied FLOAT,
    total_icu_beds FLOAT,
    total_staffed_adult_icu_beds FLOAT,
    icu_beds_used FLOAT,
    staffed_adult_icu_bed_occupancy FLOAT,
    total_ventilators FLOAT,
    ventilators_used FLOAT
);

-- insert data
INSERT INTO `hospital_data` VALUES 
-- << paste insert.txt>>
-- ;
