select * from tab;

select * from professor;
desc professor;
select name, id, email 
  from professor;
select distinct deptno
  from professor;
select profno "교수번호"
     , name "교수명"
     , position "위치"
     , hpage "홈페이지"
  from professor;

select name || '교수의 이메일은 '
        || email || '이고, 홈페이지는 '
        || hpage || '이다.'
  from professor;
--작은 따옴표 제발 잊지 말길!

select name, pay, pay*12 "y_pay"
  from professor;
  
select name, pay, bonus
  from professor
  where bonus>80
  order by pay desc;
  
select name, id, hpage
  from professor
 where deptno=102 and hpage is not null;
 
select name, pay, hiredate
  from professor
 where pay>=300 and pay<=500;
 
select name, id, position
  from professor
 where id like '%er';
 
select profno, name, pay, bonus, pay*12+bonus "총 연봉", deptno
  from professor
 where bonus is not null
 order by deptno desc, pay*12+bonus;
 
 select name, pay, bonus
   from professor
  where (pay>=300 and bonus is null)
        or (pay>=500);
        
select name, height, substr(jumin, 5, 2)"DAY"
  from student
 where height>=180;
 
select name, grade, tel, instr(tel, '6') "6"
  from student
 where grade in ('2', '4');
 
select name, tel
       , substr(substr(tel,instr(tel, ')')+1), 1, instr(substr(tel,instr(tel, ')')+1), '-')-1) "GUK_NO"
  from student
 where deptno1 = 101;

--?
select ename, job
       , replace(job, substr(job,substr(job, 3, 1)),'?') "JOB?"
  from emp
 where deptno = 20;
 
select name, hiredate
  from professor
 where to_char(hiredate, 'MM') in ('03', '08', '10');
 
select name
       , to_char(hiredate, 'YYYY-MM-dd') "HIREDATE"
       , pay
       , bonus
       , to_char(pay*12+bonus, '$99,999') "TOTAL"
       , to_char(0.9*(pay*12+bonus), '$99,999')  "10%DOWN"
       , to_char(0.9*(pay*12+bonus)*1200, '99,999,999' )"WON"
  from professor
 where bonus is not null;
 
 select ename
        , sal
        , nvl(comm, 0) "COMM"
        , to_char(sal*12+nvl(comm, 0), '999,999') "TOTAL"
  from emp
 where deptno=30;
 
select * from emp2;
 
select name
       , tel, instr(tel,'-'), instr(tel,')')
       , decode((instr(tel,'-') - instr(tel,')')),5
       ,(replace(tel, substr(tel, instr(tel, ')')+1,4), '****'))
       ,(replace(tel, substr(tel, instr(tel, ')')+1,3), '***'))
        ) "REPLACE"
  from emp2;
  
select name
       , pay
       , case 
            when pay >= 1 and pay<=300 then 'GRADE1'
            when pay >=301 and pay<= 400 then 'GRADE2'
            when pay >= 401 and pay <=500 then 'GRADE3'
            else 'GRADE4'
        end "GRADE"
  from professor
 order by pay desc;
        
select no
       , ip
       , regexp_replace(ip, '\.', '') "Dot Remove"
  from t_reg2;
       
select no
       , ip
       , regexp_replace(ip, '(\.)', '/', 1, 1) "REPLACE1"
  from t_reg2;

select * from emp;

select deptno
       , round(avg(nvl(sal, 0)), 2)
  from emp
 group by deptno
having avg(nvl(sal, 0))>=2000;

select distinct deptno
       , sum(decode(job, 'CLERK', 1, 0)) "CLERK"
       , sum(decode(job, 'MANAGER', 1, 0)) "MANAGER"
       , sum(decode(job, 'PRESIDENT', 1, 0)) "PRESIDENT"
       , sum(decode(job, 'ANALYST', 1, 0)) "ANALYST"
       , sum(decode(job, 'SALESMAN', 1, 0)) "SALESMAN"
  from emp
 group by deptno
 order by deptno;
 

select distinct deptno
       , count(decode(job, 'CLERK', 9)) "CLERK"
       , count(decode(job, 'MANAGER', 9)) "MANAGER"
       , count(decode(job, 'PRESIDENT', 9)) "PRESIDENT"
       , count(decode(job, 'ANALYST', 9)) "ANALYST"
       , count(decode(job, 'SALESMAN', 9)) "SALESMAN"
  from emp
 group by deptno
 order by deptno; 
 
 select ename
       , hiredate
       , sal
       , lag(sal, 1, 0) over(order by hiredate) "1"
       , lag(sal, 2) over(order by hiredate) "1"
       , lag(sal) over(order by hiredate) "1" --,1이 생략
       , lag(sal, 1) over(order by hiredate) "1"
       , lead(sal, 1, 0) over(order by hiredate) "1"
       , lead(sal, 2) over(order by hiredate) "1"
       , lead(sal) over(order by hiredate) "1"
   from emp;
   
select *
  from emp
 order by ename;
 
select rank('SMITH') within group(order by ename) "r"
--select rank('SMITH') within group(order by hiredate) "r"
  from emp;
  
select empno
       , ename
       , sal
       , rank() over(order by sal) "r"
       , rank() over(order by sal desc) "r"
  from emp;
  
select empno
       , ename
       , sal
       , deptno
       , rank() over (order by sal desc) "RANK"
  from emp
 where deptno=10
 union all
 select empno
       , ename
       , sal
       , deptno
       , rank() over (order by sal desc) "RANK"
  from emp
 where deptno=20
 union all
 select empno
       , ename
       , sal
       , deptno
       , rank() over (order by sal desc) "RANK"
  from emp
 where deptno=30;
 
 select empno
       , ename
       , sal
       , deptno
       , rank() over (partition by deptno order by sal desc) "RANK"
  from emp;
  
 select empno
       , ename
       , sal
       , deptno
       , job
       , rank() over (partition by deptno, job order by sal desc) "RANK"
  from emp;
  
select empno
       , ename
       , sal
       , rank() over (order by sal desc) "RANK"
       , dense_rank() over (order by sal desc) "RANK"
       , row_number() over (order by sal desc) "RANK"
  from emp;