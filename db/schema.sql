/*Schema will create the tables and what attributes will be in the table*/
/*Its a collection of database objects*/

/*To remove an existing database from a SQL Server instance, */
DROP DATABASE IF EXISTS company_db;
/*Creating the databse with name comapny db*/
CREATE DATABASE company_db;

USE company_db; 

/*Creatinf a tablet for the departments which will store the names of each department*/
CREATE TABLE departments(
/* Every table needs a unique id to refer back to that particular table*/
/* AUTO INCREMENT - Allows a unique number to be generated automatically 
when a new record is inserted into a table*/
id INT PRIMARY KEY AUTO_INCREMENT,
/*Will allow users to use up to 30 character when entering a name*/
/* NOT NULL - enforces a column to NOT accept NULL values.*/
name VARCHAR (30) NOT NULL); 

CREATE TABLE roles(
/* Every table needs a unique id to refer back to that particular table*/
/* AUTO INCREMENT - Allows a unique number to be generated automatically 
when a new record is inserted into a table*/
id INT PRIMARY KEY AUTO_INCREMENT
title VARCHAR(30) NOT NULL,
salary DECIMAL (11,2) NOT NULL,
department_id INT NOT NULL,
FOREIGN KEY (department_id) REFERENCES department(id));

CREATE TABLE employees(
id INT PRIMARY KEY AUTO_INCREMENT
fist_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT NOT NULL,
manager_id INT,
FOREIGN KEY (role_id) REFERENCES roles(id),
FOREIGN KEY (manager_id) REFERENCES employees(id));
