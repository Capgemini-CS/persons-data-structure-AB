--------------------------------------------------CREATE TABLE address--------------------------------------------------


 CREATE TABLE persons.address (
    Address_Id INT NOT NULL AUTO_INCREMENT,
    Street_name VARCHAR(50) NOT NULL,
    Number INT NOT NULL,
    Type VARCHAR(50),
 PRIMARY KEY(Address_Id)
 );


--------------------------------------------------CREATE TABLE job------------------------------------------------------


 CREATE TABLE persons.job (
    Job_Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(45) NOT NULL,
    Company VARCHAR(45) NOT NULL,
    Salary INT NOT NULL,
    Start_Date DATE NOT NULL,
 PRIMARY KEY(Job_Id)
 );


--------------------------------------------------CREATE TABLE car------------------------------------------------------


CREATE TABLE persons.car (
    Car_Id INT NOT NULL AUTO_INCREMENT,
    Model VARCHAR(20) NOT NULL,
    Color VARCHAR(20) NOT NULL,
    Price INT NOT NULL,
    Person_Id INT NOT NULL,
PRIMARY KEY(Car_Id),
FOREIGN KEY (Person_Id) REFERENCES person(Person_Id)
);


--------------------------------------------------CREATE TABLE person------------------------------------------------------


CREATE TABLE persons.person (
    Person_Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(45) NOT NULL,
    Surname VARCHAR(45) NOT NULL,
    Age INT NOT NULL,
    CNP VARCHAR(45) NOT NULL,
    Address_Id INT NOT NULL,
    Job_Id INT,
PRIMARY KEY (Person_Id),
FOREIGN KEY (Job_Id) REFERENCES job(Job_Id),
FOREIGN KEY (Address_Id) REFERENCES address(Address_Id)
);