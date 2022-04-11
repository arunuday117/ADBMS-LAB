//main code
create database T;
use T;
create table T1(a INT,b CHAR(10));
call ins(1,'Amal');
call ins(2,'Anoop');
call ins(3,'Bharath');
call ins(4,'Sunil');
select * from T1;

//stored procedure
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins`(aa INT,bb CHAR(10))
BEGIN
if((select a from T1 where a like(aa)))
then
	insert into T1 values(null,null);
else
	insert into T1 values(aa,bb);
end if;
END

