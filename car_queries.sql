CREATE SCHEMA CARS;
USE cars; 
-- 1. Read Cars Data -- 
SELECT * FROM cars.car_dekho;
-- 2. Total Cars To get a count of total records --
SELECT COUNT(Name) from car_dekho;
# or
SELECT COUNT(*) FROM car_dekho;
-- 3. The manager asked the employee How many cars will be available in 2023? --
SELECT COUNT(Name) FROM cars.car_dekho
WHERE year = 2023;
#or
SELECT COUNT(*) FROM car_dekho 
WHERE year = 2023 ;
-- 4.The manager asked the employee How many cars will be available in 2000,2021,2022?
SELECT COUNT(*) FROM car_dekho 
WHERE year = 2000 or YEAR = 2021 or YEAR = 2022;
#or
SELECT COUNT(*) FROM car_dekho 
WHERE year IN(2000,2021,2022) GROUP BY year;
-- 5. Client asked me to print the total of all cars by year. I dont see the all the details. --
SELECT year, COUNT(*) FROM car_dekho GROUP BY year ;
-- 6. Client asked to car dealer how many diesel cars will there be in 2020. --
SELECT COUNT(*) FROM car_dekho 
WHERE fuel = 'Diesel' AND year = 2020;
-- 7. Client requested a car dealer agent How many petrol cars will there be in 2020?
SELECT COUNT(*) FROM car_dekho 
WHERE fuel = 'Petrol' AND YEAR = 2020;
-- 8.The manager told the employee to give a print All the fuel cars (pertol,, diesel, and CNG) come by all year. 
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'Petrol' GROUP BY year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'Diesel' GROUP BY year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'CNG' GROUP BY year;
#or
SELECT year, count(*) FROM car_dekho WHERE fuel IN ('Petrol','Diesel','CNG') GROUP BY year;
-- 9. manager said there were more than 100 cars in a given year, which year had more than 100 cars? --
SELECT year,COUNT(*) FROM car_dekho GROUP BY year HAVING count(*) > 100;
-- 10. The manager said to the employee All cars count details betweem 2015 and 2023: we need a complete list. --
SELECT COUNT(*) FROM car_dekho WHERE year BETWEEN 2015 AND 2023; 
-- 11. The manager said to the employee All cars deatils between 2015 to 2023 we need complete list. 
SELECT * FROM car_dekho WHERE year BETWEEN 2015 AND 2023;
