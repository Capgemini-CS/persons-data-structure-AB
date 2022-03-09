-----------------------------------------------------INSERT AND UPDATE car----------------------------------------------
-- Insert and update cars into the table.

INSERT INTO `persons`.`car` (`Model`, `Color`, `Price`) VALUES ('Ferrari', 'Red', '45000');
INSERT INTO `persons`.`car` (`Model`, `Color`, `Price`) VALUES ('BMW', 'White', '15000');
INSERT INTO `persons`.`car` (`Model`, `Color`, `Price`) VALUES ('Audi', 'Black', '20000');
INSERT INTO `persons`.`car` (`Model`, `Color`, `Price`) VALUES ('Range Rover', 'Grey', '40000');
INSERT INTO `persons`.`car` (`Model`, `Color`, `Price`) VALUES ('Logan', 'Red', '15000');



UPDATE `persons`.`car` SET `Person_Id` = '1' WHERE (`Car_Id` = '1');
UPDATE `persons`.`car` SET `Person_Id` = '1' WHERE (`Car_Id` = '2');
UPDATE `persons`.`car` SET `Person_Id` = '2' WHERE (`Car_Id` = '3');
UPDATE `persons`.`car` SET `Person_Id` = '3' WHERE (`Car_Id` = '4');
UPDATE `persons`.`car` SET `Person_Id` = '2' WHERE (`Car_Id` = '6');
UPDATE `persons`.`car` SET `Person_Id` = '4' WHERE (`Car_Id` = '7');


------------------------------------------------------INSERT job--------------------------------------------------------
-- Insert jobs into the table.

INSERT INTO `persons`.`job` (`Name`, `Company`, `Salary`, `Start_Date`) VALUES ('Software Developer', 'Capgemini', '5000', '2020-04-11');
INSERT INTO `persons`.`job` (`Name`, `Company`, `Salary`, `Start_Date`) VALUES ('IoT Analyst', 'Vodafone', '4500', '2021-03-10');
INSERT INTO `persons`.`job` (`Name`, `Company`, `Salary`, `Start_Date`) VALUES ('HR Recruiter', 'Tremend', '6000', '2022-05-06');
INSERT INTO `persons`.`job` (`Name`, `Company`, `Salary`, `Start_Date`) VALUES ('Software Developer', 'Emag', '10500', '2022-11-24');
INSERT INTO `persons`.`job` (`Name`, `Company`, `Salary`, `Start_Date`) VALUES ('Devops', 'AllCloud', '8500', '2022-01-03');


 -----------------------------------------------INSERT AND UPDATE address-----------------------------------------------
 -- Insert and update addresses into the table.

 INSERT INTO `persons`.`address` (`Street_name`, `Number`, `Type`) VALUES ('Str. Florilor', '2', 'office');
 INSERT INTO `persons`.`address` (`Street_name`, `Number`, `Type`) VALUES ('Vasile Milea', '11', 'home');
 INSERT INTO `persons`.`address` (`Street_name`, `Number`, `Type`) VALUES ('Splaiul Independentei', '209', 'home');
 INSERT INTO `persons`.`address` (`Street_name`, `Number`, `Type`) VALUES ('Iuliu Maniu', '12', 'office');
 INSERT INTO `persons`.`address` (`Street_name`, `Number`, `Type`) VALUES ('Str. Manastirii', '29', 'home');


 UPDATE `persons`.`address` SET `Street_name` = 'Valea Cascadelor', `Number` = '67' WHERE (`Address_Id` = '3');
 UPDATE `persons`.`address` SET `Street_name` = 'Unirii', `Number` = '24' WHERE (`Address_Id` = '4');
 UPDATE `persons`.`address` SET `Street_name` = 'Teilor', `Number` = '6' WHERE (`Address_Id` = '5');
 UPDATE `persons`.`address` SET `Street_name` = 'Vasile Alecsandri', `Number` = '5' WHERE (`Address_Id` = '7');



 -----------------------------------------------INSERT  person----------------------------------------------------------
 -- Insert persons into the table.


 INSERT INTO `persons`.`person` (`Person_Id`, `Name`, `Surname`, `Age`, `CNP`, `Address_Id`, `Job_Id`) VALUES ('1', 'Badea', 'Andreea', '22', '600034242', '1', '1');
 INSERT INTO `persons`.`person` (`Name`, `Surname`, `Age`, `CNP`, `Address_Id`, `Job_Id`) VALUES ('Popescu', 'Maria', '26', '700034234', '3', '4');
 INSERT INTO `persons`.`person` (`Person_Id`, `Name`, `Surname`, `Age`, `CNP`, `Address_Id`, `Job_Id`) VALUES ('3', 'Enache', 'Ionut', '31', '588080', '2', '2');
 INSERT INTO `persons`.`person` (`Person_Id`, `Name`, `Surname`, `Age`, `CNP`, `Address_Id`, `Job_Id`) VALUES ('4', 'Mihaila', 'Iulian', '36', '68780909', '5', '3');


 -----------------------------------------------SELECT PERSON----------------------------------------------------------
-- Select the persons how have a salary greater than 5000 lei.


 SELECT p.Name as PERSON_NAME, p.Surname as PERSON_SURNAME, j.Salary as SALARY
 FROM person p LEFT JOIN job j ON p.Job_Id = j.Job_Id
 WHERE Salary = 5000;


 -----------------------------------------------SELECT PERSON----------------------------------------------------------
-- Select the person how has the highest salary.


SELECT p.Name as PERSON_NAME, p.Surname as PERSON_SURNAME, Max(j.Salary) as SALARY
FROM person p LEFT JOIN job j ON p.Job_Id = j.Job_Id;


 -----------------------------------------------SELECT PERSON----------------------------------------------------------
-- Select the person how has the most expensive car.


SELECT p.Name as PERSON_NAME, p.Surname as PERSON_SURNAME, Max(c.Price) as CAR_PRICE
FROM person p LEFT JOIN car c ON p.Person_Id = c.Person_Id;


 -----------------------------------------------SELECT CAR----------------------------------------------------------
-- Select all the cars from the database.


SELECT * FROM car.