/*Delete a table*/
DROP TABLE student;

/*To create a table*/
CREATE TABLE student (
 student_id INT,
 name VARCHAR(20) NOT NULL, -- Name column cannot be null
 major VARCHAR(20) UNIQUE, -- Unique the major field has to be unique for each row in this table
 PRIMARY KEY (student_id) -- A primary key is both NOT NULL and Unique 
 );
 
 /*Shows schema of table*/
 DESCRIBE student;
 
/*insert values into table - row 1*/
INSERT INTO student VALUES (1, 'Jack', 'Biology');
INSERT INTO student VALUES (2, 'Kate', 'Sociology');
INSERT INTO student (student_id, name) VALUES (3, 'Claire');
INSERT INTO student (student_id, name, major) VALUES (4, NULL, 'Biologyo');
INSERT INTO student VALUES (5, 'NULL', 'Computer Science');
INSERT INTO student VALUES (6, 'Kate', 'Biology');
/*Shows data table (rows and columns)*/
 SELECT * FROM student;
 
 
 
/*delete row in table - row 4.*/
 DELETE FROM student WHERE student_id= 5;
 SELECT * FROM student;