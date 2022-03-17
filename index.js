const cTable = require ('console.table');
const inquirer = require ('inquirer');
const mysql = require ('mysql');
const commaNumber = require('comma-number');
const Department = require(__dirname + '/classes/Department.js');
const Role = require(__dirname + '/classes/Role.js');
const Employee = require(__dirname + '/classes/Employee.js');

const connection = mysql.createConnection({
 host: 'localhost',
 user: 'root',
 password: 'password',
 database: '' 

})