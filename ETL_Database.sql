USE etl_db;

Select * from 2017_2018_Divvy_Trips;


CREATE TABLE combined_table AS
SELECT cta_total.*, 2017_2018_Divvy_Trips.*
FROM cta_total
INNER JOIN 2017_2018_Divvy_Trips ON
cta_total.Date=2017_2018_Divvy_Trips.`Bike Rental Date`;

ALTER TABLE cta_total
DROP COLUMN ID;

ALTER TABLE 2017_2018_Divvy_Trips
DROP COLUMN ID;

SELECT * FROM combined_table;


