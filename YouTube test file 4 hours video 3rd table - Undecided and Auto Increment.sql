/*Delete a table*/
DROP TABLE student;

/*To create a table*/
CREATE TABLE student (
 student_id INT AUTO_INCREMENT, -- Automatically add number to each row of the table ... Its called a contraint
 name VARCHAR(20) NOT NULL, -- Name column cannot be null
 major VARCHAR(20) DEFAULT 'undecided', -- If no value entered will show undecided.
 PRIMARY KEY (student_id) -- A primary key is both NOT NULL and Unique 
 );
 
 /*Shows schema of table*/
 DESCRIBE student;
 
/*insert values into table - row 1*/
INSERT INTO student (name, major) VALUES ('Jack', 'Biology');
INSERT INTO student (name, major) VALUES ('Kate', 'Sociology');
INSERT INTO student (name, major) VALUES ('Claire');
INSERT INTO student (name, major) VALUES (NULL, 'Biologyo');
INSERT INTO student (name, major) VALUES ('NULL', 'Computer Science');
INSERT INTO student (name, major) VALUES (6, 'Kate', 'Biology');
/*Shows data table (rows and columns)*/
 SELECT * FROM student;
 
 
 
/*delete row in table - row 4.*/
 DELETE FROM student WHERE student_id= 5;
 SELECT * FROM student;