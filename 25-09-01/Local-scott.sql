SELECT NAME
     , SUBSTR(JUMIN, 3, 2)"MONTH"
     , AN_KEY_DAP
  FROM MEMBER
 WHERE AN_KEY_DAP LIKE 'Ni%'; 
 
SELECT NAME
     , POSITION
     , INSTR(POSITION, 'p') "P"
     , EMAIL
  FROM PROFESSOR
 WHERE EMAIL LIKE '%net'; 
 
SELECT NAME
     , HPAGE
--     , (INSTR(HPAGE, '.'))
     , SUBSTR(HPAGE, INSTR(HPAGE, '/')+2, (INSTR(HPAGE, '.')-2) - (INSTR(HPAGE, '/'))) "WWW"
  FROM professor
 WHERE HPAGE IS NOT NULL;
 
SELECT NAME
     , WEIGHT
     , JUMIN   
     , REPLACE(JUMIN, SUBSTR(JUMIN, 7, 7), '*******') "SECURE"
  FROM STUDENT
 WHERE WEIGHT<70;
 
SELECT ENAME
     , SAL
     , COMM
     , TO_CHAR(SAL*12 , '$999,999') "Y_SAL"
     , TO_CHAR((SAL*12)+COMM, '$999,999') "TOTAL"
     , TO_CHAR(((SAL*12)+COMM)*1.05, '$999,999') "5% UP"
     , TO_CHAR(((SAL*12)+COMM)*0.95, '$999,999') "D% DOWN"
  FROM EMP
 WHERE COMM IS NOT NULL;
     
SELECT NAME
     , HPAGE
     ,REPLACE(HPAGE, substr(hpage, (INSTR(HPAGE, '/')+2), INSTR(HPAGE, '.')-INSTR(HPAGE, '/')-2), 'study') "WWW"
  FROM PROFESSOR
 WHERE HPAGE IS NOT NULL;
 
select name
     , hpage
     , decode(((instr(hpage, '.'), instr(hpage), '/')), 5
     , (replace(hpage, substr(hpage, 8, 3), 'study'))
     , (replace(hpage, substr(hpage, 8, 4), 'study')))  "STUDY_HPAGE"
     ;

select gname
     , point
     , case
       when point >=1 and point<=99999 then 'C'
       when point >=100000 and point<=299999 then 'B'
       when point >=300000 and point<=600000 then 'A'
       else 'S'
       end "CLASS"
  from customer
 order by point desc;
  
select max(sal+nvl(comm, 0)) "MAX"
     , min(sal+nvl(comm, 0)) "MIN"
     , round(avg(sal+nvl(comm, 0)), 1) "AVG"
  from emp;

select count(*)||'EA' "TOTAL"
    ,count(decode(to_char(birthday, 'MM'), '01', 1))||'EA' "JAN"
    ,count(decode(to_char(birthday, 'MM'), '02', 1))||'EA' "FEB"
    ,count(decode(to_char(birthday, 'MM'), '03', 1))||'EA' "MAR"
    ,count(decode(to_char(birthday, 'MM'), '04', 1))||'EA' "APR"
    ,count(decode(to_char(birthday, 'MM'), '05', 1))||'EA' "MAY"
    ,count(decode(to_char(birthday, 'MM'), '06', 1))||'EA' "JUN"
    ,count(decode(to_char(birthday, 'MM'), '07', 1))||'EA' "JUL"
    ,count(decode(to_char(birthday, 'MM'), '08', 1))||'EA' "AUG"
    ,count(decode(to_char(birthday, 'MM'), '09', 1))||'EA' "SEP"
    ,count(decode(to_char(birthday, 'MM'), '10', 1))||'EA' "OCT"
    ,count(decode(to_char(birthday, 'MM'), '11', 1))||'EA' "NOV"
    ,count(decode(to_char(birthday, 'MM'), '12', 1))||'EA' "DEC"
from student;

