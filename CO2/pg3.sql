//main 
create database emp;
use emp;
create table employee(emp_id INT,salary FLOAT);
insert into employee values(1,20000);
insert into employee values(110,10000);
select emp_id,incent(emp_id),salary from employee;

//function
CREATE DEFINER=`root`@`localhost` FUNCTION `incent`(id INT) RETURNS int(11)
BEGIN
DECLARE 
	incentive FLOAT;
IF(id = 110)
THEN
	set incentive = 1000;
ELSE 
	SET incentive =0;
END IF;
RETURN incentive;
END
