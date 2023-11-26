/*Delete a table*/
DROP TABLE student;

/*To create a table*/
CREATE TABLE student (
 student_id INT AUTO_INCREMENT, -- Automatically add number to each row of the table ... Its called a contraint
 name VARCHAR(20), -- Name column cannot be null
 major VARCHAR(20), -- If no value entered will show undecided.
 PRIMARY KEY (student_id) -- A primary key is both NOT NULL and Unique 
 );
 
 /*Shows schema of table*/
 DESCRIBE student;
 
/*insert values into table - row 1*/
INSERT INTO student (name, major) VALUES ('Jack', 'Biology');
INSERT INTO student (name, major) VALUES ('Kate', 'Sociology');
INSERT INTO student (name, major) VALUES ('Claire', 'Chemistry');
INSERT INTO student (name, major) VALUES ('Jack', 'Biology');
INSERT INTO student (name, major) VALUES ('Mike', 'Computer Science');
/*Shows data table (rows and columns)*/
 SELECT * FROM student;
 
/*Update / Replace student table specifically the major column has Biology. Change Biology to Bio.*/
 UPDATE student
 SET major = 'Bio'
 WHERE major = 'Biology';
 
 /*Remove safe update*/
 SET SQL_SAFE_UPDATES = 0;

 /*Update / Replace student table specifically the major column has computer science. Change Computer Science to Comp Sci.*/
 UPDATE student
 SET major = 'Comp Sci'
 WHERE major = 'Computer Science';
 
 /*Update / Replace student table specifically student id column has 4. Change the corresponding major column to Comp Sci.*/
 UPDATE student
 SET major = 'Comp Sci'
 WHERE student_id = 4;
 
 
/*Update / Replace student table specifically major column that has Bio or Chemistry. Change the corresponding major column to Biochemistry.*/
 UPDATE student
 SET major = 'Biochemistry'
 WHERE major = 'Bio' OR major = 'Chemistry';
 

/*Update / Replace student table specifically student id column that has 1. Change the corresponding name to Tom and major to undecided. */
 UPDATE student
 SET name = 'Tom', major = 'undecided'
 WHERE student_id = 1;
 

 
 
/*delete row in table - row .*/
 DELETE FROM student WHERE student_id= 5;
 SELECT * FROM student;