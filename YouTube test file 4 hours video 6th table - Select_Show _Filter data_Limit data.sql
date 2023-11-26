/*Delete a table*/
DROP TABLE student;

/* Youtube video: https://youtu.be/HXV3zeQKqGY?si=_zWEctdZttSVIewM */

/*To create a table*/
CREATE TABLE student (
 student_id INT AUTO_INCREMENT, -- Automatically add number to each row of the table ... Its called a constraint
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

/*Selects and shows entire data table (rows and columns). " * " specifies all or you can state specific columns*/
 SELECT * 
 FROM student;

/*Selects and shows names column data in student table.*/
 SELECT name
 FROM student;

/*Selects and shows names column and major column data in student table.*/
 SELECT name, major
 FROM student;
/* OR */
/*Selects and shows names column and major column data in student table.*/
 SELECT student.name, student.major
 FROM student;


/*Selects and shows names column and major column data in student table ordered by name (alphabetical order).*/
 SELECT name, major
 FROM student
 ORDER BY name;
 /* OR */
/*Selects and shows names column and major column data in student table ordered by name (alphabetical order).*/
 SELECT student.name, student.major
 FROM student
 ORDER BY student.name;

/*Selects and shows names column and major column data in student table ordered by name (alphabetical order) in descending order.*/
 SELECT student.name, student.major
 FROM student
 ORDER BY student.name DESC;


/*Selects and shows names column and major column data in student table ordered by descending order number of student id.*/
 SELECT student.name, student.major
 FROM student
 ORDER BY student_id DESC;


/*Selects and shows all data in student table ordered by descending order number of student id.*/
 SELECT *
 FROM student
 ORDER BY student_id DESC;

/*Selects and shows all data in student table ordered by ascending order number of student id.*/
 SELECT *
 FROM student
 ORDER BY student_id ASC;


/*Selects and shows all data in student table ordered by ascending ordering by 1) major and then 2) student id.*/
 SELECT *
 FROM student
 ORDER BY major, student_id;

/*Selects and shows all data in student table ordered by ascending ordering by 1) major and then 2) student id.*/
 SELECT *
 FROM student
 ORDER BY major, student_id DESC;


/*Selects and shows all data in student table BUT show only first 2 rows.*/
 SELECT *
 FROM student
 LIMIT 2;

/*Selects and shows all data in student table, ordered by student id in descending order BUT show only first 2 rows.*/
 SELECT *
 FROM student
 ORDER BY student_id DESC
 LIMIT 2;

/*Selects and shows all data in student table, ordered by student id in ascending order BUT show only first 2 rows.*/
 SELECT *
 FROM student
 ORDER BY student_id ASC
 LIMIT 2;

/*Selects and shows all data in student table, and filter by major column specifically Biology.*/
 SELECT *
 FROM student
 WHERE major = 'Biology';

/*Selects and shows name and major columns in student table, and filters by major column specifically Biology.*/
 SELECT name, major
 FROM student
 WHERE major = 'Biology';


/*Selects and shows name and major columns in student table, and filters by major column specifically Biology or Chemistry.*/
 SELECT name, major
 FROM student
 WHERE major = 'chemistry' OR major = 'Biology';
 
 /*Selects and shows name and major columns in student table, and filters by major column specifically is Biology or Name is Kate.*/
 SELECT name, major
 FROM student
 WHERE major = 'chemistry' OR name = 'Kate';

 /*Selects and shows name and major columns in student table, and filters by where major is not Chemistry*/
 SELECT name, major
 FROM student
 WHERE major <> 'chemistry';

 /*Selects all columns in student table, and filters by where student is is less than 3*/
 SELECT *
 FROM student
 WHERE student_id > 3;

 /*Selects all columns in student table, and filters by where student is is less than or equal to 3*/
 SELECT *
 FROM student
 WHERE student_id <= 3;

 /*Selects all columns in student table, and filters by where student is is less than or equal to 3 and name is not Jack.*/
 SELECT *
 FROM student
 WHERE student_id <= 3 AND name <> 'Jack';

/*Selects all columns in student table, where name column has Claire, Kate or Mike.*/
 SELECT *
 FROM student
 WHERE name IN ('Claire', 'Kate', 'Mike');

/*Selects all columns in student table, where major column has Biology or Chemistry.*/
 SELECT *
 FROM student
 WHERE major IN ('Biology', 'Chemistry');

/*Selects all columns in student table, where major column has Biology or Chemistry and student id is greater than 2.*/
 SELECT *
 FROM student
 WHERE major IN ('Biology', 'Chemistry') AND student_id >2;
 
 
 /*Selects all columns in student table, where major column has Biology or Chemistry and student id is greater than 2. Then limit to 1 result shown.*/
 SELECT *
 FROM student
 WHERE major IN ('Biology', 'Chemistry') AND student_id >2
 LIMIT 1;
 
 
 
 
 /*Remove safe update*/
 SET SQL_SAFE_UPDATES = 0;
 
 /*Delete all rows in table - row .*/
 DELETE FROM student;
 SELECT * FROM student;