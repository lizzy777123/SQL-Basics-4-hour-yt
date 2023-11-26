/*To create a table*/
CREATE TABLE student (
 student_id INT,
 name VARCHAR(20),
 major VARCHAR(20),
 PRIMARY KEY (student_id)
 );
 
 /*Shows schema of table*/
 DESCRIBE student;
 
 /*Delete a table*/
 DROP TABLE student;
 
 /*Add column to a table*/
 ALTER TABLE student ADD COLUMN gpa DECIMAL(3,2);

/*Shows data table (rows and columns)*/
 SELECT * FROM student;
 
/*Shows schema of table*/
 DESCRIBE student;
 
/*Remove column in a table*/
 ALTER TABLE student DROP COLUMN gpa;
 
 /*Shows schema of table*/
 DESCRIBE student;
 
/*Shows data table (rows and columns)*/
 SELECT * FROM student;
 
 
 
 
 
/*insert values into table - row 1*/
INSERT INTO student VALUES (1, 'Jack', 'Biology');
/*Shows data table (rows and columns)*/
SELECT * FROM student;
 
/*insert values into table - row 2*/
 INSERT INTO student VALUES (2, 'Kate', 'Sociology');
/*Shows data table (rows and columns)*/
 SELECT * FROM student;
 
/*insert values into table - row 3. Insert only into student_id and name columns of student table*/
  INSERT INTO student (student_id, name) VALUES (3, 'Claire');
/*Shows data table (rows and columns)*/
 SELECT * FROM student;
 
 
/*insert values into specific table - row 4. Insert only into student_id and name columns of student table*/
  INSERT INTO student (student_id, name, major) VALUES (4, 'Claire');
/*Shows data table (rows and columns)*/
 SELECT * FROM student;
 
/*delete row in table - row 4.*/
 DELETE FROM student WHERE student_id= 4;
 SELECT * FROM student;
 
 /*insert values into table - row 4 and 5*/
 INSERT INTO student VALUES (4, 'Jack', 'Sociology');
 INSERT INTO student VALUES (5, 'Mike', 'Computer Science');
/*Shows data table (rows and columns)*/
 SELECT * FROM student;
 