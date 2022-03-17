USE company_db;
/*Entering this data into each table under each atribute*/
INSERT INTO departments(name)
VALUES('Sales'),
('Engineering'),
('Finance')
('Legal');

INSERT INTTO roles (title, salary,department_id)
VALUES ('SalesLead', 20000, 1),
('Salesperson' , 10000, 1),
('Lead Engineer', 35000, 2),
('Software Engineer', 25000, 2),
('Account Manager', 30000,3),
('Accountant', 25000,),
('Lawyer', 40000 ,4);


INSERT INTO employees(first_name, last_name, role_id, manager_id)
VALUES('Karl', 'Mullins', 1,  NULL),
('Aisha', 'Din', 2 ,1),
('Bily', 'Bhambi',2,1),
('Himaas', 'Alyy', 3, NULL),
('Sadaf', 'Din', 4, 3),
('Isma', 'Hazel', 4,3),
('Ella', 'Willson', 5 ,NULL),
('Daniele', 'Spark', 6, 5),
('Kimmy', 'Schmitt',7, NULL);
