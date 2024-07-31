CREATE DATABASE Student_info;

USE student_info;

CREATE TABLE student(st_id INT,student_name VARCHAR(25),address VARCHAR(25),mobile_no VARCHAR(10));

CREATE TABLE course(ct_id INT,course VARCHAR(25),percentage INT  ,grade VARCHAR(10));

SHOW TABLES;

RENAME TABLE student TO st;

RENAME TABLE course TO ct;

DESC st;

DESC ct;

ALTER TABLE st
ADD marks2 INT;

ALTER TABLE st
DROP COLUMN marks2;

ALTER TABLE st
CHANGE address full_addresss VARCHAR(25);

INSERT INTO st()
VALUE (1,'amey','pune','1234'),(2,'arphan','mumbai','5678'),(3,'varsha','nashik','91011'),
(4,'pratishka','nashik','121314'),(10,'pratik','pune','151617');

SELECT * FROM st;

INSERT INTO ct()
VALUES(1,'c1',80,'a'),(3,'c2',70,'b'),(4,'c3',60,'c'),(5,'c1',35,'d'),(6,'c2',70,'b'),(7,'c3',77,'b');

SELECT * FROM ct;

SELECT student_name FROM st;

UPDATE st
SET mobile_no=789456
WHERE student_name='pratik';

UPDATE ct
SET percentage=90
WHERE ct_id=1;

SELECT LENGTH(student_name)AS len FROM st;

SELECT DISTINCT (full_addresss) FROM st;

SELECT DISTINCT (full_addresss) FROM st
ORDER BY full_addresss ASC;

SELECT DISTINCT (full_addresss) FROM st
ORDER BY full_addresss DESC;

SELECT UPPER (student_name) FROM st;
 
SELECT LOWER (student_name) FROM st;

SELECT CONCAT (student_name,'&',full_addresss,'@',mobile_no)AS full_info FROM st;

SELECT repeat ('amey',3)FROM st;

SELECT MID('amey',2,4)FROM st;

SELECT RIGHT('arphan',2)FROM st;

SELECT LEFT('pratik',2)FROM st;

SELECT LTRIM ('     varsha')FROM st;   

SELECT RTRIM ('pratik     ')FROM st; 

SELECT TRIM('  amey  ')FROM st;

SELECT st.st_id,st.student_name,ct.percentage
FROM st INNER JOIN ct
ON st.st_id=ct.ct_id;

SELECT st.st_id,st.student_name,ct.percentage
FROM st left JOIN ct
ON st.st_id=ct.ct_id;

SELECT st.st_id,st.student_name,ct.percentage
FROM st RIGHT JOIN  ct
ON st.st_id=ct.ct_id;

SELECT st_id FROM st
UNION
SELECT ct_id FROM ct;

SELECT st_id FROM st
UNION ALL
SELECT ct_id FROM ct;

SELECT * FROM st
LEFT JOIN ct
ON st.st_id=ct.ct_id;

SELECT st_id,student_name,percentage FROM st
LEFT JOIN ct
ON st.st_id=ct.ct_id;

SELECT * FROM st
RIGHT JOIN ct
ON st.st_id=ct.ct_id;

SELECT st_id,student_name,percentage FROM st
RIGHT JOIN ct
ON st.st_id=ct.ct_id;

