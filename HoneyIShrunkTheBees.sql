DROP TABLE IF EXISTS USAChemicalandFertilizerTotals_County_allyears;
DROP TABLE IF EXISTS USACropTotalsCensus_County_allyears;
DROP TABLE IF EXISTS USAHoneyCensus_County_allyears;
DROP TABLE IF EXISTS USAHoneySurvey_State_allyears;
DROP TABLE IF EXISTS USAHorticultureCensus_County_allyears;
DROP TABLE IF EXISTS USAChemicalandFertilizerTotals_State_allyears;
DROP TABLE IF EXISTS USACropTotalsCensus_State_allyears;
DROP TABLE IF EXISTS USAHoneyCensus_State_allyears;
DROP TABLE IF EXISTS USAHorticultureCensus_State_allyears;
DROP VIEW IF EXISTS honey_state;
DROP VIEW IF EXISTS honey_county;
DROP VIEW IF EXISTS honey_state_avg;
DROP VIEW IF EXISTS honey_county_avg;

/* The SQL Syntax here will first load all 9 of the tables,
then it will create two new views
one for state level data
the second for county level data */


/* First Table */
CREATE TABLE USAChemicalandFertilizerTotals_County_allyears
(
Program varchar(50) NULL,
Year varchar(50) NULL,
Period varchar(50) NULL,
WeekEnding varchar(50) NULL,
GeoLevel varchar(50) NULL,
State varchar(50) NULL,
StateANSI varchar(50) NULL,
AGDistrict varchar(50) NULL,
AGDistrictCode varchar(50) NULL,
County varchar(100) NULL,
CountyANSI varchar(50) NULL,
ZipCode varchar(50) NULL,
Region varchar(100) NULL,
WatershedCode varchar(50) NULL,
Watershed varchar(100) NULL,
Commodity varchar(100) NULL,
DataItem varchar(500) NULL,
Domain varchar(100) NULL,
DomainCategory varchar(500) NULL,
Value varchar(50) NULL,
CV varchar(50) NULL
);

SELECT * FROM USAChemicalandFertilizerTotals_County_allyears;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/USAChemicalandFertilizerTotals_County_allyears.csv' 
INTO TABLE USAChemicalandFertilizerTotals_County_allyears
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM USAChemicalandFertilizerTotals_County_allyears;



