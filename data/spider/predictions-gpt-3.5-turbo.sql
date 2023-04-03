SELECT count(*) FROM singer	concert_singer
SELECT COUNT(*) AS total_singers FROM singer	concert_singer
SELECT name ,  country ,  age FROM singer ORDER BY age DESC	concert_singer
SELECT name ,  country ,  age FROM singer ORDER BY age DESC	concert_singer
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'	concert_singer
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'	concert_singer
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1	concert_singer
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1	concert_singer
SELECT DISTINCT country FROM singer WHERE age  >  20	concert_singer
SELECT DISTINCT country FROM singer WHERE age  >  20	concert_singer
SELECT Country, COUNT(*) AS Singer_Count FROM singer GROUP BY Country	concert_singer
SELECT country ,  count(*) FROM singer GROUP BY country	concert_singer
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)	concert_singer
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)	concert_singer
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000	concert_singer
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000	concert_singer
select max(capacity), average from stadium	concert_singer
select avg(capacity) ,  max(capacity) from stadium	concert_singer
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1	concert_singer
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1	concert_singer
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015	concert_singer
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015	concert_singer
SELECT stadium.Name, COUNT(concert.concert_ID) AS num_concerts FROM stadium INNER JOIN concert ON stadium.Stadium_ID = concert.Stadium_ID GROUP BY stadium.Name	concert_singer
SELECT stadium.Name, COUNT(concert.Stadium_ID) AS Number_of_Concerts FROM stadium LEFT JOIN concert ON stadium.Stadium_ID = concert.Stadium_ID GROUP BY stadium.Name	concert_singer
SELECT s.Name, s.Capacity FROM stadium s INNER JOIN concert c ON s.Stadium_ID = c.Stadium_ID WHERE c.Year >= '2014' GROUP BY s.Name, s.Capacity ORDER BY COUNT(c.concert_ID) DESC LIMIT 1	concert_singer
select t2.name ,  t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id  =  t2.stadium_id where t1.year  >  2013 group by t2.stadium_id order by count(*) desc limit 1	concert_singer
SELECT Year, COUNT(*) AS num_concerts FROM concert GROUP BY Year ORDER BY num_concerts DESC LIMIT 1	concert_singer
SELECT Year FROM concert GROUP BY Year ORDER BY COUNT(*) DESC LIMIT 1	concert_singer
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)	concert_singer
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)	concert_singer
SELECT DISTINCT s1.Country FROM singer s1, singer s2 WHERE s1.Age > 40 AND s2.Age < 30 AND s1.Country = s2.Country	concert_singer
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2014	concert_singer
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2014	concert_singer
SELECT T2.concert_name ,  T2.theme ,  count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T2.concert_id	concert_singer
select t2.concert_name ,  t2.theme ,  count(*) from singer_in_concert as t1 join concert as t2 on t1.concert_id  =  t2.concert_id group by t2.concert_id	concert_singer
SELECT T2.name ,  count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id GROUP BY T2.singer_id	concert_singer
SELECT T2.name ,  count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id GROUP BY T2.singer_id	concert_singer
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T1.concert_id  =  T3.concert_id WHERE T3.year  =  2014	concert_singer
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T1.concert_id  =  T3.concert_id WHERE T3.year  =  2014	concert_singer
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'	concert_singer
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'	concert_singer
SELECT DISTINCT s.Name, s.Location FROM stadium s INNER JOIN concert c ON s.Stadium_ID = c.Stadium_ID WHERE c.Year = '2014' AND s.Stadium_ID IN (     SELECT c2.Stadium_ID     FROM concert c2     WHERE c2.Year = '2015' )	concert_singer
SELECT DISTINCT s.Name, s.Location FROM stadium s INNER JOIN concert c1 ON s.Stadium_ID = c1.Stadium_ID INNER JOIN concert c2 ON s.Stadium_ID = c2.Stadium_ID WHERE c1.Year = '2014' AND c2.Year = '2015'	concert_singer
select count(*) from concert where stadium_id = (select stadium_id from stadium order by capacity desc limit 1)	concert_singer
select count(*) from concert where stadium_id = (select stadium_id from stadium order by capacity desc limit 1)	concert_singer
SELECT count(*) FROM pets WHERE weight  >  10	pets_1
SELECT count(*) FROM pets WHERE weight  >  10	pets_1
SELECT MIN(pet_age) AS youngest_dog_age, weight FROM Pets WHERE PetType = 'dog' GROUP BY weight ORDER BY youngest_dog_age LIMIT 1	pets_1
SELECT weight FROM pets ORDER BY pet_age LIMIT 1	pets_1
SELECT max(weight) ,  petType FROM pets GROUP BY petType	pets_1
SELECT max(weight) ,  petType FROM pets GROUP BY petType	pets_1
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.age  >  20	pets_1
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.age  >  20	pets_1
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T1.sex  =  'F' AND T3.pettype  =  'dog'	pets_1
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T1.sex  =  'F' AND T3.pettype  =  'dog'	pets_1
SELECT count(DISTINCT pettype) FROM pets	pets_1
SELECT count(DISTINCT pettype) FROM pets	pets_1
SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'	pets_1
SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'	pets_1
SELECT DISTINCT s.Fname FROM Student s INNER JOIN Has_Pet hp ON s.StuID = hp.StuID INNER JOIN Pets p ON hp.PetID = p.PetID WHERE p.PetType = 'cat' AND s.StuID IN (     SELECT hp.StuID     FROM Has_Pet hp     INNER JOIN Pets p ON hp.PetID = p.PetID     WHERE p.PetType = 'dog	pets_1
SELECT DISTINCT s.Fname FROM Student s INNER JOIN Has_Pet hp1 ON s.StuID = hp1.StuID INNER JOIN Has_Pet hp2 ON s.StuID = hp2.StuID INNER JOIN Pets p1 ON hp1.PetID = p1.PetID AND p1.PetType = 'cat' INNER JOIN Pets p2 ON hp2.PetID = p2.PetID AND p2.PetType	pets_1
SELECT s.Major, s.Age FROM Student s WHERE s.StuID NOT IN (     SELECT hp.StuID     FROM Has_Pet hp     JOIN Pets p ON hp.PetID = p.PetID     WHERE p.PetType = 'cat' )	pets_1
SELECT major ,  age FROM student WHERE stuid NOT IN (SELECT T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.pettype  =  'cat')	pets_1
SELECT StuID FROM Student WHERE StuID NOT IN (   SELECT StuID   FROM Has_Pet   JOIN Pets ON Has_Pet.PetID = Pets.PetID   WHERE PetType = 'cat' )	pets_1
SELECT DISTINCT StuID  FROM Student  LEFT JOIN Has_Pet ON Student.StuID = Has_Pet.StuID  LEFT JOIN Pets ON Has_Pet.PetID = Pets.PetID  WHERE PetType != 'cat' OR PetType IS NULL	pets_1
SELECT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.pettype  =  'dog' AND T1.stuid NOT IN (SELECT T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.pettype  =  'cat')	pets_1
SELECT DISTINCT s.Fname FROM Student s JOIN Has_Pet hp ON s.StuID = hp.StuID JOIN Pets p ON hp.PetID = p.PetID WHERE p.PetType = 'dog' AND s.StuID NOT IN (     SELECT s.StuID     FROM Student s     JOIN Has_Pet hp ON s.StuID = hp.StuID     JOIN Pets p ON hp.PetID = p.P	pets_1
SELECT pettype ,  weight FROM pets ORDER BY pet_age LIMIT 1	pets_1
SELECT pettype ,  weight FROM pets ORDER BY pet_age LIMIT 1	pets_1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1	pets_1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1	pets_1
SELECT avg(pet_age) ,  max(pet_age) ,  pettype FROM pets GROUP BY pettype	pets_1
SELECT avg(pet_age) ,  max(pet_age) ,  pettype FROM pets GROUP BY pettype	pets_1
SELECT avg(weight) ,  pettype FROM pets GROUP BY pettype	pets_1
SELECT avg(weight) ,  pettype FROM pets GROUP BY pettype	pets_1
SELECT DISTINCT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid	pets_1
SELECT DISTINCT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid	pets_1
SELECT T2.petid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.Lname  =  'Smith'	pets_1
SELECT T2.petid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.Lname  =  'Smith'	pets_1
SELECT count(*) ,  T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid	pets_1
select count(*) ,  t1.stuid from student as t1 join has_pet as t2 on t1.stuid  =  t2.stuid group by t1.stuid	pets_1
SELECT T1.fname ,  T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1	pets_1
SELECT T1.fname ,  T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1	pets_1
SELECT s.LName FROM Student s JOIN Has_Pet hp ON s.StuID = hp.StuID JOIN Pets p ON hp.PetID = p.PetID WHERE p.PetType = 'cat' AND p.pet_age = 3 ORDER BY s.LName DESC LIMIT 1	pets_1
SELECT s.LName FROM Student s JOIN Has_Pet hp ON s.StuID = hp.StuID JOIN Pets p ON hp.PetID = p.PetID WHERE p.PetType = 'cat' AND p.pet_age = 3 ORDER BY s.LName DESC LIMIT 1	pets_1
select avg(age) from student where stuid not in (select stuid from has_pet)	pets_1
select avg(age) from student where stuid not in (select stuid from has_pet)	pets_1
SELECT count(*) FROM CONTINENTS;	car_1
SELECT count(*) FROM CONTINENTS;	car_1
SELECT T1.ContId ,  T1.Continent ,  count(*) FROM CONTINENTS AS T1 JOIN COUNTRIES AS T2 ON T1.ContId  =  T2.Continent GROUP BY T1.ContId;	car_1
SELECT continents.ContId, continents.Continent, COUNT(countries.CountryId) AS NumOfCountries FROM continents LEFT JOIN countries ON continents.ContId = countries.Continent GROUP BY continents.ContId, continents.Continent	car_1
SELECT count(*) FROM COUNTRIES;	car_1
SELECT count(*) FROM COUNTRIES;	car_1
SELECT T1.FullName ,  T1.Id ,  count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id;	car_1
SELECT car_makers.Id, car_makers.FullName, COUNT(model_list.ModelId) AS NumOfModels FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id, car_makers.FullName	car_1
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id ORDER BY T2.horsepower ASC LIMIT 1;	car_1
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id ORDER BY T2.horsepower ASC LIMIT 1;	car_1
SELECT T1.model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T2.Weight  <  (SELECT avg(Weight) FROM CARS_DATA)	car_1
SELECT T1.model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T2.Weight  <  (SELECT avg(Weight) FROM CARS_DATA)	car_1
SELECT DISTINCT T1.Maker FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker JOIN CAR_NAMES AS T3 ON T2.model  =  T3.model JOIN CARS_DATA AS T4 ON T3.MakeId  =  T4.id WHERE T4.year  =  '1970';	car_1
SELECT DISTINCT T1.Maker FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker JOIN CAR_NAMES AS T3 ON T2.model  =  T3.model JOIN CARS_DATA AS T4 ON T3.MakeId  =  T4.id WHERE T4.year  =  '1970';	car_1
SELECT T2.Make ,  T1.Year FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id  =  T2.MakeId WHERE T1.Year  =  (SELECT min(YEAR) FROM CARS_DATA);	car_1
SELECT cm.Maker, cd.Year FROM car_makers cm JOIN model_list ml ON cm.Id = ml.Maker JOIN car_names cn ON ml.ModelId = cn.MakeId JOIN cars_data cd ON cn.Model = cd.Id WHERE cd.Year = (SELECT MIN(Year) FROM cars_data) LIMIT 1	car_1
SELECT DISTINCT T1.model FROM MODEL_LIST AS T1 JOIN CAR_NAMES AS T2 ON T1.model  =  T2.model JOIN CARS_DATA AS T3 ON T2.MakeId  =  T3.id WHERE T3.year  >  1980;	car_1
SELECT DISTINCT T1.model FROM MODEL_LIST AS T1 JOIN CAR_NAMES AS T2 ON T1.model  =  T2.model JOIN CARS_DATA AS T3 ON T2.MakeId  =  T3.id WHERE T3.year  >  1980;	car_1
SELECT T1.Continent ,  count(*) FROM CONTINENTS AS T1 JOIN COUNTRIES AS T2 ON T1.ContId  =  T2.continent JOIN car_makers AS T3 ON T2.CountryId  =  T3.Country GROUP BY T1.Continent;	car_1
SELECT c.Continent, COUNT(DISTINCT cm.Id) AS CarMakersCount FROM continents c JOIN countries co ON c.ContId = co.Continent JOIN car_makers cm ON co.CountryId = cm.Country GROUP BY c.Continent	car_1
SELECT T2.CountryName FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country  =  T2.CountryId GROUP BY T1.Country ORDER BY Count(*) DESC LIMIT 1;	car_1
SELECT T2.CountryName FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country  =  T2.CountryId GROUP BY T1.Country ORDER BY Count(*) DESC LIMIT 1;	car_1
select count(*) ,  t2.fullname from model_list as t1 join car_makers as t2 on t1.maker  =  t2.id group by t2.id;	car_1
SELECT Count(*) ,  T2.FullName ,  T2.id FROM MODEL_LIST AS T1 JOIN CAR_MAKERS AS T2 ON T1.Maker  =  T2.Id GROUP BY T2.id;	car_1
SELECT T1.Accelerate FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id  =  T2.MakeId WHERE T2.Make  =  'amc hornet sportabout (sw)';	car_1
SELECT Accelerate  FROM cars_data  WHERE Id = (     SELECT Id      FROM car_names      WHERE Make = 'amc' AND Model = 'hornet sportabout (sw)' )	car_1
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country  =  T2.CountryId WHERE T2.CountryName  =  'france';	car_1
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country  =  T2.CountryId WHERE T2.CountryName  =  'france';	car_1
SELECT count(*) FROM MODEL_LIST AS T1 JOIN CAR_MAKERS AS T2 ON T1.Maker  =  T2.Id JOIN COUNTRIES AS T3 ON T2.Country  =  T3.CountryId WHERE T3.CountryName  =  'usa';	car_1
SELECT count(*) FROM MODEL_LIST AS T1 JOIN CAR_MAKERS AS T2 ON T1.Maker  =  T2.Id JOIN COUNTRIES AS T3 ON T2.Country  =  T3.CountryId WHERE T3.CountryName  =  'usa';	car_1
SELECT avg(mpg) FROM CARS_DATA WHERE Cylinders  =  4;	car_1
SELECT avg(mpg) FROM CARS_DATA WHERE Cylinders  =  4;	car_1
select min(weight) from cars_data where cylinders  =  8 and year  =  1974	car_1
select min(weight) from cars_data where cylinders  =  8 and year  =  1974	car_1
SELECT Maker ,  Model FROM MODEL_LIST;	car_1
SELECT Maker ,  Model FROM MODEL_LIST;	car_1
SELECT T1.CountryName ,  T1.CountryId FROM COUNTRIES AS T1 JOIN CAR_MAKERS AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryId HAVING count(*)  >=  1;	car_1
SELECT T1.CountryName ,  T1.CountryId FROM COUNTRIES AS T1 JOIN CAR_MAKERS AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryId HAVING count(*)  >=  1;	car_1
SELECT count(*) FROM CARS_DATA WHERE horsepower  >  150;	car_1
SELECT count(*) FROM CARS_DATA WHERE horsepower  >  150;	car_1
SELECT avg(Weight) ,  YEAR FROM CARS_DATA GROUP BY YEAR;	car_1
SELECT avg(Weight) ,  YEAR FROM CARS_DATA GROUP BY YEAR;	car_1
SELECT c.CountryName FROM countries c INNER JOIN car_makers cm ON c.CountryId = cm.Country INNER JOIN continents co ON c.Continent = co.ContId WHERE co.Continent = 'Europe' GROUP BY c.CountryName HAVING COUNT(DISTINCT cm.Maker) >= 3	car_1
SELECT T1.CountryName FROM COUNTRIES AS T1 JOIN CONTINENTS AS T2 ON T1.Continent  =  T2.ContId JOIN CAR_MAKERS AS T3 ON T1.CountryId  =  T3.Country WHERE T2.Continent  =  'europe' GROUP BY T1.CountryName HAVING count(*)  >=  3;	car_1
SELECT MAX(cars_data.Horsepower) AS MaxHorsepower, car_makers.Maker AS Make FROM cars_data JOIN model_list ON cars_data.Id = model_list.ModelId JOIN car_makers ON model_list.Maker = car_makers.Id WHERE cars_data.Cylinders = 3 GROUP BY car_makers.Maker	car_1
SELECT MAX(cars_data.Horsepower) AS MaxHorsepower, car_makers.Maker AS Make FROM cars_data JOIN model_list ON cars_data.Id = model_list.ModelId JOIN car_makers ON model_list.Maker = car_makers.Id WHERE cars_data.Cylinders = 3 GROUP BY car_makers.Maker ORDER BY MaxHorsepower DESC LIMIT 1	car_1
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id ORDER BY T2.mpg DESC LIMIT 1;	car_1
select t1.model from car_names as t1 join cars_data as t2 on t1.makeid  =  t2.id order by t2.mpg desc limit 1;	car_1
SELECT avg(horsepower) FROM CARS_DATA WHERE YEAR  <  1980;	car_1
select avg(horsepower) from cars_data where year  <  1980;	car_1
SELECT avg(T2.edispl) FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T1.Model  =  'volvo';	car_1
SELECT avg(T2.edispl) FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T1.Model  =  'volvo';	car_1
SELECT max(Accelerate) ,  Cylinders FROM CARS_DATA GROUP BY Cylinders;	car_1
SELECT max(Accelerate) ,  Cylinders FROM CARS_DATA GROUP BY Cylinders;	car_1
SELECT Model FROM CAR_NAMES GROUP BY Model ORDER BY count(*) DESC LIMIT 1;	car_1
SELECT model_list.Model FROM model_list JOIN car_names ON model_list.ModelId = car_names.ModelId GROUP BY model_list.Model ORDER BY COUNT(DISTINCT car_names.Make) DESC LIMIT 1	car_1
SELECT count(*) FROM CARS_DATA WHERE Cylinders  >  4;	car_1
SELECT count(*) FROM CARS_DATA WHERE Cylinders  >  4;	car_1
SELECT count(*) FROM CARS_DATA WHERE YEAR  =  1980;	car_1
SELECT count(*) FROM CARS_DATA WHERE YEAR  =  1980;	car_1
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker WHERE T1.FullName  =  'American Motor Company';	car_1
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker WHERE T1.FullName  =  'American Motor Company';	car_1
SELECT T1.FullName ,  T1.Id FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id HAVING count(*)  >  3;	car_1
SELECT T1.FullName ,  T1.Id FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id HAVING count(*)  >  3;	car_1
SELECT DISTINCT model_list.Model FROM model_list INNER JOIN car_makers ON model_list.Maker = car_makers.Id INNER JOIN cars_data ON model_list.ModelId = cars_data.Id WHERE (car_makers.FullName = 'General Motors' OR cars_data.Weight > 3500)	car_1
SELECT DISTINCT T2.Model FROM CAR_NAMES AS T1 JOIN MODEL_LIST AS T2 ON T1.Model  =  T2.Model JOIN CAR_MAKERS AS T3 ON T2.Maker  =  T3.Id JOIN CARS_DATA AS T4 ON T1.MakeId  =  T4.Id WHERE T3.FullName  =  'General Motors' OR T4.weight  >  3500;	car_1
select distinct year from cars_data where weight between 3000 and 4000;	car_1
select distinct year from cars_data where weight between 3000 and 4000;	car_1
SELECT T1.horsepower FROM CARS_DATA AS T1 ORDER BY T1.accelerate DESC LIMIT 1;	car_1
SELECT T1.horsepower FROM CARS_DATA AS T1 ORDER BY T1.accelerate DESC LIMIT 1;	car_1
SELECT MIN(cylinders)  FROM cars_data  WHERE Id IN (     SELECT Id      FROM car_names      WHERE Make = 'volvo' )  AND Accelerate = (     SELECT MIN(Accelerate)      FROM cars_data      WHERE Id IN (         SELECT Id          FROM car_names          WHERE Make = 'volvo'     ) )	car_1
SELECT MIN(cars_data.Cylinders) AS MinCylinders FROM cars_data JOIN model_list ON cars_data.Id = model_list.ModelId JOIN car_makers ON model_list.Maker = car_makers.Id JOIN car_names ON car_makers.Id = car_names.MakeId WHERE car_names.Make = 'volvo' AND cars_data.Accelerate = (     SELECT MIN(cars_data.Accelerate)     FROM cars_data     JOIN model_list	car_1
SELECT COUNT(*) FROM CARS_DATA WHERE Accelerate  >  ( SELECT Accelerate FROM CARS_DATA ORDER BY Horsepower DESC LIMIT 1 );	car_1
SELECT COUNT(*) FROM CARS_DATA WHERE Accelerate  >  ( SELECT Accelerate FROM CARS_DATA ORDER BY Horsepower DESC LIMIT 1 );	car_1
select count(*) from countries as t1 join car_makers as t2 on t1.countryid  =  t2.country group by t1.countryid having count(*)  >  2	car_1
SELECT COUNT(DISTINCT countries.CountryId) AS NumCountries FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY countries.CountryId HAVING COUNT(DISTINCT car_makers.Id) > 2	car_1
SELECT COUNT(*) FROM CARS_DATA WHERE Cylinders  >  6;	car_1
SELECT COUNT(*) FROM CARS_DATA WHERE Cylinders  >  6;	car_1
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T2.Cylinders  =  4 ORDER BY T2.horsepower DESC LIMIT 1;	car_1
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId  =  T2.Id WHERE T2.Cylinders  =  4 ORDER BY T2.horsepower DESC LIMIT 1;	car_1
SELECT T2.MakeId ,  T2.Make FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id  =  T2.MakeId WHERE T1.Horsepower  >  (SELECT min(Horsepower) FROM CARS_DATA) AND T1.Cylinders  <=  3;	car_1
select t2.makeid ,  t2.make from cars_data as t1 join car_names as t2 on t1.id  =  t2.makeid where t1.horsepower  >  (select min(horsepower) from cars_data) and t1.cylinders  <  4;	car_1
select max(mpg) from cars_data where cylinders  =  8 or year  <  1980	car_1
select max(mpg) from cars_data where cylinders  =  8 or year  <  1980	car_1
SELECT model_list.Model FROM model_list JOIN car_makers ON model_list.Maker = car_makers.Id JOIN car_names ON car_makers.Id = car_names.MakeId JOIN cars_data ON car_names.Model = cars_data.Id WHERE cars_data.Weight < 3500 AND car_makers.Maker != 'Ford Motor Company'	car_1
SELECT DISTINCT model_list.Model FROM model_list JOIN car_names ON model_list.ModelId = car_names.MakeId JOIN cars_data ON model_list.ModelId = cars_data.Id JOIN car_makers ON model_list.Maker = car_makers.Id JOIN countries ON car_makers.Country = countries.CountryId WHERE cars_data.Weight < 3500 AND car_makers.Maker != 'Ford'	car_1
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN CAR_MAKERS AS T2 ON T1.countryId  =  T2.Country;	car_1
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN CAR_MAKERS AS T2 ON T1.countryId  =  T2.Country;	car_1
select t1.id ,  t1.maker from car_makers as t1 join model_list as t2 on t1.id  =  t2.maker group by t1.id having count(*)  >=  2 intersect select t1.id ,  t1.maker from car_makers as t1 join model_list as t2 on t1.id  =  t2.maker join car_names as t3 on t2.model  =  t3.model group by t1.id having count(*)  >  3;	car_1
SELECT T1.Id ,  T1.Maker FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id HAVING count(*)  >=  2 INTERSECT SELECT T1.Id ,  T1.Maker FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id  =  T2.Maker JOIN CAR_NAMES AS T3 ON T2.model  =  T3.model GROUP BY T1.Id HAVING count(*)  >  3;	car_1
SELECT DISTINCT countries.CountryId, countries.CountryName FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country INNER JOIN model_list ON car_makers.Id = model_list.Maker INNER JOIN car_names ON model_list.ModelId = car_names.MakeId WHERE car_makers.Maker = 'fiat' OR countries.CountryId IN (     SELECT countries.CountryId     FROM countries     INNER JOIN car_makers ON countries.CountryId = car_m	car_1
select t1.countryid ,  t1.countryname from countries as t1 join car_makers as t2 on t1.countryid  =  t2.country group by t1.countryid having count(*)  >  3 union select t1.countryid ,  t1.countryname from countries as t1 join car_makers as t2 on t1.countryid  =  t2.country join model_list as t3 on t2.id  =  t3.maker where t3.model  =  'fiat';	car_1
SELECT Country FROM AIRLINES WHERE Airline  =  "JetBlue Airways"	flight_2
SELECT Country  FROM airlines  WHERE Abbreviation = 'B6'	flight_2
SELECT Abbreviation FROM AIRLINES WHERE Airline  =  "JetBlue Airways"	flight_2
SELECT Abbreviation FROM AIRLINES WHERE Airline  =  "JetBlue Airways"	flight_2
SELECT Airline ,  Abbreviation FROM AIRLINES WHERE Country  =  "USA"	flight_2
SELECT Airline ,  Abbreviation FROM AIRLINES WHERE Country  =  "USA"	flight_2
SELECT AirportCode ,  AirportName FROM AIRPORTS WHERE city  =  "Anthony"	flight_2
SELECT AirportCode ,  AirportName FROM AIRPORTS WHERE city  =  "Anthony"	flight_2
SELECT count(*) FROM AIRLINES	flight_2
SELECT COUNT(*) AS total_airlines FROM airlines	flight_2
SELECT count(*) FROM AIRPORTS	flight_2
SELECT count(*) FROM AIRPORTS	flight_2
SELECT count(*) FROM FLIGHTS	flight_2
SELECT count(*) FROM FLIGHTS	flight_2
SELECT Airline FROM AIRLINES WHERE Abbreviation  =  "UAL"	flight_2
SELECT Airline FROM AIRLINES WHERE Abbreviation  =  "UAL"	flight_2
SELECT count(*) FROM AIRLINES WHERE Country  =  "USA"	flight_2
SELECT count(*) FROM AIRLINES WHERE Country  =  "USA"	flight_2
SELECT City ,  Country FROM AIRPORTS WHERE AirportName  =  "Alton"	flight_2
SELECT City ,  Country FROM AIRPORTS WHERE AirportName  =  "Alton"	flight_2
SELECT AirportName FROM AIRPORTS WHERE AirportCode  =  "AKO"	flight_2
SELECT AirportName FROM AIRPORTS WHERE AirportCode  =  "AKO"	flight_2
SELECT AirportName FROM AIRPORTS WHERE City = "Aberdeen"	flight_2
SELECT AirportName FROM AIRPORTS WHERE City = "Aberdeen"	flight_2
SELECT count(*) FROM FLIGHTS WHERE SourceAirport  =  "APG"	flight_2
SELECT count(*) FROM FLIGHTS WHERE SourceAirport  =  "APG"	flight_2
SELECT count(*) FROM FLIGHTS WHERE DestAirport  =  "ATO"	flight_2
SELECT count(*) FROM FLIGHTS WHERE DestAirport  =  "ATO"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN AIRPORTS AS T3 ON T1.SourceAirport  =  T3.AirportCode WHERE T2.City  =  "Ashley" AND T3.City  =  "Aberdeen"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN AIRPORTS AS T3 ON T1.SourceAirport  =  T3.AirportCode WHERE T2.City  =  "Ashley" AND T3.City  =  "Aberdeen"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T1.Airline  =  T2.uid WHERE T2.Airline = "JetBlue Airways"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T1.Airline  =  T2.uid WHERE T2.Airline = "JetBlue Airways"	flight_2
SELECT count(*) FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T2.Airline  =  T1.uid WHERE T1.Airline  =  "United Airlines" AND T2.DestAirport  =  "ASY"	flight_2
SELECT count(*) FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T2.Airline  =  T1.uid WHERE T1.Airline  =  "United Airlines" AND T2.DestAirport  =  "ASY"	flight_2
SELECT count(*) FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T2.Airline  =  T1.uid WHERE T1.Airline  =  "United Airlines" AND T2.SourceAirport  =  "AHD"	flight_2
SELECT count(*) FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T2.Airline  =  T1.uid WHERE T1.Airline  =  "United Airlines" AND T2.SourceAirport  =  "AHD"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN AIRLINES AS T3 ON T3.uid  =  T1.Airline WHERE T2.City  =  "Aberdeen" AND T3.Airline  =  "United Airlines"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN AIRLINES AS T3 ON T3.uid  =  T1.Airline WHERE T2.City  =  "Aberdeen" AND T3.Airline  =  "United Airlines"	flight_2
SELECT airports.City, COUNT(*) AS NumArrivals FROM airports JOIN flights ON airports.AirportCode = flights.DestAirport GROUP BY airports.City ORDER BY NumArrivals DESC LIMIT 1	flight_2
SELECT airports.City FROM airports JOIN (     SELECT DestAirport, COUNT(*) AS freq_dest     FROM flights     GROUP BY DestAirport ) AS dest_freq ON airports.AirportCode = dest_freq.DestAirport ORDER BY dest_freq.freq_dest DESC LIMIT 1	flight_2
SELECT SourceAirport, COUNT(*) AS DepartingFlights FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode GROUP BY SourceAirport ORDER BY DepartingFlights DESC LIMIT 1	flight_2
SELECT SourceAirport, COUNT(*) AS Frequency FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode GROUP BY SourceAirport ORDER BY Frequency DESC LIMIT 1	flight_2
SELECT flights.DestAirport AS AirportCode, COUNT(*) AS NumFlights FROM flights GROUP BY flights.DestAirport ORDER BY NumFlights DESC LIMIT 1	flight_2
SELECT airports.AirportCode FROM airports JOIN (     SELECT SourceAirport, COUNT(*) AS num_flights     FROM flights     GROUP BY SourceAirport     UNION ALL     SELECT DestAirport, COUNT(*) AS num_flights     FROM flights     GROUP BY DestAirport ) AS flight_counts ON airports.AirportCode = flight_counts.SourceAirport OR airports.AirportCode = flight_counts.DestAirport ORDER BY flight_counts.num_flights DESC	flight_2
SELECT T1.AirportCode FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode  =  T2.DestAirport OR T1.AirportCode  =  T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1	flight_2
SELECT T1.AirportCode FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode  =  T2.DestAirport OR T1.AirportCode  =  T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1	flight_2
SELECT airlines.Airline, COUNT(*) AS num_flights FROM flights JOIN airlines ON flights.Airline = airlines.uid GROUP BY airlines.Airline ORDER BY num_flights DESC LIMIT 1	flight_2
SELECT airlines.Airline, COUNT(*) AS num_flights FROM flights JOIN airlines ON flights.Airline = airlines.uid GROUP BY airlines.Airline ORDER BY num_flights DESC LIMIT 1	flight_2
SELECT T1.Abbreviation ,  T1.Country FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline GROUP BY T1.Airline ORDER BY count(*) LIMIT 1	flight_2
SELECT T1.Abbreviation ,  T1.Country FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline GROUP BY T1.Airline ORDER BY count(*) LIMIT 1	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "AHD"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "AHD"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.DestAirport  =  "AHD"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.DestAirport  =  "AHD"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "APG" INTERSECT SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "CVO"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "APG" INTERSECT SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "CVO"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "CVO" EXCEPT SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "APG"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "CVO" EXCEPT SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  "APG"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline GROUP BY T1.Airline HAVING count(*)  >  10	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline GROUP BY T1.Airline HAVING count(*)  >  10	flight_2
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid  =  T2.Airline GROUP BY T1.Airline HAVING count(*)  <  200	flight_2
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T2.uid  =  T1.Airline WHERE T2.Airline  =  "United Airlines"	flight_2
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T2.uid  =  T1.Airline WHERE T2.Airline  =  "United Airlines"	flight_2
SELECT FlightNo FROM FLIGHTS WHERE SourceAirport  =  "APG"	flight_2
SELECT FlightNo FROM FLIGHTS WHERE SourceAirport  =  "APG"	flight_2
SELECT FlightNo FROM FLIGHTS WHERE DestAirport  =  "APG"	flight_2
SELECT FlightNo FROM FLIGHTS WHERE DestAirport  =  "APG"	flight_2
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport   =  T2.AirportCode WHERE T2.City  =  "Aberdeen"	flight_2
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport   =  T2.AirportCode WHERE T2.City  =  "Aberdeen"	flight_2
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport   =  T2.AirportCode WHERE T2.City  =  "Aberdeen"	flight_2
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport   =  T2.AirportCode WHERE T2.City  =  "Aberdeen"	flight_2
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.city  =  "Aberdeen" OR T2.city  =  "Abilene"	flight_2
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.city  =  "Aberdeen" OR T2.city  =  "Abilene"	flight_2
SELECT AirportName FROM Airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM Flights UNION SELECT DestAirport FROM Flights)	flight_2
SELECT AirportName FROM Airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM Flights UNION SELECT DestAirport FROM Flights)	flight_2
SELECT count(*) FROM employee	employee_hire_evaluation
SELECT count(*) FROM employee	employee_hire_evaluation
SELECT name FROM employee ORDER BY age	employee_hire_evaluation
SELECT name FROM employee ORDER BY age	employee_hire_evaluation
SELECT City, COUNT(*) AS Num_of_Employees FROM employee GROUP BY City	employee_hire_evaluation
SELECT City, COUNT(*) AS Num_of_Employees FROM employee GROUP BY City	employee_hire_evaluation
SELECT city FROM employee WHERE age  <  30 GROUP BY city HAVING count(*)  >  1	employee_hire_evaluation
SELECT City FROM employee WHERE Age < 30 GROUP BY City HAVING COUNT(*) > 1	employee_hire_evaluation
SELECT count(*) ,  LOCATION FROM shop GROUP BY LOCATION	employee_hire_evaluation
SELECT count(*) ,  LOCATION FROM shop GROUP BY LOCATION	employee_hire_evaluation
SELECT manager_name ,  district FROM shop ORDER BY number_products DESC LIMIT 1	employee_hire_evaluation
SELECT manager_name ,  district FROM shop ORDER BY number_products DESC LIMIT 1	employee_hire_evaluation
SELECT min(Number_products) ,  max(Number_products) FROM shop	employee_hire_evaluation
SELECT min(Number_products) ,  max(Number_products) FROM shop	employee_hire_evaluation
SELECT name ,  LOCATION ,  district FROM shop ORDER BY number_products DESC	employee_hire_evaluation
SELECT name ,  LOCATION ,  district FROM shop ORDER BY number_products DESC	employee_hire_evaluation
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)	employee_hire_evaluation
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)	employee_hire_evaluation
SELECT t1.name FROM employee AS t1 JOIN evaluation AS t2 ON t1.Employee_ID  =  t2.Employee_ID GROUP BY t2.Employee_ID ORDER BY count(*) DESC LIMIT 1	employee_hire_evaluation
SELECT e.Name FROM employee e JOIN evaluation ev ON e.Employee_ID = ev.Employee_ID GROUP BY e.Employee_ID ORDER BY COUNT(ev.Year_awarded) DESC LIMIT 1	employee_hire_evaluation
SELECT e.Name FROM employee e JOIN evaluation ev ON e.Employee_ID = ev.Employee_ID WHERE ev.Bonus = (SELECT MAX(Bonus) FROM evaluation)	employee_hire_evaluation
SELECT e.Name FROM employee e JOIN evaluation ev ON e.Employee_ID = ev.Employee_ID WHERE ev.Bonus = (SELECT MAX(Bonus) FROM evaluation)	employee_hire_evaluation
SELECT name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)	employee_hire_evaluation
SELECT name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)	employee_hire_evaluation
SELECT t2.name FROM hiring AS t1 JOIN shop AS t2 ON t1.shop_id  =  t2.shop_id GROUP BY t1.shop_id ORDER BY count(*) DESC LIMIT 1	employee_hire_evaluation
SELECT t2.name FROM hiring AS t1 JOIN shop AS t2 ON t1.shop_id  =  t2.shop_id GROUP BY t1.shop_id ORDER BY count(*) DESC LIMIT 1	employee_hire_evaluation
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)	employee_hire_evaluation
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)	employee_hire_evaluation
SELECT count(*) ,  t2.name FROM hiring AS t1 JOIN shop AS t2 ON t1.shop_id  =  t2.shop_id GROUP BY t2.name	employee_hire_evaluation
SELECT shop.Name, COUNT(hiring.Employee_ID) AS Number_of_Employees FROM shop LEFT JOIN hiring ON shop.Shop_ID = hiring.Shop_ID GROUP BY shop.Name	employee_hire_evaluation
SELECT sum(bonus) FROM evaluation	employee_hire_evaluation
SELECT sum(bonus) FROM evaluation	employee_hire_evaluation
SELECT * FROM hiring	employee_hire_evaluation
SELECT * FROM hiring	employee_hire_evaluation
SELECT DISTINCT s1.District FROM shop s1, shop s2 WHERE s1.Number_products < 3000 AND s2.Number_products > 10000 AND s1.District = s2.District	employee_hire_evaluation
SELECT DISTINCT s1.District FROM shop s1, shop s2 WHERE s1.Number_products < 3000 AND s2.Number_products > 10000 AND s1.District = s2.District	employee_hire_evaluation
SELECT count(DISTINCT LOCATION) FROM shop	employee_hire_evaluation
SELECT count(DISTINCT LOCATION) FROM shop	employee_hire_evaluation
SELECT count(*) FROM Documents	cre_Doc_Template_Mgt
SELECT count(*) FROM Documents	cre_Doc_Template_Mgt
SELECT document_id ,  document_name ,  document_description FROM Documents	cre_Doc_Template_Mgt
SELECT document_id ,  document_name ,  document_description FROM Documents	cre_Doc_Template_Mgt
SELECT document_name ,  template_id FROM Documents WHERE Document_Description LIKE "%w%"	cre_Doc_Template_Mgt
SELECT document_name ,  template_id FROM Documents WHERE Document_Description LIKE "%w%"	cre_Doc_Template_Mgt
SELECT document_id ,  template_id ,  Document_Description FROM Documents WHERE document_name  =  "Robbin CV"	cre_Doc_Template_Mgt
SELECT document_id ,  template_id ,  Document_Description FROM Documents WHERE document_name  =  "Robbin CV"	cre_Doc_Template_Mgt
SELECT count(DISTINCT template_id) FROM Documents	cre_Doc_Template_Mgt
SELECT count(DISTINCT template_id) FROM Documents	cre_Doc_Template_Mgt
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Template_Type_Code  =  'PPT'	cre_Doc_Template_Mgt
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Template_Type_Code  =  'PPT'	cre_Doc_Template_Mgt
SELECT Templates.Template_ID, COUNT(Documents.Document_ID) AS Num_Documents FROM Templates LEFT JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Templates.Template_ID	cre_Doc_Template_Mgt
SELECT template_id ,  count(*) FROM Documents GROUP BY template_id	cre_Doc_Template_Mgt
SELECT TOP 1 Templates.Template_ID, Templates.Template_Type_Code FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Templates.Template_ID, Templates.Template_Type_Code ORDER BY COUNT(Documents.Document_ID) DESC	cre_Doc_Template_Mgt
SELECT T1.template_id ,  T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1	cre_Doc_Template_Mgt
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1	cre_Doc_Template_Mgt
SELECT Templates.Template_ID FROM Templates LEFT JOIN Documents ON Templates.Template_ID = Documents.Template_ID WHERE Documents.Document_ID IS NULL	cre_Doc_Template_Mgt
SELECT Templates.Template_ID FROM Templates LEFT JOIN Documents ON Templates.Template_ID = Documents.Template_ID WHERE Documents.Document_ID IS NULL	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates	cre_Doc_Template_Mgt
SELECT template_id ,  version_number ,  template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT template_id ,  version_number ,  template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT DISTINCT template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT DISTINCT template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT template_id FROM Templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"	cre_Doc_Template_Mgt
SELECT template_id FROM Templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates WHERE template_type_code  =  "CV"	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates WHERE template_type_code  =  "CV"	cre_Doc_Template_Mgt
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5	cre_Doc_Template_Mgt
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5	cre_Doc_Template_Mgt
SELECT template_type_code ,  count(*) FROM Templates GROUP BY template_type_code	cre_Doc_Template_Mgt
SELECT template_type_code ,  count(*) FROM Templates GROUP BY template_type_code	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*)  <  3	cre_Doc_Template_Mgt
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*)  <  3	cre_Doc_Template_Mgt
SELECT min(Version_Number) ,  template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT min(Version_Number) ,  template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id WHERE T2.document_name  =  "Data base"	cre_Doc_Template_Mgt
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id WHERE T2.document_name  =  "Data base"	cre_Doc_Template_Mgt
SELECT T2.document_name FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id WHERE T1.template_type_code  =  "BK"	cre_Doc_Template_Mgt
SELECT T2.document_name FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id WHERE T1.template_type_code  =  "BK"	cre_Doc_Template_Mgt
SELECT T1.template_type_code ,  count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_type_code	cre_Doc_Template_Mgt
SELECT T1.template_type_code ,  count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_type_code	cre_Doc_Template_Mgt
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT TOP 1 t.Template_Type_Code FROM Templates t JOIN Documents d ON t.Template_ID = d.Template_ID GROUP BY t.Template_Type_Code ORDER BY COUNT(*) DESC	cre_Doc_Template_Mgt
SELECT DISTINCT Ref_Template_Types.Template_Type_Code FROM Ref_Template_Types LEFT JOIN Templates ON Ref_Template_Types.Template_Type_Code = Templates.Template_Type_Code LEFT JOIN Documents ON Templates.Template_ID = Documents.Template_ID WHERE Documents.Document_ID IS NULL	cre_Doc_Template_Mgt
SELECT DISTINCT RTT.Template_Type_Code FROM Ref_Template_Types RTT LEFT JOIN Templates T ON RTT.Template_Type_Code = T.Template_Type_Code WHERE T.Template_ID IS NULL	cre_Doc_Template_Mgt
SELECT template_type_code ,  template_type_description FROM Ref_template_types	cre_Doc_Template_Mgt
SELECT template_type_code ,  template_type_description FROM Ref_template_types	cre_Doc_Template_Mgt
SELECT template_type_description FROM Ref_template_types WHERE template_type_code  =  "AD"	cre_Doc_Template_Mgt
SELECT template_type_description FROM Ref_template_types WHERE template_type_code  =  "AD"	cre_Doc_Template_Mgt
SELECT template_type_code FROM Ref_template_types WHERE template_type_description  =  "Book"	cre_Doc_Template_Mgt
SELECT template_type_code FROM Ref_template_types WHERE template_type_description  =  "Book"	cre_Doc_Template_Mgt
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code  = T2.template_type_code JOIN Documents AS T3 ON T2.Template_ID  =  T3.template_ID	cre_Doc_Template_Mgt
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code  = T2.template_type_code JOIN Documents AS T3 ON T2.Template_ID  =  T3.template_ID	cre_Doc_Template_Mgt
SELECT T2.template_id FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code  = T2.template_type_code WHERE T1.template_type_description  =  "Presentation"	cre_Doc_Template_Mgt
SELECT T2.template_id FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code  = T2.template_type_code WHERE T1.template_type_description  =  "Presentation"	cre_Doc_Template_Mgt
SELECT count(*) FROM Paragraphs	cre_Doc_Template_Mgt
SELECT count(*) FROM Paragraphs	cre_Doc_Template_Mgt
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_ID  =  T2.document_ID WHERE T2.document_name  =  'Summer Show'	cre_Doc_Template_Mgt
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_ID  =  T2.document_ID WHERE T2.document_name  =  'Summer Show'	cre_Doc_Template_Mgt
SELECT * FROM Paragraphs WHERE Paragraph_Text = 'Korea'	cre_Doc_Template_Mgt
SELECT Paragraph_Text, Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea %'	cre_Doc_Template_Mgt
SELECT T1.paragraph_id ,   T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.Document_Name  =  'Welcome to NY'	cre_Doc_Template_Mgt
SELECT T1.paragraph_id ,   T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.Document_Name  =  'Welcome to NY'	cre_Doc_Template_Mgt
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  "Customer reviews"	cre_Doc_Template_Mgt
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  "Customer reviews"	cre_Doc_Template_Mgt
SELECT document_id ,  count(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id	cre_Doc_Template_Mgt
SELECT document_id ,  count(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id	cre_Doc_Template_Mgt
SELECT T1.document_id ,  T2.document_name ,  count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id	cre_Doc_Template_Mgt
SELECT T1.document_id ,  T2.document_name ,  count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*)  >=  2	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*)  >=  2	cre_Doc_Template_Mgt
SELECT Documents.Document_ID, Documents.Document_Name FROM Documents INNER JOIN (     SELECT Document_ID, COUNT(*) AS Paragraph_Count     FROM Paragraphs     GROUP BY Document_ID ) AS Paragraph_Counts ON Documents.Document_ID = Paragraph_Counts.Document_ID WHERE Paragraph_Counts.Paragraph_Count = (     SELECT MAX(Paragraph_Count)     FROM (         SELECT Document_ID, COUNT(*) AS Paragraph_Count         FROM Paragraphs         GROUP BY Document_ID     )	cre_Doc_Template_Mgt
SELECT d.Document_ID, d.Document_Name FROM Documents d INNER JOIN (     SELECT Document_ID, COUNT(*) AS num_paragraphs     FROM Paragraphs     GROUP BY Document_ID     ORDER BY num_paragraphs DESC     LIMIT 1 ) p ON d.Document_ID = p.Document_ID	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT TOP 1 d.Document_ID FROM Documents d JOIN (     SELECT Document_ID, COUNT(*) AS Paragraph_Count     FROM Paragraphs     GROUP BY Document_ID ) p ON d.Document_ID = p.Document_ID ORDER BY p.Paragraph_Count ASC	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2	cre_Doc_Template_Mgt
SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Brazil' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text  =  'Ireland'	cre_Doc_Template_Mgt
SELECT DISTINCT d.Document_ID FROM Documents d JOIN Paragraphs p ON d.Document_ID = p.Document_ID WHERE p.Paragraph_Text LIKE '%Brazil%' AND p.Paragraph_Text LIKE '%Ireland%'	cre_Doc_Template_Mgt
SELECT count(*) FROM teacher	course_teach
SELECT count(*) FROM teacher	course_teach
SELECT Name FROM teacher ORDER BY Age ASC	course_teach
SELECT Name FROM teacher ORDER BY Age ASC	course_teach
SELECT Age ,  Hometown FROM teacher	course_teach
SELECT Age ,  Hometown FROM teacher	course_teach
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'	course_teach
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'	course_teach
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33	course_teach
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33	course_teach
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1	course_teach
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1	course_teach
SELECT Hometown, COUNT(DISTINCT Teacher_ID) AS Num_Teachers FROM teacher GROUP BY Hometown	course_teach
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown	course_teach
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1	course_teach
SELECT Hometown, COUNT(*) AS Count FROM teacher GROUP BY Hometown ORDER BY Count DESC LIMIT 1	course_teach
SELECT DISTINCT t1.Hometown FROM teacher t1, teacher t2 WHERE t1.Teacher_ID != t2.Teacher_ID AND t1.Hometown = t2.Hometown ORDER BY t1.Hometown	course_teach
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2	course_teach
SELECT teacher.Name, course.Course FROM teacher, course_arrange, course WHERE teacher.Teacher_ID = course_arrange.Teacher_ID AND course_arrange.Course_ID = course.Course_ID	course_teach
SELECT teacher.Name, course.Course FROM teacher, course_arrange, course WHERE teacher.Teacher_ID = course_arrange.Teacher_ID AND course_arrange.Course_ID = course.Course_ID	course_teach
SELECT teacher.Name, course.Course FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID JOIN course ON course_arrange.Course_ID = course.Course_ID ORDER BY teacher.Name ASC	course_teach
SELECT teacher.Name, course.Course FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID JOIN course ON course_arrange.Course_ID = course.Course_ID ORDER BY teacher.Name ASC	course_teach
SELECT teacher.Name FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID JOIN course ON course_arrange.Course_ID = course.Course_ID WHERE course.Course = 'math'	course_teach
SELECT T3.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID  =  T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID  =  T3.Teacher_ID WHERE T2.Course  =  "Math"	course_teach
SELECT teacher.Name, COUNT(course_arrange.Course_ID) AS Number_of_Courses_Taught FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Name	course_teach
SELECT T2.Name ,  COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T2.Name	course_teach
SELECT teacher.Name FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Teacher_ID HAVING COUNT(DISTINCT course_arrange.Course_ID) >= 2	course_teach
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*)  >=  2	course_teach
SELECT Name FROM teacher WHERE Teacher_id NOT IN (SELECT Teacher_id FROM course_arrange)	course_teach
SELECT Name FROM teacher WHERE Teacher_id NOT IN (SELECT Teacher_id FROM course_arrange)	course_teach
SELECT count(*) FROM visitor WHERE age  <  30	museum_visit
SELECT name FROM visitor WHERE Level_of_membership  >  4 ORDER BY Level_of_membership DESC	museum_visit
SELECT avg(age) FROM visitor WHERE Level_of_membership  <=  4	museum_visit
SELECT name ,  Level_of_membership FROM visitor WHERE Level_of_membership  >  4 ORDER BY age DESC	museum_visit
SELECT museum_id ,  name FROM museum ORDER BY num_of_staff DESC LIMIT 1	museum_visit
SELECT avg(num_of_staff) FROM museum WHERE open_year  <  2009	museum_visit
SELECT Num_of_Staff ,  Open_Year FROM museum WHERE name  =  'Plaza Museum'	museum_visit
SELECT name FROM museum WHERE num_of_staff  >  (SELECT min(num_of_staff) FROM museum WHERE open_year  >  2010)	museum_visit
SELECT t1.id ,  t1.name ,  t1.age FROM visitor AS t1 JOIN visit AS t2 ON t1.id  =  t2.visitor_id GROUP BY t1.id HAVING count(*)  >  1	museum_visit
SELECT visitor.ID, visitor.Name, visitor.Level_of_membership FROM visitor INNER JOIN visit ON visitor.ID = visit.visitor_ID GROUP BY visitor.ID, visitor.Name, visitor.Level_of_membership ORDER BY SUM(visit.Total_spent) DESC LIMIT 1	museum_visit
SELECT t2.Museum_ID ,  t1.name FROM museum AS t1 JOIN visit AS t2 ON t1.Museum_ID  =  t2.Museum_ID GROUP BY t2.Museum_ID ORDER BY count(*) DESC LIMIT 1	museum_visit
SELECT name FROM museum WHERE Museum_ID NOT IN (SELECT museum_id FROM visit)	museum_visit
SELECT t1.name ,  t1.age FROM visitor AS t1 JOIN visit AS t2 ON t1.id  =  t2.visitor_id ORDER BY t2.num_of_ticket DESC LIMIT 1	museum_visit
SELECT avg(num_of_ticket) ,  max(num_of_ticket) FROM visit	museum_visit
SELECT sum(t2.Total_spent) FROM visitor AS t1 JOIN visit AS t2 ON t1.id  =  t2.visitor_id WHERE t1.Level_of_membership  =  1	museum_visit
SELECT DISTINCT v.Name FROM visitor v JOIN visit vi ON v.ID = vi.visitor_ID JOIN museum m1 ON vi.Museum_ID = m1.Museum_ID JOIN museum m2 ON vi.Museum_ID = m2.Museum_ID WHERE m1.Open_Year < '2009' AND m2.Open_Year > '2011'	museum_visit
SELECT COUNT(DISTINCT visitor_ID)  FROM visit  WHERE Museum_ID NOT IN (     SELECT Museum_ID      FROM museum      WHERE Open_Year > '2010' )	museum_visit
SELECT count(*) FROM museum WHERE open_year  >  2013 OR open_year  <  2008	museum_visit
SELECT count(*) FROM players	wta_1
SELECT count(*) FROM players	wta_1
SELECT count(*) FROM matches	wta_1
SELECT count(*) FROM matches	wta_1
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'	wta_1
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'	wta_1
SELECT AVG(loser_age) AS avg_loser_age, AVG(winner_age) AS avg_winner_age FROM matches	wta_1
SELECT avg(loser_age) ,  avg(winner_age) FROM matches	wta_1
SELECT avg(winner_rank) FROM matches	wta_1
SELECT AVG(winner_rank) AS average_winner_rank FROM matches WHERE winner_rank IS NOT NULL	wta_1
SELECT MAX(loser_rank) AS highest_rank_of_losers FROM matches WHERE loser_rank IS NOT NULL	wta_1
SELECT MIN(loser_rank) AS best_rank_of_losers FROM matches WHERE loser_rank != 0	wta_1
SELECT count(DISTINCT country_code) FROM players	wta_1
SELECT count(DISTINCT country_code) FROM players	wta_1
SELECT count(DISTINCT loser_name) FROM matches	wta_1
SELECT count(DISTINCT loser_name) FROM matches	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10	wta_1
SELECT winner_name FROM matches WHERE YEAR  =  2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR  =  2016	wta_1
SELECT DISTINCT p.first_name, p.last_name FROM players p JOIN matches m1 ON p.player_id = m1.winner_id AND m1.year = 2013 JOIN matches m2 ON p.player_id = m2.winner_id AND m2.year = 2016	wta_1
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016	wta_1
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016	wta_1
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'	wta_1
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'	wta_1
SELECT first_name ,  country_code FROM players ORDER BY birth_date LIMIT 1	wta_1
SELECT first_name ,  country_code FROM players ORDER BY birth_date LIMIT 1	wta_1
SELECT first_name ,  last_name FROM players ORDER BY birth_date	wta_1
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM players ORDER BY birth_date	wta_1
SELECT first_name ,  last_name FROM players WHERE hand  =  'L' ORDER BY birth_date	wta_1
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM players WHERE hand = 'L' ORDER BY birth_date	wta_1
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id ORDER BY T2.tours DESC LIMIT 1	wta_1
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id ORDER BY T2.tours DESC LIMIT 1	wta_1
SELECT year, COUNT(*) AS num_matches FROM matches GROUP BY year ORDER BY num_matches DESC LIMIT 1	wta_1
SELECT year, COUNT(*) AS num_matches FROM matches GROUP BY year ORDER BY num_matches DESC LIMIT 1	wta_1
SELECT winner_name, SUM(winner_rank_points) AS total_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1	wta_1
SELECT winner_name, MAX(winner_rank_points) AS rank_points FROM matches GROUP BY winner_name ORDER BY rank_points DESC LIMIT 1	wta_1
SELECT winner_name FROM matches WHERE tourney_name  =  'Australian Open' ORDER BY winner_rank_points DESC LIMIT 1	wta_1
SELECT winner_name FROM matches WHERE tourney_name  =  'Australian Open' ORDER BY winner_rank_points DESC LIMIT 1	wta_1
SELECT winner_name ,  loser_name FROM matches ORDER BY minutes DESC LIMIT 1	wta_1
SELECT winner_name ,  loser_name FROM matches ORDER BY minutes DESC LIMIT 1	wta_1
SELECT avg(ranking) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name	wta_1
SELECT avg(ranking) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name	wta_1
SELECT sum(ranking_points) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name	wta_1
SELECT sum(ranking_points) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name	wta_1
SELECT count(*) ,  country_code FROM players GROUP BY country_code	wta_1
SELECT count(*) ,  country_code FROM players GROUP BY country_code	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50	wta_1
SELECT sum(tours) ,  ranking_date FROM rankings GROUP BY ranking_date	wta_1
SELECT sum(tours) ,  ranking_date FROM rankings GROUP BY ranking_date	wta_1
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR	wta_1
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR	wta_1
SELECT DISTINCT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3	wta_1
SELECT DISTINCT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3	wta_1
SELECT count(DISTINCT winner_name) FROM matches WHERE tourney_name  =  'WTA Championships' AND winner_hand  =  'L'	wta_1
SELECT count(DISTINCT winner_name) FROM matches WHERE tourney_name  =  'WTA Championships' AND winner_hand  =  'L'	wta_1
SELECT players.first_name, players.country_code, players.birth_date FROM players JOIN matches ON players.player_id = matches.winner_id WHERE matches.winner_rank_points = (     SELECT MAX(winner_rank_points)     FROM matches ) LIMIT 1	wta_1
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1	wta_1
SELECT count(*) ,  hand FROM players GROUP BY hand	wta_1
SELECT count(*) ,  hand FROM players GROUP BY hand	wta_1
SELECT count(*) FROM ship WHERE disposition_of_ship  =  'Captured'	battle_death
SELECT name ,  tonnage FROM ship ORDER BY name DESC	battle_death
SELECT name ,  date FROM battle	battle_death
SELECT max(killed) ,  min(killed) FROM death	battle_death
SELECT avg(injured) FROM death	battle_death
SELECT d.note, d.killed, d.injured FROM death d JOIN ship s ON d.caused_by_ship_id = s.id WHERE s.tonnage = 't'	battle_death
SELECT name, result FROM battle WHERE bulgarian_commander != 'Boril'	battle_death
SELECT DISTINCT T1.id ,  T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.ship_type  =  'Brig'	battle_death
SELECT T1.id ,  T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle JOIN death AS T3 ON T2.id  =  T3.caused_by_ship_id GROUP BY T1.id HAVING sum(T3.killed)  >  10	battle_death
SELECT d.caused_by_ship_id AS id, s.name FROM death d JOIN ship s ON d.caused_by_ship_id = s.id GROUP BY d.caused_by_ship_id, s.name ORDER BY SUM(d.injured) DESC LIMIT 1	battle_death
SELECT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  'Baldwin I'	battle_death
SELECT count(DISTINCT RESULT) FROM battle	battle_death
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT lost_in_battle FROM ship WHERE tonnage  =  '225' );	battle_death
SELECT b.name, b.date FROM battle b JOIN ship s1 ON b.id = s1.lost_in_battle JOIN ship s2 ON b.id = s2.lost_in_battle WHERE s1.name = 'Lettice' AND s2.name = 'HMS Atalanta'	battle_death
SELECT name ,  RESULT ,  bulgarian_commander FROM battle EXCEPT SELECT T1.name ,  T1.result ,  T1.bulgarian_commander FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.location  =  'English Channel'	battle_death
SELECT note FROM death WHERE note LIKE '%East%'	battle_death
SELECT line_1 ,  line_2 FROM addresses	student_transcripts_tracking
SELECT line_1 ,  line_2 FROM addresses	student_transcripts_tracking
SELECT count(*) FROM Courses	student_transcripts_tracking
SELECT count(*) FROM Courses	student_transcripts_tracking
SELECT course_description FROM Courses WHERE course_name  =  'math'	student_transcripts_tracking
SELECT course_description FROM Courses WHERE course_name  =  'math'	student_transcripts_tracking
SELECT zip_postcode FROM Addresses WHERE city  =  'Port Chelsea'	student_transcripts_tracking
SELECT zip_postcode FROM Addresses WHERE city  =  'Port Chelsea'	student_transcripts_tracking
SELECT T2.department_name ,  T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
select t2.department_name ,  t1.department_id from degree_programs as t1 join departments as t2 on t1.department_id  =  t2.department_id group by t1.department_id order by count(*) desc limit 1	student_transcripts_tracking
SELECT count(DISTINCT department_id) FROM Degree_Programs	student_transcripts_tracking
SELECT count(DISTINCT department_id) FROM Degree_Programs	student_transcripts_tracking
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs	student_transcripts_tracking
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs	student_transcripts_tracking
SELECT count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id  =  T2.department_id WHERE T1.department_name  =  'engineer'	student_transcripts_tracking
SELECT count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id  =  T2.department_id WHERE T1.department_name  =  'engineer'	student_transcripts_tracking
SELECT section_name ,  section_description FROM Sections	student_transcripts_tracking
SELECT section_name ,  section_description FROM Sections	student_transcripts_tracking
SELECT T1.course_name ,  T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  <=  2	student_transcripts_tracking
SELECT T1.course_name ,  T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  <=  2	student_transcripts_tracking
SELECT section_name FROM Sections ORDER BY section_name DESC	student_transcripts_tracking
SELECT section_name FROM Sections ORDER BY section_name DESC	student_transcripts_tracking
SELECT T1.semester_name ,  T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.semester_name ,  T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'	student_transcripts_tracking
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'	student_transcripts_tracking
SELECT s.student_id, s.first_name, s.middle_name, s.last_name FROM Students s INNER JOIN Student_Enrolment se ON s.student_id = se.student_id INNER JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id INNER JOIN Semesters sem ON se.semester_id = sem.semester_id WHERE se.student_id IN (     SELECT se2.student_id     FROM Student_Enrolment se2     INNER JOIN Degree	student_transcripts_tracking
SELECT s.student_id, s.first_name, s.middle_name, s.last_name FROM Students s INNER JOIN Student_Enrolment se ON s.student_id = se.student_id WHERE se.semester_id = [semester_id] GROUP BY s.student_id, s.first_name, s.middle_name, s.last_name HAVING COUNT(DISTINCT se.degree_program_id) = 2	student_transcripts_tracking
SELECT DISTINCT T1.first_name ,  T1.middle_name ,  T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  'Bachelor'	student_transcripts_tracking
SELECT DISTINCT T1.first_name ,  T1.middle_name ,  T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  'Bachelor'	student_transcripts_tracking
SELECT DP.degree_summary_name, COUNT(SE.student_id) AS enrolled_students FROM Degree_Programs DP JOIN Student_Enrolment SE ON DP.degree_program_id = SE.degree_program_id GROUP BY DP.degree_summary_name ORDER BY enrolled_students DESC LIMIT 1	student_transcripts_tracking
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.degree_program_id ,  T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.degree_program_id ,  T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT s.student_id, s.first_name, s.middle_name, s.last_name, COUNT(se.student_enrolment_id) AS num_enrollments FROM Students s JOIN Student_Enrolment se ON s.student_id = se.student_id GROUP BY s.student_id, s.first_name, s.middle_name, s.last_name ORDER BY num_enrollments DESC LIMIT 1	student_transcripts_tracking
SELECT s.student_id, s.first_name, s.middle_name, s.last_name, COUNT(se.student_enrolment_id) AS num_enrollments FROM Students s JOIN Student_Enrolment se ON s.student_id = se.student_id GROUP BY s.student_id, s.first_name, s.middle_name, s.last_name HAVING COUNT(se.student_enrolment_id) = (     SELECT MAX(num_enrollments)     FROM (         SELECT COUNT(student_enrol	student_transcripts_tracking
SELECT semester_name FROM Semesters WHERE semester_id NOT IN( SELECT semester_id FROM Student_Enrolment )	student_transcripts_tracking
SELECT semester_name FROM Semesters WHERE semester_id NOT IN( SELECT semester_id FROM Student_Enrolment )	student_transcripts_tracking
SELECT DISTINCT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id	student_transcripts_tracking
SELECT DISTINCT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id	student_transcripts_tracking
SELECT  T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT  T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id  =  T2.address_id WHERE T2.state_province_county  =  'NorthCarolina' EXCEPT SELECT DISTINCT T3.last_name FROM Students AS T3 JOIN Student_Enrolment AS T4 ON T3.student_id  =  T4.student_id	student_transcripts_tracking
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id  =  T2.address_id WHERE T2.state_province_county  =  'NorthCarolina' EXCEPT SELECT DISTINCT T3.last_name FROM Students AS T3 JOIN Student_Enrolment AS T4 ON T3.student_id  =  T4.student_id	student_transcripts_tracking
SELECT T.transcript_id, T.transcript_date FROM Transcripts T INNER JOIN Transcript_Contents TC ON T.transcript_id = TC.transcript_id GROUP BY T.transcript_id, T.transcript_date HAVING COUNT(DISTINCT TC.student_course_id) >= 2	student_transcripts_tracking
SELECT T.transcript_id, T.transcript_date FROM Transcripts T INNER JOIN Transcript_Contents TC ON T.transcript_id = TC.transcript_id GROUP BY T.transcript_id, T.transcript_date HAVING COUNT(DISTINCT TC.student_course_id) >= 2	student_transcripts_tracking
SELECT cell_mobile_number FROM Students WHERE first_name  =  'Timmothy' AND last_name  =  'Ward'	student_transcripts_tracking
select cell_mobile_number from students where first_name  =  'timmothy' and last_name  =  'ward'	student_transcripts_tracking
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT first_name, middle_name, last_name FROM Students WHERE student_id IN (     SELECT student_id     FROM Student_Enrolment     WHERE degree_program_id IN (         SELECT degree_program_id         FROM Degree_Programs         WHERE department_id IN (             SELECT department_id             FROM Departments             WHERE department_name = 'Graduate School'         )     ) ) ORDER BY date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_left ASC LIMIT 1	student_transcripts_tracking
SELECT first_name FROM Students WHERE current_address_id != permanent_address_id	student_transcripts_tracking
SELECT first_name  FROM Students  WHERE current_address_id != permanent_address_id	student_transcripts_tracking
SELECT a.address_id, a.line_1, a.line_2, a.line_3 FROM Addresses a INNER JOIN Students s ON a.address_id = s.current_address_id GROUP BY a.address_id, a.line_1, a.line_2, a.line_3 ORDER BY COUNT(s.student_id) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.address_id ,  T1.line_1 ,  T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT avg(transcript_date) FROM Transcripts	student_transcripts_tracking
SELECT avg(transcript_date) FROM Transcripts	student_transcripts_tracking
SELECT transcript_date ,  other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking
SELECT transcript_date ,  other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking
SELECT count(*) FROM Transcripts	student_transcripts_tracking
SELECT count(*) FROM Transcripts	student_transcripts_tracking
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1	student_transcripts_tracking
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1	student_transcripts_tracking
SELECT SEC.student_course_id, COUNT(DISTINCT TC.transcript_id) AS max_enrollment_result FROM Student_Enrolment_Courses SEC JOIN Student_Enrolment SE ON SEC.student_enrolment_id = SE.student_enrolment_id JOIN Transcripts T ON T.transcript_id = TC.transcript_id GROUP BY SEC.student_course_id ORDER BY max_enrollment_result DESC LIMIT 1	student_transcripts_tracking
SELECT SEC.course_id, COUNT(*) AS course_count FROM Student_Enrolment_Courses SEC JOIN Transcripts T ON SEC.student_enrolment_id = T.transcript_id GROUP BY SEC.course_id HAVING COUNT(*) = (   SELECT MAX(course_count)   FROM (     SELECT SEC.course_id, COUNT(*) AS course_count     FROM Student_Enrolment_Courses SEC     JOIN Transcripts T ON SEC.student_enrolment_id = T.transcript	student_transcripts_tracking
SELECT T2.transcript_date ,  T1.transcript_id FROM Transcript_Contents AS T1 JOIN Transcripts AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) ASC LIMIT 1	student_transcripts_tracking
SELECT T2.transcript_date ,  T1.transcript_id FROM Transcript_Contents AS T1 JOIN Transcripts AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) ASC LIMIT 1	student_transcripts_tracking
SELECT DISTINCT Semesters.semester_name FROM Semesters INNER JOIN Student_Enrolment ON Semesters.semester_id = Student_Enrolment.semester_id INNER JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id WHERE Degree_Programs.degree_summary_name = 'Master' AND Semesters.semester_id IN (     SELECT Semesters.semester_id     FROM Semesters     INNER JOIN Student_Enrolment ON	student_transcripts_tracking
SELECT se.semester_id FROM Student_Enrolment se INNER JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id WHERE dp.degree_summary_name IN ('Masters', 'Bachelors') GROUP BY se.semester_id HAVING COUNT(DISTINCT dp.degree_summary_name) = 2	student_transcripts_tracking
SELECT count(DISTINCT current_address_id) FROM Students	student_transcripts_tracking
SELECT DISTINCT Addresses.* FROM Addresses INNER JOIN Students ON Addresses.address_id = Students.current_address_id OR Addresses.address_id = Students.permanent_address_id	student_transcripts_tracking
SELECT other_student_details FROM Students ORDER BY other_student_details DESC	student_transcripts_tracking
SELECT other_student_details FROM Students ORDER BY other_student_details DESC	student_transcripts_tracking
SELECT section_description FROM Sections WHERE section_name  =  'h'	student_transcripts_tracking
SELECT section_description FROM Sections WHERE section_name  =  'h'	student_transcripts_tracking
select t1.first_name from students as t1 join addresses as t2 on t1.permanent_address_id  =  t2.address_id where t2.country  =  'haiti' or t1.cell_mobile_number  =  '09700166582'	student_transcripts_tracking
select t1.first_name from students as t1 join addresses as t2 on t1.permanent_address_id  =  t2.address_id where t2.country  =  'haiti' or t1.cell_mobile_number  =  '09700166582'	student_transcripts_tracking
SELECT Title FROM Cartoon ORDER BY title	tvshow
SELECT Title FROM Cartoon ORDER BY title	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones";	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones";	tvshow
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr";	tvshow
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr";	tvshow
SELECT title ,  Directed_by FROM Cartoon ORDER BY Original_air_date	tvshow
SELECT title ,  Directed_by FROM Cartoon ORDER BY Original_air_date	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti";	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti";	tvshow
SELECT Country, COUNT(*) AS Number_of_TV_Channels FROM TV_Channel GROUP BY Country ORDER BY Number_of_TV_Channels DESC LIMIT 1	tvshow
SELECT Country, COUNT(*) AS Number_of_Channels FROM TV_Channel GROUP BY Country ORDER BY Number_of_Channels DESC LIMIT 1	tvshow
SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_Channel;	tvshow
SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_Channel;	tvshow
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio";	tvshow
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio";	tvshow
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio";	tvshow
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio";	tvshow
SELECT count(*) FROM TV_Channel WHERE LANGUAGE = "English";	tvshow
SELECT count(*) FROM TV_Channel WHERE LANGUAGE = "English";	tvshow
SELECT Language, COUNT(*) AS Number_of_TV_Channels FROM TV_Channel GROUP BY Language ORDER BY Number_of_TV_Channels ASC LIMIT 1	tvshow
SELECT Language, COUNT(*) AS Num_Channels FROM TV_Channel GROUP BY Language HAVING COUNT(*) = (   SELECT MIN(Num_Channels)   FROM (     SELECT COUNT(*) AS Num_Channels     FROM TV_Channel     GROUP BY Language   ) AS Channel_Count )	tvshow
SELECT LANGUAGE ,  count(*) FROM TV_Channel GROUP BY LANGUAGE	tvshow
SELECT LANGUAGE ,  count(*) FROM TV_Channel GROUP BY LANGUAGE	tvshow
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Title = "The Rise of the Blue Beetle!";	tvshow
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Title = "The Rise of the Blue Beetle!";	tvshow
SELECT T2.Title FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio";	tvshow
SELECT Cartoon.Title FROM Cartoon INNER JOIN TV_series ON Cartoon.Channel = TV_series.Channel INNER JOIN TV_Channel ON TV_series.Channel = TV_Channel.id WHERE TV_Channel.series_name = 'Sky Radio'	tvshow
SELECT Episode FROM TV_series ORDER BY rating	tvshow
SELECT Episode FROM TV_series ORDER BY rating	tvshow
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;	tvshow
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;	tvshow
SELECT max(SHARE) , min(SHARE) FROM TV_series;	tvshow
SELECT max(SHARE) , min(SHARE) FROM TV_series;	tvshow
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime";	tvshow
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime";	tvshow
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime";	tvshow
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime";	tvshow
SELECT T1.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = "A Love of a Lifetime";	tvshow
SELECT T1.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = "A Love of a Lifetime";	tvshow
SELECT T2.Episode FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio";	tvshow
SELECT T2.Episode FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio";	tvshow
SELECT count(*) ,  Directed_by FROM cartoon GROUP BY Directed_by	tvshow
SELECT count(*) ,  Directed_by FROM cartoon GROUP BY Directed_by	tvshow
select production_code ,  channel from cartoon order by original_air_date desc limit 1	tvshow
select production_code ,  channel from cartoon order by original_air_date desc limit 1	tvshow
SELECT package_option ,  series_name FROM TV_Channel WHERE hight_definition_TV  =  "yes"	tvshow
SELECT package_option ,  series_name FROM TV_Channel WHERE hight_definition_TV  =  "yes"	tvshow
SELECT T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.written_by  =  'Todd Casey'	tvshow
SELECT T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.written_by  =  'Todd Casey'	tvshow
SELECT country FROM TV_Channel EXCEPT SELECT T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.written_by  =  'Todd Casey'	tvshow
SELECT country FROM TV_Channel EXCEPT SELECT T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.written_by  =  'Todd Casey'	tvshow
SELECT DISTINCT TV_Channel.series_name, TV_Channel.Country FROM TV_Channel INNER JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Directed_by IN ('Ben Jones', 'Michael Chang')	tvshow
SELECT T1.series_name ,  T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by  =  'Michael Chang' INTERSECT SELECT T1.series_name ,  T1.country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by  =  'Ben Jones'	tvshow
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language != 'English'	tvshow
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language != 'English'	tvshow
SELECT id FROM tv_channel GROUP BY country HAVING count(*)  >  2	tvshow
SELECT id FROM tv_channel GROUP BY country HAVING count(*)  >  2	tvshow
SELECT DISTINCT TV_Channel.id FROM TV_Channel LEFT JOIN Cartoon ON TV_Channel.series_name = Cartoon.Title AND Cartoon.Directed_by = 'Ben Jones' WHERE Cartoon.id IS NULL	tvshow
SELECT DISTINCT TV_Channel.id FROM TV_Channel LEFT JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Directed_by != 'Ben Jones' OR Cartoon.Directed_by IS NULL	tvshow
SELECT DISTINCT TV_Channel.Package_Option FROM TV_Channel LEFT JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Directed_by != 'Ben Jones' OR Cartoon.Directed_by IS NULL	tvshow
SELECT package_option FROM TV_Channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by  =  'Ben Jones')	tvshow
SELECT count(*) FROM poker_player	poker_player
SELECT count(*) FROM poker_player	poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC	poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC	poker_player
SELECT Final_Table_Made ,  Best_Finish FROM poker_player	poker_player
SELECT Final_Table_Made ,  Best_Finish FROM poker_player	poker_player
SELECT avg(Earnings) FROM poker_player	poker_player
SELECT avg(Earnings) FROM poker_player	poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1	poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1	poker_player
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000	poker_player
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Earnings  >  300000	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Earnings  >  300000	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Final_Table_Made	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Final_Table_Made	poker_player
SELECT p.Birth_Date FROM poker_player pp JOIN people p ON pp.People_ID = p.People_ID WHERE pp.Earnings = (   SELECT MIN(Earnings)   FROM poker_player ) LIMIT 1	poker_player
SELECT p.Birth_Date FROM poker_player pp JOIN people p ON pp.People_ID = p.People_ID WHERE pp.Earnings = (   SELECT MIN(Earnings)   FROM poker_player ) LIMIT 1	poker_player
SELECT Poker_Player.Money_Rank FROM Poker_Player JOIN People ON Poker_Player.People_ID = People.People_ID WHERE People.Height = (SELECT MAX(Height) FROM People)	poker_player
SELECT Poker_Player.Money_Rank FROM Poker_Player JOIN People ON Poker_Player.People_ID = People.People_ID WHERE People.Height = (     SELECT MAX(Height)     FROM People     JOIN Poker_Player ON People.People_ID = Poker_Player.People_ID )	poker_player
SELECT AVG(p.Earnings)  FROM poker_player p  JOIN people pe ON p.People_ID = pe.People_ID  WHERE pe.Height > 200	poker_player
SELECT AVG(Earnings)  FROM poker_player  JOIN people ON poker_player.People_ID = people.People_ID  WHERE Height > 200	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Earnings DESC	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Earnings DESC	poker_player
SELECT people.Nationality, COUNT(*) as Number_of_People FROM people GROUP BY people.Nationality	poker_player
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality	poker_player
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	poker_player
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	poker_player
SELECT DISTINCT p1.Nationality FROM people p1, people p2 WHERE p1.Nationality = p2.Nationality AND p1.People_ID != p2.People_ID ORDER BY p1.Nationality	poker_player
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2	poker_player
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC	poker_player
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC	poker_player
SELECT Name FROM people WHERE Nationality != 'Russia'	poker_player
SELECT Name FROM people WHERE Nationality != 'Russia'	poker_player
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)	poker_player
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)	poker_player
SELECT count(DISTINCT Nationality) FROM people	poker_player
SELECT count(DISTINCT Nationality) FROM people	poker_player
SELECT count(*) FROM area_code_state	voter_1
SELECT contestant_number ,  contestant_name FROM contestants ORDER BY contestant_name DESC	voter_1
SELECT vote_id ,  phone_number ,  state FROM votes	voter_1
SELECT max(area_code) ,  min(area_code) FROM area_code_state	voter_1
SELECT max(created) FROM votes WHERE state  =  'CA'	voter_1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'	voter_1
SELECT DISTINCT state ,  created FROM votes	voter_1
SELECT T1.contestant_number , T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T1.contestant_number HAVING count(*)  >=  2	voter_1
SELECT T1.contestant_number , T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1	voter_1
SELECT count(*) FROM votes WHERE state  =  'NY' OR state  =  'CA'	voter_1
SELECT count(*) FROM contestants WHERE contestant_number NOT IN ( SELECT contestant_number FROM votes )	voter_1
SELECT TOP 1 area_code FROM AREA_CODE_STATE JOIN VOTES ON AREA_CODE_STATE.state = VOTES.state GROUP BY area_code ORDER BY COUNT(*) DESC	voter_1
SELECT T2.created ,  T2.state ,  T2.phone_number FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number  =  T2.contestant_number WHERE T1.contestant_name  =  'Tabatha Gehling'	voter_1
SELECT area_code FROM AREA_CODE_STATE WHERE state IN (     SELECT state     FROM VOTES     JOIN CONTESTANTS ON VOTES.contestant_number = CONTESTANTS.contestant_number     WHERE contestant_name = 'Tabatha Gehling' ) AND state IN (     SELECT state     FROM VOTES     JOIN CONTESTANTS ON VOTES.contestant_number = CONTESTANTS.contestant_number     WHERE contestant_name = 'Kelly Cla	voter_1
select contestant_name from contestants where contestant_name like "%al%"	voter_1
SELECT Name FROM country WHERE IndepYear  >  1950	world_1
SELECT Name FROM country WHERE IndepYear  >  1950	world_1
SELECT count(*) FROM country WHERE GovernmentForm  =  "Republic"	world_1
SELECT count(*) FROM country WHERE GovernmentForm  =  "Republic"	world_1
SELECT sum(SurfaceArea) FROM country WHERE Region  =  "Caribbean"	world_1
SELECT sum(SurfaceArea) FROM country WHERE Region  =  "Caribbean"	world_1
SELECT Continent FROM country WHERE Name  =  "Anguilla"	world_1
SELECT Continent FROM country WHERE Name  =  "Anguilla"	world_1
SELECT Region FROM country AS T1 JOIN city AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Name  =  "Kabul"	world_1
SELECT Region FROM country AS T1 JOIN city AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Name  =  "Kabul"	world_1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  "Aruba" ORDER BY Percentage DESC LIMIT 1	world_1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  "Aruba" ORDER BY Percentage DESC LIMIT 1	world_1
SELECT Population ,  LifeExpectancy FROM country WHERE Name  =  "Brazil"	world_1
SELECT Population ,  LifeExpectancy FROM country WHERE Name  =  "Brazil"	world_1
SELECT Population ,  Region FROM country WHERE Name  =  "Angola"	world_1
SELECT Population ,  Region FROM country WHERE Name  =  "Angola"	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Region  =  "Central Africa"	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Region  =  "Central Africa"	world_1
SELECT Name FROM country WHERE Continent  =  "Asia" ORDER BY LifeExpectancy LIMIT 1	world_1
SELECT Name FROM country WHERE Continent  =  "Asia" ORDER BY LifeExpectancy LIMIT 1	world_1
SELECT sum(Population) ,  max(GNP) FROM country WHERE Continent  =  "Asia"	world_1
SELECT sum(Population) ,  max(GNP) FROM country WHERE Continent  =  "Asia"	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Continent  =  "Africa" AND GovernmentForm  =  "Republic"	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Continent  =  "Africa" AND GovernmentForm  =  "Republic"	world_1
SELECT sum(SurfaceArea) FROM country WHERE Continent  =  "Asia" OR Continent  =  "Europe"	world_1
SELECT sum(SurfaceArea) FROM country WHERE Continent  =  "Asia" OR Continent  =  "Europe"	world_1
SELECT sum(Population) FROM city WHERE District  =  "Gelderland"	world_1
SELECT sum(Population) FROM city WHERE District  =  "Gelderland"	world_1
SELECT avg(GNP) ,  sum(population) FROM country WHERE GovernmentForm  =  "US Territory"	world_1
SELECT AVG(country.GNP) AS mean_GNP, SUM(country.Population) AS total_population FROM country WHERE country.Continent = 'North America' AND country.Region = 'Caribbean' AND country.GovernmentForm = 'Nonmetropolitan Territory of The US'	world_1
SELECT count(DISTINCT LANGUAGE) FROM countrylanguage	world_1
SELECT count(DISTINCT LANGUAGE) FROM countrylanguage	world_1
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  "Africa"	world_1
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  "Africa"	world_1
SELECT COUNT(T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  "Aruba"	world_1
SELECT COUNT(T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  "Aruba"	world_1
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  "Afghanistan" AND IsOfficial  =  "T"	world_1
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  "Afghanistan" AND IsOfficial  =  "T"	world_1
SELECT country.Name FROM country JOIN (     SELECT CountryCode, COUNT(*) AS num_languages     FROM countrylanguage     GROUP BY CountryCode     ORDER BY num_languages DESC     LIMIT 1 ) AS lang_count ON country.Code = lang_count.CountryCode	world_1
SELECT country.Name FROM country JOIN (     SELECT CountryCode, COUNT(*) AS num_languages     FROM countrylanguage     GROUP BY CountryCode ) AS lang_count ON country.Code = lang_count.CountryCode ORDER BY lang_count.num_languages DESC LIMIT 1	world_1
SELECT country.Continent, COUNT(DISTINCT countrylanguage.Language) AS Num_Languages FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Continent ORDER BY Num_Languages DESC LIMIT 1	world_1
SELECT country.Continent, COUNT(DISTINCT countrylanguage.Language) AS NumLanguages FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Continent ORDER BY NumLanguages DESC LIMIT 1	world_1
SELECT COUNT(*) FROM (SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "Dutch")	world_1
SELECT COUNT(*) FROM (SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "Dutch")	world_1
SELECT DISTINCT c.Name FROM country c JOIN countrylanguage cl1 ON c.Code = cl1.CountryCode AND cl1.Language = 'English' AND cl1.IsOfficial = 'T' JOIN countrylanguage cl2 ON c.Code = cl2.CountryCode AND cl2.Language = 'French' AND cl2.IsOfficial = 'T'	world_1
SELECT c.Name FROM country c INNER JOIN countrylanguage cl1 ON c.Code = cl1.CountryCode AND cl1.Language = 'English' AND cl1.IsOfficial = 'T' INNER JOIN countrylanguage cl2 ON c.Code = cl2.CountryCode AND cl2.Language = 'French' AND cl2.IsOfficial = 'T'	world_1
SELECT c.Name FROM country c INNER JOIN countrylanguage cl1 ON c.Code = cl1.CountryCode AND cl1.Language = 'English' AND cl1.IsOfficial = 'T' INNER JOIN countrylanguage cl2 ON c.Code = cl2.CountryCode AND cl2.Language = 'French' AND cl2.IsOfficial = 'T'	world_1
SELECT DISTINCT c.Name FROM country c JOIN countrylanguage cl1 ON c.Code = cl1.CountryCode AND cl1.Language = 'English' AND cl1.IsOfficial = 'T' JOIN countrylanguage cl2 ON c.Code = cl2.CountryCode AND cl2.Language = 'French' AND cl2.IsOfficial = 'T'	world_1
SELECT COUNT(DISTINCT c.Continent) AS num_continents FROM countrylanguage cl JOIN country c ON cl.CountryCode = c.Code WHERE cl.Language = 'Chinese' AND cl.IsOfficial = 'T'	world_1
SELECT COUNT(DISTINCT country.Continent)  FROM country  INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode  WHERE countrylanguage.Language = 'Chinese' AND countrylanguage.IsOfficial = 'T'	world_1
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English" OR T2.Language  =  "Dutch"	world_1
SELECT DISTINCT c.Region FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.Language = 'Dutch' OR cl.Language = 'English'	world_1
SELECT DISTINCT c.Name FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.IsOfficial = 'T' AND (cl.Language = 'English' OR cl.Language = 'Dutch') ORDER BY c.Name	world_1
SELECT DISTINCT c.Name FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.IsOfficial = 'T' AND (cl.Language = 'English' OR cl.Language = 'Dutch') ORDER BY c.Name	world_1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Continent  =  "Asia" GROUP BY T2.Language ORDER BY COUNT (*) DESC LIMIT 1	world_1
SELECT CountryLanguage.Language FROM CountryLanguage JOIN (     SELECT Country.Continent, MAX(COUNT(CountryLanguage.CountryCode)) AS MaxCount     FROM Country     JOIN CountryLanguage ON Country.Code = CountryLanguage.CountryCode     WHERE Country.Continent = 'Asia'     GROUP BY CountryLanguage.Language ) AS T ON CountryLanguage.CountryCode = Country.Code WHERE CountryLanguage.IsOfficial = 'T' AND Country.Continent = 'Asia' GROUP BY CountryLanguage.Language	world_1
SELECT DISTINCT cl.Language FROM countrylanguage cl JOIN country c ON cl.CountryCode = c.Code WHERE c.GovernmentForm LIKE '%Republic%' AND cl.Language NOT IN (     SELECT cl2.Language     FROM countrylanguage cl2     JOIN country c2 ON cl2.CountryCode = c2.Code     WHERE c2.GovernmentForm LIKE '%Republic%'     GROUP BY cl2.Language     HAVING COUNT(DISTINCT cl2.CountryCode) > 1	world_1
SELECT DISTINCT cl.Language FROM countrylanguage cl JOIN country c ON cl.CountryCode = c.Code WHERE c.GovernmentForm = 'Republic'  AND cl.Language NOT IN (     SELECT cl2.Language     FROM countrylanguage cl2     JOIN country c2 ON cl2.CountryCode = c2.Code     WHERE c2.GovernmentForm = 'Republic'      GROUP BY cl2.Language     HAVING COUNT(DISTINCT cl2.CountryCode) >	world_1
SELECT T1.Name ,  T1.Population FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode  =  T2.CountryCode WHERE T2.Language  =  "English" ORDER BY T1.Population DESC LIMIT 1	world_1
SELECT city.Name  FROM city  JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode  WHERE countrylanguage.Language = 'English'  ORDER BY city.Population DESC  LIMIT 1	world_1
SELECT Name ,  Population ,  LifeExpectancy FROM country WHERE Continent  =  "Asia" ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT Name ,  Population ,  LifeExpectancy FROM country WHERE Continent  =  "Asia" ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Name NOT IN (SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English" AND T2.IsOfficial  =  "T")	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Name NOT IN (SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English" AND T2.IsOfficial  =  "T")	world_1
SELECT sum(Population) FROM country WHERE Name NOT IN (SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English")	world_1
SELECT sum(Population) FROM country WHERE Name NOT IN (SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English")	world_1
SELECT cl.Language FROM countrylanguage cl JOIN country c ON cl.CountryCode = c.Code WHERE cl.IsOfficial = 'T' AND c.HeadOfState = 'Beatrix'	world_1
SELECT cl.Language FROM countrylanguage cl JOIN country c ON cl.CountryCode = c.Code WHERE c.HeadOfState = 'Beatrix' AND cl.IsOfficial = 'T'	world_1
SELECT COUNT(DISTINCT cl.Language) AS TotalUniqueOfficialLanguages FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE c.IndepYear < 1930 AND cl.IsOfficial = 'T'	world_1
SELECT COUNT(DISTINCT cl.Language) AS TotalDistinctOfficialLanguages FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE c.IndepYear < 1930 AND cl.IsOfficial = 'T'	world_1
SELECT Name FROM country WHERE SurfaceArea  >  (SELECT min(SurfaceArea) FROM country WHERE Continent  =  "Europe")	world_1
SELECT Name FROM country WHERE SurfaceArea  >  (SELECT min(SurfaceArea) FROM country WHERE Continent  =  "Europe")	world_1
SELECT Name FROM country WHERE Continent  =  "Africa"  AND population  <  (SELECT max(population) FROM country WHERE Continent  =  "Asia")	world_1
SELECT Name FROM country WHERE Continent  =  "Africa"  AND population  <  (SELECT min(population) FROM country WHERE Continent  =  "Asia")	world_1
SELECT Name FROM country WHERE Continent  =  "Asia"  AND population  >  (SELECT max(population) FROM country WHERE Continent  =  "Africa")	world_1
SELECT Name FROM country WHERE Continent  =  "Asia"  AND population  >  (SELECT min(population) FROM country WHERE Continent  =  "Africa")	world_1
SELECT DISTINCT CountryCode FROM countrylanguage WHERE Language != 'English'	world_1
SELECT DISTINCT CountryCode FROM countrylanguage WHERE Language != 'English'	world_1
SELECT DISTINCT CountryCode FROM countrylanguage WHERE Language != 'English'	world_1
SELECT DISTINCT CountryCode FROM countrylanguage WHERE Language != 'English'	world_1
SELECT DISTINCT c.Code FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.Language != 'English' AND c.GovernmentForm != 'Republic'	world_1
SELECT Code FROM country WHERE GovernmentForm != "Republic" EXCEPT SELECT CountryCode FROM countrylanguage WHERE LANGUAGE  =  "English"	world_1
SELECT city.Name FROM city JOIN country ON city.CountryCode = country.Code JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE country.Continent = 'Europe' AND countrylanguage.Language != 'English' AND countrylanguage.IsOfficial = 'F'	world_1
SELECT city.Name FROM city JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode JOIN country ON city.CountryCode = country.Code WHERE country.Continent = 'Europe' AND countrylanguage.Language != 'English' AND countrylanguage.IsOfficial = 'F'	world_1
select distinct t3.name from country as t1 join countrylanguage as t2 on t1.code  =  t2.countrycode join city as t3 on t1.code  =  t3.countrycode where t2.isofficial  =  't' and t2.language  =  'chinese' and t1.continent  =  "asia"	world_1
SELECT DISTINCT T3.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode JOIN city AS T3 ON T1.Code  =  T3.CountryCode WHERE T2.IsOfficial  =  'T' AND T2.Language  =  'Chinese' AND T1.Continent  =  "Asia"	world_1
SELECT Name ,  SurfaceArea ,  IndepYear FROM country ORDER BY Population LIMIT 1	world_1
SELECT Name ,  SurfaceArea ,  IndepYear FROM country ORDER BY Population LIMIT 1	world_1
SELECT Name ,  population ,  HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT Name ,  population ,  HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT country.Name, COUNT(countrylanguage.Language) AS NumOfLanguages FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Code, country.Name HAVING COUNT(countrylanguage.Language) >= 3 ORDER BY NumOfLanguages DESC	world_1
SELECT COUNT(T2.Language) ,  T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1.Name HAVING COUNT(*)  >  2	world_1
SELECT count(*) ,  District FROM city WHERE Population  >  (SELECT avg(Population) FROM city) GROUP BY District	world_1
SELECT count(*) ,  District FROM city WHERE Population  >  (SELECT avg(Population) FROM city) GROUP BY District	world_1
SELECT sum(Population) ,  GovernmentForm FROM country GROUP BY GovernmentForm HAVING avg(LifeExpectancy)  >  72	world_1
SELECT sum(Population) ,  GovernmentForm FROM country GROUP BY GovernmentForm HAVING avg(LifeExpectancy)  >  72	world_1
SELECT sum(Population) ,  avg(LifeExpectancy) ,  Continent FROM country GROUP BY Continent HAVING avg(LifeExpectancy)  <  72	world_1
SELECT      country.Continent,      SUM(country.Population) AS Total_Population,      AVG(country.LifeExpectancy) AS Average_Life_Expectancy FROM      country WHERE      country.Continent IN (         SELECT              country.Continent         FROM              country         GROUP BY              country.Continent         HAVING              AVG(country.LifeExpectancy) < 72     ) GROUP BY      country.Continent	world_1
SELECT Name ,  SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5	world_1
SELECT Name ,  SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5	world_1
SELECT Name FROM country ORDER BY Population DESC LIMIT 3	world_1
SELECT Name FROM country ORDER BY Population DESC LIMIT 3	world_1
SELECT Name FROM country ORDER BY Population ASC LIMIT 3	world_1
SELECT Name FROM country ORDER BY Population ASC LIMIT 3	world_1
SELECT count(*) FROM country WHERE continent  =  "Asia"	world_1
SELECT count(*) FROM country WHERE continent  =  "Asia"	world_1
SELECT Name FROM country WHERE continent  =  "Europe" AND Population  =  "80000"	world_1
SELECT Name FROM country WHERE continent  =  "Europe" AND Population  =  "80000"	world_1
select sum(population) ,  avg(surfacearea) from country where continent  =  "north america" and surfacearea  >  3000	world_1
select sum(population) ,  avg(surfacearea) from country where continent  =  "north america" and surfacearea  >  3000	world_1
SELECT name FROM city WHERE Population BETWEEN 160000 AND 900000	world_1
select name from city where population between 160000 and 900000	world_1
SELECT LANGUAGE FROM countrylanguage GROUP BY LANGUAGE ORDER BY count(*) DESC LIMIT 1	world_1
SELECT LANGUAGE FROM countrylanguage GROUP BY LANGUAGE ORDER BY count(*) DESC LIMIT 1	world_1
SELECT cl.CountryCode, cl.Language FROM countrylanguage cl INNER JOIN (     SELECT CountryCode, MAX(Percentage) AS MaxPercentage     FROM countrylanguage     GROUP BY CountryCode ) cl2 ON cl.CountryCode = cl2.CountryCode AND cl.Percentage = cl2.MaxPercentage	world_1
SELECT cl.CountryCode, cl.Language FROM countrylanguage cl INNER JOIN (     SELECT CountryCode, MAX(Percentage) AS MaxPercentage     FROM countrylanguage     GROUP BY CountryCode ) cl2 ON cl.CountryCode = cl2.CountryCode AND cl.Percentage = cl2.MaxPercentage ORDER BY cl.CountryCode ASC	world_1
SELECT count(*) ,   max(Percentage) FROM countrylanguage WHERE LANGUAGE  =  "Spanish" GROUP BY CountryCode	world_1
SELECT count(*) ,   max(Percentage) FROM countrylanguage WHERE LANGUAGE  =  "Spanish" GROUP BY CountryCode	world_1
SELECT CountryCode ,  max(Percentage) FROM countrylanguage WHERE LANGUAGE  =  "Spanish" GROUP BY CountryCode	world_1
SELECT CountryCode ,  max(Percentage) FROM countrylanguage WHERE LANGUAGE  =  "Spanish" GROUP BY CountryCode	world_1
SELECT count(*) FROM conductor	orchestra
SELECT count(*) FROM conductor	orchestra
SELECT Name FROM conductor ORDER BY Age ASC	orchestra
SELECT Name FROM conductor ORDER BY Age ASC	orchestra
SELECT Name FROM conductor WHERE Nationality != 'USA'	orchestra
SELECT Name FROM conductor WHERE Nationality != 'USA'	orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC	orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC	orchestra
SELECT avg(Attendance) FROM SHOW	orchestra
SELECT avg(Attendance) FROM SHOW	orchestra
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type != 'Live final'	orchestra
SELECT MAX(p.Share) AS Max_Share, MIN(p.Share) AS Min_Share FROM performance p INNER JOIN orchestra o ON p.Orchestra_ID = o.Orchestra_ID WHERE p.Type != 'Live final'	orchestra
SELECT count(DISTINCT Nationality) FROM conductor	orchestra
SELECT count(DISTINCT Nationality) FROM conductor	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1	orchestra
SELECT T1.Name ,  T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID	orchestra
SELECT T1.Name ,  T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*)  >  1	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*)  >  1	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1	orchestra
SELECT c.Name FROM conductor c JOIN orchestra o ON c.Conductor_ID = o.Conductor_ID WHERE o.Year_of_Founded > 2008	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE Year_of_Founded  >  2008	orchestra
SELECT Record_Company ,  COUNT(*) FROM orchestra GROUP BY Record_Company	orchestra
SELECT Record_Company ,  COUNT(*) FROM orchestra GROUP BY Record_Company	orchestra
SELECT Major_Record_Format, COUNT(*) AS Count_Of_Formats FROM orchestra GROUP BY Major_Record_Format ORDER BY Count_Of_Formats ASC	orchestra
SELECT Major_Record_Format, COUNT(*) AS Frequency FROM orchestra GROUP BY Major_Record_Format ORDER BY Frequency DESC	orchestra
SELECT Orchestra.Record_Company FROM Orchestra GROUP BY Orchestra.Record_Company HAVING COUNT(DISTINCT Orchestra.Orchestra_ID) = (     SELECT MAX(OrchestraCount.OrchestraCount)     FROM (         SELECT COUNT(DISTINCT Orchestra.Orchestra_ID) AS OrchestraCount         FROM Orchestra         GROUP BY Orchestra.Record_Company     ) AS OrchestraCount )	orchestra
SELECT Orchestra.Record_Company, COUNT(DISTINCT Orchestra.Orchestra_ID) AS Num_Of_Orchestras FROM Orchestra GROUP BY Orchestra.Record_Company ORDER BY Num_Of_Orchestras DESC LIMIT 1	orchestra
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)	orchestra
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)	orchestra
SELECT DISTINCT o1.Record_Company FROM orchestra o1 JOIN orchestra o2 ON o1.Record_Company = o2.Record_Company WHERE o1.Year_of_Founded < 2003 AND o2.Year_of_Founded > 2003	orchestra
SELECT DISTINCT o1.Record_Company FROM orchestra o1 JOIN orchestra o2 ON o1.Record_Company = o2.Record_Company WHERE o1.Year_of_Founded < 2003 AND o2.Year_of_Founded > 2003	orchestra
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format  =  "CD" OR Major_Record_Format  =  "DVD"	orchestra
SELECT COUNT(DISTINCT Orchestra_ID)  FROM orchestra  WHERE Major_Record_Format IN ('CD', 'DVD')	orchestra
SELECT Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*)  >  1	orchestra
SELECT Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*)  >  1	orchestra
SELECT count(*) FROM Highschooler	network_1
SELECT count(*) FROM Highschooler	network_1
SELECT name ,  grade FROM Highschooler	network_1
SELECT name ,  grade FROM Highschooler	network_1
SELECT grade FROM Highschooler	network_1
SELECT grade FROM Highschooler	network_1
SELECT grade FROM Highschooler WHERE name  =  "Kyle"	network_1
SELECT grade FROM Highschooler WHERE name  =  "Kyle"	network_1
SELECT name FROM Highschooler WHERE grade  =  10	network_1
SELECT name FROM Highschooler WHERE grade  =  10	network_1
SELECT ID FROM Highschooler WHERE name  =  "Kyle"	network_1
SELECT ID FROM Highschooler WHERE name  =  "Kyle"	network_1
SELECT COUNT(*)  FROM Highschooler  WHERE grade IN (9, 10)	network_1
SELECT COUNT(*)  FROM Highschooler  WHERE grade = 9 OR grade = 10	network_1
SELECT grade ,  count(*) FROM Highschooler GROUP BY grade	network_1
SELECT grade ,  count(*) FROM Highschooler GROUP BY grade	network_1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1	network_1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1	network_1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*)  >=  4	network_1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*)  >=  4	network_1
SELECT student_id ,  count(*) FROM Friend GROUP BY student_id	network_1
SELECT student_id ,  count(*) FROM Friend GROUP BY student_id	network_1
SELECT Highschooler.name, COUNT(Friend.friend_id) AS num_of_friends FROM Highschooler LEFT JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY Highschooler.ID ORDER BY Highschooler.name	network_1
SELECT Highschooler.name, COUNT(Friend.friend_id) AS num_friends FROM Highschooler LEFT JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY Highschooler.ID ORDER BY num_friends DESC, Highschooler.name ASC	network_1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	network_1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	network_1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  3	network_1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  3	network_1
SELECT H.name FROM Highschooler H, Friend F WHERE H.ID = F.friend_id AND F.student_id = (     SELECT ID     FROM Highschooler     WHERE name = 'Kyle' )	network_1
SELECT T3.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id JOIN Highschooler AS T3 ON T1.friend_id  =  T3.id WHERE T2.name  =  "Kyle"	network_1
SELECT count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  "Kyle"	network_1
SELECT count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  "Kyle"	network_1
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend	network_1
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend	network_1
SELECT name FROM Highschooler EXCEPT SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id	network_1
SELECT name FROM Highschooler EXCEPT SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id	network_1
SELECT DISTINCT f.student_id FROM Friend f, Likes l WHERE f.student_id = l.student_id AND f.friend_id = l.liked_id	network_1
SELECT DISTINCT F.student_id FROM Friend F, Likes L WHERE F.student_id = L.student_id	network_1
SELECT DISTINCT Highschooler.name FROM Highschooler, Friend, Likes WHERE Highschooler.ID = Friend.student_id AND Friend.friend_id = Likes.liked_id AND Likes.student_id = Highschooler.ID	network_1
SELECT DISTINCT H.name FROM Highschooler H, Friend F, Likes L WHERE H.ID = F.student_id AND H.ID = L.student_id	network_1
SELECT student_id, COUNT(*) AS num_likes FROM Likes GROUP BY student_id	network_1
SELECT student_id, COUNT(*) AS num_likes FROM Likes GROUP BY student_id	network_1
SELECT T2.name ,  count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id	network_1
SELECT Highschooler.name, COUNT(Likes.liked_id) AS num_likes FROM Highschooler JOIN Likes ON Highschooler.ID = Likes.student_id GROUP BY Highschooler.ID HAVING COUNT(Likes.liked_id) > 0	network_1
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	network_1
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	network_1
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  2	network_1
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  2	network_1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.grade  >  5 GROUP BY T1.student_id HAVING count(*)  >=  2	network_1
SELECT H.name FROM Highschooler H, Friend F WHERE H.ID = F.student_id   AND H.grade > 5 GROUP BY H.ID, H.name HAVING COUNT(F.friend_id) >= 2	network_1
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  "Kyle"	network_1
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  "Kyle"	network_1
SELECT AVG(H.grade) AS avg_grade FROM Highschooler H JOIN Friend F ON H.ID = F.student_id	network_1
SELECT AVG(H.grade) AS avg_grade FROM Highschooler H JOIN Friend F ON H.ID = F.student_id	network_1
SELECT min(grade) FROM Highschooler WHERE id NOT IN (SELECT T1.student_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id)	network_1
SELECT min(grade) FROM Highschooler WHERE id NOT IN (SELECT T1.student_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id)	network_1
SELECT DISTINCT o.state FROM Owners o INNER JOIN Professionals p ON o.state = p.state	dog_kennels
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals	dog_kennels
SELECT AVG(CAST(age AS INTEGER)) AS average_age FROM Dogs WHERE dog_id IN (     SELECT DISTINCT dog_id     FROM Treatments )	dog_kennels
SELECT AVG(CAST(age AS INTEGER)) AS average_age FROM Dogs INNER JOIN Treatments ON Dogs.dog_id = Treatments.dog_id	dog_kennels
SELECT professional_id ,  last_name ,  cell_number FROM Professionals WHERE state  =  'Indiana' UNION SELECT T1.professional_id ,  T1.last_name ,  T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >  2	dog_kennels
SELECT professional_id ,  last_name ,  cell_number FROM Professionals WHERE state  =  'Indiana' UNION SELECT T1.professional_id ,  T1.last_name ,  T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >  2	dog_kennels
SELECT d.name FROM Dogs d JOIN Treatments t ON d.dog_id = t.dog_id WHERE t.cost_of_treatment <= 1000 GROUP BY d.name HAVING COUNT(*) = COUNT(t.cost_of_treatment)	dog_kennels
SELECT d.name FROM Dogs d INNER JOIN Owners o ON d.owner_id = o.owner_id INNER JOIN Treatments t ON d.dog_id = t.dog_id WHERE o.owner_id IN (     SELECT o.owner_id     FROM Owners o     INNER JOIN Dogs d ON o.owner_id = d.owner_id     INNER JOIN Treatments t ON d.dog_id = t.dog_id     GROUP BY o.owner_id     HAVING SUM(t.cost	dog_kennels
SELECT DISTINCT first_name FROM (     SELECT first_name FROM Owners     UNION     SELECT first_name FROM Professionals ) AS T1 WHERE first_name NOT IN (     SELECT name FROM Dogs )	dog_kennels
SELECT DISTINCT first_name FROM (   SELECT first_name FROM Owners   UNION   SELECT first_name FROM Professionals ) AS T1 WHERE first_name NOT IN (   SELECT name FROM Dogs )	dog_kennels
SELECT professional_id ,  role_code ,  email_address FROM Professionals EXCEPT SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id	dog_kennels
SELECT professional_id ,  role_code ,  email_address FROM Professionals EXCEPT SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id	dog_kennels
SELECT T1.owner_id ,  T2.first_name ,  T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.owner_id ,  T2.first_name ,  T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.professional_id ,  T1.role_code ,  T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2	dog_kennels
SELECT T1.professional_id ,  T1.role_code ,  T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2	dog_kennels
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT d.owner_id, o.last_name FROM Dogs d JOIN Treatments t ON d.dog_id = t.dog_id JOIN Owners o ON d.owner_id = o.owner_id GROUP BY d.owner_id, o.last_name ORDER BY SUM(t.cost_of_treatment) DESC LIMIT 1	dog_kennels
SELECT t.owner_id, o.last_name FROM Treatments t JOIN Dogs d ON t.dog_id = d.dog_id JOIN Owners o ON d.owner_id = o.owner_id GROUP BY t.owner_id, o.last_name ORDER BY SUM(t.cost_of_treatment) DESC LIMIT 1	dog_kennels
SELECT T1.treatment_type_description FROM Treatment_types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1	dog_kennels
SELECT T1.treatment_type_description FROM Treatment_types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1	dog_kennels
SELECT d.owner_id, o.zip_code FROM Dogs d JOIN Owners o ON d.owner_id = o.owner_id JOIN (     SELECT owner_id, SUM(charge_amount) AS total_paid     FROM Dogs     JOIN Charges ON Dogs.size_code = Charges.charge_type     GROUP BY owner_id     ORDER BY total_paid DESC     LIMIT 1 ) AS max_paid ON d.owner_id = max_paid.owner_id ORDER BY max_paid.total_paid DESC	dog_kennels
SELECT d.owner_id, o.zip_code FROM Dogs d JOIN Owners o ON d.owner_id = o.owner_id JOIN (     SELECT owner_id, SUM(cost_of_treatment) AS total_cost     FROM Treatments     JOIN Dogs ON Treatments.dog_id = Dogs.dog_id     GROUP BY owner_id     ORDER BY total_cost DESC     LIMIT 1 ) t ON d.owner_id = t.owner_id ORDER BY t.total_cost DESC	dog_kennels
SELECT T1.professional_id ,  T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2	dog_kennels
SELECT T1.professional_id ,  T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2	dog_kennels
SELECT DISTINCT T1.first_name ,  T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 WHERE cost_of_treatment  <  ( SELECT avg(cost_of_treatment) FROM Treatments )	dog_kennels
SELECT DISTINCT T1.first_name ,  T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 WHERE cost_of_treatment  <  ( SELECT avg(cost_of_treatment) FROM Treatments )	dog_kennels
SELECT T1.date_of_treatment ,  T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id  =  T2.professional_id	dog_kennels
SELECT T1.date_of_treatment ,  T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id  =  T2.professional_id	dog_kennels
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM Treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code	dog_kennels
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM Treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code	dog_kennels
SELECT o.first_name, o.last_name, s.size_description FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id JOIN Sizes s ON d.size_code = s.size_code	dog_kennels
SELECT o.first_name, o.last_name, d.size_code FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id	dog_kennels
SELECT T1.first_name ,  T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id	dog_kennels
SELECT T1.first_name ,  T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id	dog_kennels
SELECT T1.name ,  T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T1.breed_code  =  ( SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY count(*) ASC LIMIT 1 )	dog_kennels
SELECT d.name, t.date_of_treatment FROM Dogs d JOIN Breeds b ON d.breed_code = b.breed_code JOIN Treatments t ON d.dog_id = t.dog_id WHERE b.breed_name = (SELECT breed_name FROM Breeds ORDER BY breed_code LIMIT 1)	dog_kennels
SELECT o.first_name, d.name FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id WHERE o.state = 'Virginia'	dog_kennels
SELECT o.first_name, d.name FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id WHERE o.state = 'Virginia' ORDER BY o.first_name	dog_kennels
SELECT DISTINCT T1.date_arrived ,  T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id	dog_kennels
SELECT DISTINCT T1.date_arrived ,  T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id	dog_kennels
SELECT o.last_name FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id WHERE d.age = (SELECT MIN(age) FROM Dogs) ORDER BY d.date_of_birth DESC LIMIT 1	dog_kennels
SELECT o.last_name FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id WHERE d.age = (SELECT MIN(age) FROM Dogs)	dog_kennels
SELECT email_address FROM Professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'	dog_kennels
SELECT email_address FROM Professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'	dog_kennels
SELECT date_arrived ,  date_departed FROM Dogs	dog_kennels
SELECT date_arrived ,  date_departed FROM Dogs	dog_kennels
SELECT count(DISTINCT dog_id) FROM Treatments	dog_kennels
SELECT count(DISTINCT dog_id) FROM Treatments	dog_kennels
SELECT count(DISTINCT professional_id) FROM Treatments	dog_kennels
SELECT count(DISTINCT professional_id) FROM Treatments	dog_kennels
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'	dog_kennels
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'	dog_kennels
SELECT first_name ,  last_name ,  email_address FROM Owners WHERE state LIKE '%North%'	dog_kennels
SELECT first_name ,  last_name ,  email_address FROM Owners WHERE state LIKE '%North%'	dog_kennels
SELECT count(*) FROM Dogs WHERE age  <  ( SELECT avg(age) FROM Dogs )	dog_kennels
SELECT count(*) FROM Dogs WHERE age  <  ( SELECT avg(age) FROM Dogs )	dog_kennels
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1	dog_kennels
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1	dog_kennels
SELECT count(*) FROM Dogs WHERE dog_id NOT IN ( SELECT dog_id FROM Treatments )	dog_kennels
select count(*) from dogs where dog_id not in ( select dog_id from treatments )	dog_kennels
SELECT COUNT(*) AS temporary_no_dog_owners FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE date_departed IS NULL)	dog_kennels
SELECT COUNT(*)  FROM Owners  WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE date_departed IS NULL)	dog_kennels
SELECT count(*) FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM Treatments )	dog_kennels
SELECT count(*) FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM Treatments )	dog_kennels
SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  1	dog_kennels
SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  1	dog_kennels
SELECT avg(age) FROM Dogs	dog_kennels
SELECT avg(age) FROM Dogs	dog_kennels
SELECT max(age) FROM Dogs	dog_kennels
SELECT max(age) FROM Dogs	dog_kennels
SELECT charge_type ,  charge_amount FROM Charges	dog_kennels
SELECT charge_type ,  charge_amount FROM Charges	dog_kennels
SELECT max(charge_amount) FROM Charges	dog_kennels
SELECT max(charge_amount) FROM Charges	dog_kennels
SELECT email_address ,  cell_number ,  home_phone FROM professionals	dog_kennels
SELECT email_address ,  cell_number ,  home_phone FROM professionals	dog_kennels
SELECT Breeds.breed_name, Sizes.size_description FROM Breeds, Sizes	dog_kennels
SELECT DISTINCT breed_code ,  size_code FROM dogs	dog_kennels
SELECT DISTINCT T1.first_name ,  T3.treatment_type_description FROM professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN Treatment_types AS T3 ON T2.treatment_type_code  =  T3.treatment_type_code	dog_kennels
SELECT DISTINCT T1.first_name ,  T3.treatment_type_description FROM professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN Treatment_types AS T3 ON T2.treatment_type_code  =  T3.treatment_type_code	dog_kennels
SELECT count(*) FROM singer	singer
SELECT count(*) FROM singer	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC	singer
SELECT Birth_Year ,  Citizenship FROM singer	singer
SELECT Birth_Year ,  Citizenship FROM singer	singer
SELECT Name FROM singer WHERE Citizenship != 'France'	singer
SELECT Name  FROM singer  WHERE Citizenship != 'French'	singer
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949	singer
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1	singer
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1	singer
select citizenship from singer group by citizenship order by count(*) desc limit 1	singer
SELECT Citizenship ,  max(Net_Worth_Millions) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship ,  max(Net_Worth_Millions) FROM singer GROUP BY Citizenship	singer
SELECT T2.Title ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID	singer
SELECT T2.Title ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID	singer
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000	singer
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000	singer
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*)  >  1	singer
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*)  >  1	singer
SELECT singer.Name, SUM(song.Sales) AS Total_Sales FROM singer INNER JOIN song ON singer.Singer_ID = song.Singer_ID GROUP BY singer.Name	singer
SELECT T1.Name ,  sum(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name	singer
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)	singer
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)	singer
SELECT DISTINCT s1.Citizenship FROM singer s1 JOIN singer s2 ON s1.Citizenship = s2.Citizenship WHERE s1.Birth_Year < 1945 AND s2.Birth_Year > 1955	singer
SELECT DISTINCT s.Citizenship FROM singer s WHERE s.Birth_Year < 1945 AND s.Citizenship IN (     SELECT s2.Citizenship     FROM singer s2     WHERE s2.Birth_Year > 1955 )	singer
SELECT count(*) FROM Other_Available_Features	real_estate_properties
SELECT T2.feature_type_name FROM Other_Available_Features AS T1 JOIN Ref_Feature_Types AS T2 ON T1.feature_type_code  =  T2.feature_type_code WHERE T1.feature_name  =  "AirCon"	real_estate_properties
SELECT T2.property_type_description FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code  =  T2.property_type_code GROUP BY T1.property_type_code	real_estate_properties
SELECT property_name FROM Properties WHERE (property_type_code = 'APT' OR property_type_code = 'HSE') AND room_count > 1	real_estate_properties