select count(*) "TOTAL"
    ,count(decode(substr(tel, 1, instr(tel,')')-1 ), '02', 0)) "SEOUL"
    ,count(decode(substr(tel, 1, instr(tel,')')-1 ), '031', 0)) "GYEONGGI"
    ,count(decode(substr(tel, 1, instr(tel,')')-1 ), '051', 0)) "SEOUL"
    ,count(decode(substr(tel, 1, instr(tel,')')-1 ), '052', 0)) "SEOUL"
    ,count(decode(substr(tel, 1, instr(tel,')')-1 ), '053', 0)) "SEOUL"
    ,count(decode(substr(tel, 1, instr(tel,')')-1 ), '055', 0)) "SEOUL"
  from student;

select deptno
     , ename
     , sal
     , sum(sal) over (order by sal) "TOTAL"
  from emp;
  
select sum(decode(name, 'apple', price)) "APPLE"
     , sum(decode(name, 'grape', price)) "GRAPE"
     , sum(decode(name, 'orange', price)) "ORANGE"
  from fruit;

select count(*)||'EA ('||count(*)/count(*)*100||'%)' "TOTAL"
    ,count(decode(substr(tel, 1, instr(tel,')')-1 ), '02', 0))
    ||'EA ('||count(decode(substr(tel, 1, instr(tel,')')-1 ), '02', 0))/count(*)*100||'%)' "SEOUL"
    ,count(decode(substr(tel, 1, instr(tel,')')-1 ), '031', 0))
    ||'EA ('||count(decode(substr(tel, 1, instr(tel,')')-1 ), '031', 0))/count(*)*100||'%)' "GYEONGGI"
    ,count(decode(substr(tel, 1, instr(tel,')')-1 ), '051', 0))
    ||'EA ('||count(decode(substr(tel, 1, instr(tel,')')-1 ), '051', 0))/count(*)*100||'%)' "BUSAN"
    ,count(decode(substr(tel, 1, instr(tel,')')-1 ), '052', 0)
    )||'EA ('||count(decode(substr(tel, 1, instr(tel,')')-1 ), '052', 0))/count(*)*100||'%)' "ULSAN"
    ,count(decode(substr(tel, 1, instr(tel,')')-1 ), '053', 0))
    ||'EA ('||count(decode(substr(tel, 1, instr(tel,')')-1 ), '053', 0))/count(*)*100||'%)' "DAEGU"
    ,count(decode(substr(tel, 1, instr(tel,')')-1 ), '055', 0))
    ||'EA ('||count(decode(substr(tel, 1, instr(tel,')')-1 ), '055', 0))/count(*)*100||'%)' "GTEONGNAM"
  from student;

select deptno
     , ename
     , sal
     , sum(sal) over (partition by deptno order by sal) "TOTAL"
  from emp ;

select l_date "대출일자"
     , l_code "대출종목코드"
     , l_qty "대출건수"
     , l_total "대출총액"
     , sum(l_total) over (order by l_date) "누적대출금액"
  from loan
 where l_store=1000;

select  l_code "대출종목코드"
      , l_store "대출지점"
      , l_date "대출일자"
      , l_qty "대출건수"
      , l_total "대출액"
     , sum(l_total) over (partition by l_code, l_store order by l_date) "누적대출금액"
  from loan;

SELECT * FROM MEMBER;
SELECT * FROM professor;
SELECT * FROM STUDENT;
SELECT * FROM EMP;
SELECT * FROM fruit;
SELECT * FROM loan;

create table professor2(
profno number(8),
name varchar2(30),
id varchar2(20),
position varchar2(50),
pay number(5),
hiredate date,
bonus number(5),
deptno number(3),
email varchar2(100),
hpage varchar2(100)
);
select * from professor3;
desc professor3;
create table professor3
as 
select profno, name, email from professor;

alter table professor3 
add
(CARD_YN CHAR(1) default 'N');

alter table professor3
rename COLUMN CARD_YN to CHECK_CARD_YN;

alter table professor3
modify email varchar2(100);

create table professor4 
as select * from professor3 where 1=2;

alter table professor3
drop column check_card_YN;

select * from professor4;
desc professor2;