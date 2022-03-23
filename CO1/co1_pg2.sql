CREATE DATABASE organ;
USE organ;
CREATE table dept(deptno INT NOT NULL PRIMARY KEY,dname VARCHAR(20) NOT NULL,LOC VARCHAR(20) NOT NULL);
ALTER table dept RENAME department;
ALTER table department ADD pincode INT NOT NULL; 
DESCRIBE department;
ALTER TABLE department DROP pincode;
ALTER TABLE department CHANGE COLUMN dname dept_name VARCHAR(20);
ALTER TABLE department CHANGE COLUMN loc loc CHAR(10);
DROP table department;

