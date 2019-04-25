/* Create tables */
CREATE TABLE student_name
(
id smallint,
name "char"[]
);

CREATE TABLE student_stream
(
id smallint,
stream "char"[]
);

/* Insert some records */
INSERT INTO student_name(id, name) VALUES (1, 'Sayak');

INSERT INTO student_name(id, name) VALUES (2, 'Alex');

INSERT INTO student_name(id, name) VALUES (3, 'Sameer');

INSERT INTO student_name(id, name) VALUES (4, 'Rick');

INSERT INTO student_stream(id, stream) VALUES (1, 'CS');

INSERT INTO student_stream(id, stream) VALUES (1, 'IT');

INSERT INTO student_stream(id, stream) VALUES (2, 'ECE');

INSERT INTO student_stream(id, stream) VALUES (9, 'ECE');


/* SQL Joins

Difference between joins
(INNER) JOIN**: Returns records that have matching values in both tables

LEFT (OUTER) JOIN**: Return all records from the left table, and the matched records from the right table

RIGHT (OUTER) JOIN**: Return all records from the right table, and the matched records from the left table

FULL (OUTER) JOIN**: Return all records when there is a match in either left or right table
*/

SELECT s1.id, s1.name, s2.stream
FROM student_name AS s1
INNER JOIN student_stream AS s2
ON s1.id = s2.id;

SELECT s1.id, s1.name, s2.stream
FROM student_name AS s1
INNER JOIN student_stream AS s2
USING (id);

SELECT s1.id, s1.name, s2.stream
FROM student_name AS s1
LEFT JOIN student_stream AS s2
ON s1.id = s2.id;

SELECT s1.id, s1.name, s2.stream
FROM student_name AS s1
RIGHT JOIN student_stream AS s2
ON s1.id = s2.id;

SELECT s1.id, s1.name, s2.stream
FROM student_name AS s1
FULL JOIN student_stream AS s2
ON s1.id = s2.id;

SELECT s1.id, s2.id
FROM student_name AS s1
CROSS JOIN student_stream AS s2;

select id, name
from student_name
where id IN
(select id from student_stream where stream
IN ('CS', 'IT', 'ECE'));

select id, name
from student_name
where id NOT IN
(select id from student_stream where stream
IN ('CS', 'IT', 'ECE'));




