/*Delete a table*/
DROP TABLE student;

/* Youtube video: https://youtu.be/HXV3zeQKqGY?si=_zWEctdZttSVIewM */


/*Create Table called: Employee*/
CREATE TABLE employee (
  emp_id INT PRIMARY KEY, -- Employee ID is pimary key.
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  birth_day DATE, -- Will store with 4 digit year, 2 digit month and 2 digit day.
  sex VARCHAR(1), -- Sex M for Male or F for Female.
  salary INT,
  super_id INT, -- Supervisor ID. A foreign id points to another employee.
  branch_id INT -- Branch ID. points to branch table.
);

/*Create Table called: Branch*/
CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(40),
  mgr_id INT, -- Foreign Key.
  mgr_start_date DATE,
  /* Manager ID is a Foreign Key in this branch table. 
  This key links / reference to the primary key in Employee table specifically the column called id.*/
  FOREIGN KEY(mgr_id) 
  REFERENCES employee(emp_id) ON DELETE SET NULL 
);

/*Add branch id as foreign key to employee table.*/
ALTER TABLE employee /*Update Employee table.*/
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id) /*Primary key table and name.*/
ON DELETE SET NULL;

/*Add supervisor id as foreign key to employee table.*/
ALTER TABLE employee /*Update Employee table.*/
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id) /*Primary key table and name.*/
ON DELETE SET NULL;

/*Create Table called: Client*/
CREATE TABLE client (
  client_id INT PRIMARY KEY,
  client_name VARCHAR(40),
  branch_id INT,
   /* Branch ID is a Foreign Key in this client table. 
  This key links / reference to the primary key in Branch table specifically the column called branch id.*/
  FOREIGN KEY(branch_id) 
  REFERENCES branch(branch_id) ON DELETE SET NULL
);


/*Create Table called: Works. This table contains 1 primary key (which is a composition of 2 foreign keys).
In addition it also has 2 foreign keys in this table, which are the primary keys too.*/
CREATE TABLE works_with (
  emp_id INT,
  client_id INT,
  total_sales INT,
     /* employee id and client id are both Foreign Key in this works table. 
  Employee ID: This key links / reference to the primary key in employee table specifically the employee id column.
  Client  ID: This key links / reference to the primary key in client table specifically the client id column.*/
  PRIMARY KEY(emp_id, client_id),
  FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
  FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);


/*Create Table called: Branch Supplier. This table contains 1 primary key (which is a composition of 2 foreign keys).
In addition it has 1 foreign key in this table, which is a primary key too.*/
CREATE TABLE branch_supplier (
  branch_id INT,
  supplier_name VARCHAR(40),
  supply_type VARCHAR(40),
    /* branch id and supplier name are both Foreign Key in this works table. 
  Branch ID: This key links / reference to the primary key in branch table specifically the branch id column.*/
  PRIMARY KEY(branch_id, supplier_name),
  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);


-- -----------------------------------------------------------------------------

-- Corporate Branch
/*Add branch manager 1st = David.

/*1. Insert into Employee table manager of Corporate branch.
/*Create in PRIMARY TABLE employee called David Wallace. But last 2 are left blank for now as they are foreign keys.*/
INSERT INTO employee VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);

/*2. Create Corporate branch. Insert in FOREIGN TABLE branch values into branch table for David Wallace.*/
INSERT INTO branch VALUES(1, 'Corporate', 100, '2006-02-09');

/*3. Update Employee table with PRIMARY TABLE Employee information as we now crated both tables.
UPDATE IS DONE TO MAKE AWARE DAVID WORKS AT CORPORATE BRANCH.
So can now put foreign key information in primary table for employee called David Wallace.
So update employee table specifically the branch_id to 1, where the employee id in the employee table id 100.*/
UPDATE employee -- update employee table
SET branch_id = 1
WHERE emp_id = 100;

/*4. Add branch employees who are not managers.*/
INSERT INTO employee VALUES(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1);