/* Second Table */
CREATE TABLE USACropTotalsCensus_County_allyears
(
Program varchar(50) NULL,
Year varchar(50) NULL,
Period varchar(50) NULL,
WeekEnding varchar(50) NULL,
GeoLevel varchar(50) NULL,
State varchar(50) NULL,
StateANSI varchar(50) NULL,
AGDistrict varchar(50) NULL,
AGDistrictCode varchar(50) NULL,
County varchar(100) NULL,
CountyANSI varchar(50) NULL,
ZipCode varchar(50) NULL,
Region varchar(100) NULL,
WatershedCode varchar(50) NULL,
Watershed varchar(100) NULL,
Commodity varchar(100) NULL,
DataItem varchar(500) NULL,
Domain varchar(100) NULL,
DomainCategory varchar(500) NULL,
Value varchar(50) NULL,
CV varchar(50) NULL
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/USACropTotalsCensus_County_allyears.csv' 
INTO TABLE USACropTotalsCensus_County_allyears
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;



/* Third Table */
CREATE TABLE USAHoneyCensus_County_allyears
(
Program varchar(50) NULL,
Year varchar(50) NULL,
Period varchar(50) NULL,
WeekEnding varchar(50) NULL,
GeoLevel varchar(50) NULL,
State varchar(50) NULL,
StateANSI varchar(50) NULL,
AGDistrict varchar(50) NULL,
AGDistrictCode varchar(50) NULL,
County varchar(100) NULL,
CountyANSI varchar(50) NULL,
ZipCode varchar(50) NULL,
Region varchar(100) NULL,
WatershedCode varchar(50) NULL,
Watershed varchar(100) NULL,
Commodity varchar(100) NULL,
DataItem varchar(500) NULL,
Domain varchar(100) NULL,
DomainCategory varchar(500) NULL,
Value varchar(50) NULL,
CV varchar(50) NULL
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/USAHoneyCensus_County_allyears.csv' 
INTO TABLE USAHoneyCensus_County_allyears
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;



/* Fourth Table */
CREATE TABLE USAHoneySurvey_State_allyears
(
Program varchar(50) NULL,
Year varchar(50) NULL,
Period varchar(50) NULL,
WeekEnding varchar(50) NULL,
GeoLevel varchar(50) NULL,
State varchar(50) NULL,
StateANSI varchar(50) NULL,
AGDistrict varchar(50) NULL,
AGDistrictCode varchar(50) NULL,
County varchar(100) NULL,
CountyANSI varchar(50) NULL,
ZipCode varchar(50) NULL,
Region varchar(100) NULL,
WatershedCode varchar(50) NULL,
Watershed varchar(100) NULL,
Commodity varchar(100) NULL,
DataItem varchar(500) NULL,
Domain varchar(100) NULL,
DomainCategory varchar(500) NULL,
Value varchar(50) NULL,
CV varchar(50) NULL
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/USAHoneySurvey_State_allyears.csv' 
INTO TABLE USAHoneySurvey_State_allyears
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;



/* Fifth Table */
CREATE TABLE USAHorticultureCensus_County_allyears
(
Program varchar(50) NULL,
Year varchar(50) NULL,
Period varchar(50) NULL,
WeekEnding varchar(50) NULL,
GeoLevel varchar(50) NULL,
State varchar(50) NULL,
StateANSI varchar(50) NULL,
AGDistrict varchar(50) NULL,
AGDistrictCode varchar(50) NULL,
County varchar(100) NULL,
CountyANSI varchar(50) NULL,
ZipCode varchar(50) NULL,
Region varchar(100) NULL,
WatershedCode varchar(50) NULL,
Watershed varchar(100) NULL,
Commodity varchar(100) NULL,
DataItem varchar(500) NULL,
Domain varchar(100) NULL,
DomainCategory varchar(500) NULL,
Value varchar(50) NULL,
CV varchar(50) NULL
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/USAHorticultureCensus_County_allyears.csv' 
INTO TABLE USAHorticultureCensus_County_allyears
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;



/* Sixth Table */
CREATE TABLE USAChemicalandFertilizerTotals_State_allyears
(
Program varchar(50) NULL,
Year varchar(50) NULL,
Period varchar(50) NULL,
WeekEnding varchar(50) NULL,
GeoLevel varchar(50) NULL,
State varchar(50) NULL,
StateANSI varchar(50) NULL,
AGDistrict varchar(50) NULL,
AGDistrictCode varchar(50) NULL,
County varchar(100) NULL,
CountyANSI varchar(50) NULL,
ZipCode varchar(50) NULL,
Region varchar(100) NULL,
WatershedCode varchar(50) NULL,
Watershed varchar(100) NULL,
Commodity varchar(100) NULL,
DataItem varchar(500) NULL,
Domain varchar(100) NULL,
DomainCategory varchar(500) NULL,
Value varchar(50) NULL,
CV varchar(50) NULL
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/USAChemicalandFertilizerTotals_State_allyears.csv' 
INTO TABLE USAChemicalandFertilizerTotals_State_allyears
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;



/* Seventh Table */
CREATE TABLE USACropTotalsCensus_State_allyears
(
Program varchar(50) NULL,
Year varchar(50) NULL,
Period varchar(50) NULL,
WeekEnding varchar(50) NULL,
GeoLevel varchar(50) NULL,
State varchar(50) NULL,
StateANSI varchar(50) NULL,
AGDistrict varchar(50) NULL,
AGDistrictCode varchar(50) NULL,
County varchar(100) NULL,
CountyANSI varchar(50) NULL,
ZipCode varchar(50) NULL,
Region varchar(100) NULL,
WatershedCode varchar(50) NULL,
Watershed varchar(100) NULL,
Commodity varchar(100) NULL,
DataItem varchar(500) NULL,
Domain varchar(100) NULL,
DomainCategory varchar(500) NULL,
Value varchar(50) NULL,
CV varchar(50) NULL
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/USACropTotalsCensus_State_allyears.csv' 
INTO TABLE USACropTotalsCensus_State_allyears
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;



/* Eigth Table */

CREATE TABLE USAHoneyCensus_State_allyears
(
Program varchar(50) NULL,
Year varchar(50) NULL,
Period varchar(50) NULL,
WeekEnding varchar(50) NULL,
GeoLevel varchar(50) NULL,
State varchar(50) NULL,
StateANSI varchar(50) NULL,
AGDistrict varchar(50) NULL,
AGDistrictCode varchar(50) NULL,
County varchar(100) NULL,
CountyANSI varchar(50) NULL,
ZipCode varchar(50) NULL,
Region varchar(100) NULL,
WatershedCode varchar(50) NULL,
Watershed varchar(100) NULL,
Commodity varchar(100) NULL,
DataItem varchar(500) NULL,
Domain varchar(100) NULL,
DomainCategory varchar(500) NULL,
Value varchar(50) NULL,
CV varchar(50) NULL
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/USAHoneyCensus_State_allyears.csv' 
INTO TABLE USAHoneyCensus_State_allyears
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;



/* Ninth Table */

CREATE TABLE USAHorticultureCensus_State_allyears
(
Program varchar(50) NULL,
Year varchar(50) NULL,
Period varchar(50) NULL,
WeekEnding varchar(50) NULL,
GeoLevel varchar(50) NULL,
State varchar(50) NULL,
StateANSI varchar(50) NULL,
AGDistrict varchar(50) NULL,
AGDistrictCode varchar(50) NULL,
County varchar(100) NULL,
CountyANSI varchar(50) NULL,
ZipCode varchar(50) NULL,
Region varchar(100) NULL,
WatershedCode varchar(50) NULL,
Watershed varchar(100) NULL,
Commodity varchar(100) NULL,
DataItem varchar(500) NULL,
Domain varchar(100) NULL,
DomainCategory varchar(500) NULL,
Value varchar(50) NULL,
CV varchar(50) NULL
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/USAHorticultureCensus_State_allyears.csv' 
INTO TABLE USAHorticultureCensus_State_allyears
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;



/* Create new table for combined state level data */
CREATE VIEW honey_state AS
SELECT *
FROM USAHorticultureCensus_State_allyears;

/*check count to see if it pulled all results correctly */
SELECT COUNT(*)
FROM honey_state;

SELECT COUNT(*)
FROM USAHorticultureCensus_State_allyears;

/* insert next dataset and check count for proper load */
INSERT INTO honey_state
SELECT * FROM USAHoneyCensus_State_allyears;

SELECT COUNT(*)
FROM USAHoneyCensus_State_allyears;

SELECT COUNT(*)
FROM honey_state;

/* insert the rest of the state level datasets */
INSERT INTO honey_state
SELECT * FROM USACropTotalsCensus_State_allyears;

INSERT INTO honey_state
SELECT * FROM USAChemicalandFertilizerTotals_State_allyears;

INSERT INTO honey_state
SELECT * FROM USAHoneySurvey_State_allyears;

SELECT COUNT(*)
FROM honey_state;



/* Create new table for counties and check counts*/
CREATE VIEW honey_county AS
SELECT *
FROM USAChemicalandFertilizerTotals_County_allyears;

SELECT COUNT(*)
FROM honey_county;

SELECT COUNT(*)
FROM USAChemicalandFertilizerTotals_County_allyears;

/* insert next dataset and check count for proper load */
INSERT INTO honey_county
SELECT * FROM USACropTotalsCensus_County_allyears;

SELECT COUNT(*)
FROM USACropTotalsCensus_County_allyears;

SELECT COUNT(*)
FROM honey_county;

/* insert the rest of the county level datasets */
INSERT INTO honey_county
SELECT * FROM USAHoneyCensus_County_allyears;

INSERT INTO honey_county
SELECT * FROM USAHorticultureCensus_County_allyears;

SELECT COUNT(*)
FROM honey_county;


/* This will fix all non-integer values (Z) to 0 
and remove commas from numeric values */
UPDATE honey_state
SET Value = REPLACE(Value, ' (Z)', 0)
WHERE Value LIKE '% (Z)';

UPDATE honey_state
SET Value = REPLACE(Value, ",", '');

UPDATE honey_county
SET Value = REPLACE(Value, ' (Z)', 0)
WHERE Value LIKE '% (Z)';

UPDATE honey_county
SET Value = REPLACE(Value, ",", '');


/* This will fix all non-integer values (D) to the state average
by first creating a table with all averages
then replacing the (D) with the average */
CREATE VIEW honey_state_avg AS
SELECT  State, DataItem, avg(Value) AS average
FROM honey_state
WHERE Value != ' (D)'
GROUP BY DataItem, State;

SELECT *
FROM honey_state_avg;

CREATE VIEW honey_county_avg AS
SELECT  State, DataItem, avg(Value) AS average
FROM honey_county
WHERE Value != ' (D)'
GROUP BY DataItem, State;

SELECT *
FROM honey_county_avg;

UPDATE honey_state S
	SET S.Value =
		(SELECT A.average
		FROM honey_state_avg A
		WHERE S.State = A.State
		AND S.DataItem = A.DataItem)
	WHERE S.Value = ' (D)';
    
UPDATE honey_county C
	SET C.Value =
		(SELECT A.average
		FROM honey_county_avg A
		WHERE C.State = A.State
		AND C.DataItem = A.DataItem)
	WHERE C.Value = ' (D)';


/* Per R requirements, values must be less 2147483647 */
UPDATE honey_county
	SET Value = 2147483647
	WHERE Value > 2147483647;

UPDATE honey_state
	SET Value = 2147483647
	WHERE Value > 2147483647;


/* Test to see if there are no results = success */
SELECT *
FROM honey_state
WHERE concat('', Value * 1) != Value;

SELECT COUNT(*)
FROM honey_county
WHERE concat('', Value * 1) = Value;



/* export results with headers */
(SELECT 'Program', 'Year', 'Period', 'WeekEnding', 'GeoLevel', 'State', 'StateANSI', 'AGDistrict', 'AGDistrictCode', 'County', 'CountyANSI', 'ZipCode', 'Region', 'WatershedCode', 'Watershed', 'Commodity', 'DataItem', 'Domain', 'DomainCategory', 'Value', 'CV')
UNION
(SELECT Program, Year, Period, WeekEnding, GeoLevel, State, StateANSI, AGDistrict, AGDistrictCode, County, CountyANSI, ZipCode, Region, WatershedCode, Watershed, Commodity, DataItem, Domain, DomainCategory, Value, CV
FROM honey_state
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/honey_state.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n');

(SELECT 'Program', 'Year', 'Period', 'WeekEnding', 'GeoLevel', 'State', 'StateANSI', 'AGDistrict', 'AGDistrictCode', 'County', 'CountyANSI', 'ZipCode', 'Region', 'WatershedCode', 'Watershed', 'Commodity', 'DataItem', 'Domain', 'DomainCategory', 'Value', 'CV')
UNION
(SELECT Program, Year, Period, WeekEnding, GeoLevel, State, StateANSI, AGDistrict, AGDistrictCode, County, CountyANSI, ZipCode, Region, WatershedCode, Watershed, Commodity, DataItem, Domain, DomainCategory, Value, CV
FROM honey_county
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/honey_county.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n');