-- Scranton Branch
/*Add branch manager 1st = Micheal Scott.*/

/*1. Insert into Employee table manager of Corporate branch.
/*Create in PRIMARY TABLE employee called Micheal Scott. But last 2 are left blank for now as they are foreign keys.*/
INSERT INTO employee VALUES(102, 'Michael', 'Scott', '1964-03-15', 'M', 75000, 100, NULL);

/*2. Create Corporate branch. Insert in FOREIGN TABLE branch values into branch table for Micheal Scott.*/
INSERT INTO branch VALUES(2, 'Scranton', 102, '1992-04-06');

/*3. Update Employee table with PRIMARY TABLE Employee information as we now created both tables.
UPDATE IS DONE TO MAKE AWARE MICHEAL WORKS AT SCRANTON BRANCH.
So update employee table specifically the branch_id to 2, where the employee id in the employee table id 102.*/
UPDATE employee
SET branch_id = 2
WHERE emp_id = 102;

/*4. Add branch employees who are not managers.*/
INSERT INTO employee VALUES(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2);
INSERT INTO employee VALUES(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2);
INSERT INTO employee VALUES(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2);




-- Stamford Branch
/*Add branch manager 1st = Josh Stamford.*/

/*1. Insert into Employee table manager of Corporate branch.
/*Create in PRIMARY TABLE employee called Josh Porter. But last 2 are left blank for now as they are foreign keys.*/
INSERT INTO employee VALUES(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, NULL);

/*2. Create Corporate branch. Insert in FOREIGN TABLE branch values into branch table for Josh Stamford.*/
INSERT INTO branch VALUES(3, 'Stamford', 106, '1998-02-13');

/*3. Update Employee table with PRIMARY TABLE Employee information as we now created both tables.
UPDATE IS DONE TO MAKE AWARE JOSH WORKS AT STAMFORD BRANCH.
So update employee table specifically the branch_id to 3, where the employee id in the employee table id 106.*/
UPDATE employee
SET branch_id = 3
WHERE emp_id = 106;

/*4. Add branch employees who are not managers.
/*Now added 1 emplyee David can add all remaining employees for the branch table.*/
INSERT INTO employee VALUES(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3);
INSERT INTO employee VALUES(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);





-- BRANCH SUPPLIER
INSERT INTO branch_supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Patriot Paper', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO branch_supplier VALUES(3, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(3, 'Stamford Lables', 'Custom Forms');

-- CLIENT
INSERT INTO client VALUES(400, 'Dunmore Highschool', 2);
INSERT INTO client VALUES(401, 'Lackawana Country', 2);
INSERT INTO client VALUES(402, 'FedEx', 3);
INSERT INTO client VALUES(403, 'John Daly Law, LLC', 3);
INSERT INTO client VALUES(404, 'Scranton Whitepages', 2);
INSERT INTO client VALUES(405, 'Times Newspaper', 3);
INSERT INTO client VALUES(406, 'FedEx', 2);

-- WORKS_WITH
INSERT INTO works_with VALUES(105, 400, 55000);
INSERT INTO works_with VALUES(102, 401, 267000);
INSERT INTO works_with VALUES(108, 402, 22500);
INSERT INTO works_with VALUES(107, 403, 5000);
INSERT INTO works_with VALUES(108, 403, 12000);
INSERT INTO works_with VALUES(105, 404, 33000);
INSERT INTO works_with VALUES(107, 405, 26000);
INSERT INTO works_with VALUES(102, 406, 15000);
INSERT INTO works_with VALUES(105, 406, 130000);

/*To view table called: Employee*/
SELECT *
FROM employee;

/*To view table called: Branch*/
SELECT *
FROM branch;

/*To view table called: Client*/
SELECT *
FROM client;

/*To view table called: Works_with*/
SELECT *
FROM works_with;

/*To view table called: Supplier*/
SELECT *
FROM branch_supplier;