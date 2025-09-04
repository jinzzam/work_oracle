select name
     , email
     , substr(email, instr(email,'@')+1) "DOMAIN"
     , pay
     , rank() over (partition by substr(email, instr(email,'@')+1) order by pay) "RANK"
  from professor
 where email is not null;
 
 select * from professor;
 
 select name
     , hpage
     , substr(hpage, instr(hpage,'.')+1) "DOMAIN"
     , pay
     , sum(pay) over (PARTITION by substr(hpage, instr(hpage,'.')+1) order by pay desc) "TOTAL"
  from professor
 where hpage is not null;
 
select substr(email, instr(email,'@')+1) "DOMAIN"
     , count(*)  "EA"
     , sum(count(*)) over ()  "SUM_DOMAIN"
     , count(*) / sum(count(*)) over () * 100  "SUM_DOMAIN"
  from professor
 group by substr(email, instr(email,'@')+1)
 order by substr(email, instr(email,'@')+1);
  
select * from student;
select * from department;

select s.name "STU_NAME"
     , s.deptno1 
     , d.dname  "DEPT_NAME"
  from student s, department d
 where s.deptno1 = d.deptno;
 
select s.name "STU_NAME"
     , s.deptno1
     , d.dname "DEPT_NAME"
  from student s join department d
 on s.deptno1 = d.deptno;
 
select * from emp2;
select * from p_grade;

select e.name
     , e.position
     , to_char(e.pay, '999,999,999') "PAY"
     , to_char(g.s_pay , '999,999,999') "Low PAY" 
     , to_char(g.e_pay, '999,999,999') "High Pay"
  from emp2 e, p_grade g
 where e.position = g.position;
 
select e.name
     , e.birthday
     , trunc((sysdate - e.birthday)/365, 0) "AGE"
     , e.position "CURR_POSITION"
     , g.position "BE_POSITION"
  from emp2 e, p_grade g
 where trunc((sysdate - e.birthday)/365, 0) between g.s_age and g.e_age;
 
select * from customer;
select * from gift;

select c.gname "CUST_NAME"
     , c.point
     , g.gname "GIFT_NAME"
  from customer c, gift g
 where c.point > g.g_start and g.gname='Notebook' ;
 
select a.profno
     , a.name
     , to_char(a.hiredate, 'YYYY/MM/DD') "HIREDATE"
     , count(b.hiredate) "COUNT" 
  from professor a, professor b
 where b.hiredate(+)<a.hiredate
 group by a.hiredate, a.profno, a.name
 order by 4;
 
select * from professor;
select * from emp;

select a.empno
     , a.ename
     , to_char(a.hiredate, 'YY/MM/DD') "HIREDATE"
     , count(b.hiredate) "COUNT" 
  from emp a, emp b
 where b.hiredate(+)<a.hiredate
 group by a.hiredate, a.empno, a.ename
 order by 4;
 
select * from emp2;
select * from dept2;

select e.empno
     , e.name
     , e.deptno
  from emp2 e, dept2 d
 where e.deptno = d.dcode 
   and d.area = 'Pohang Main Office';
   
select empno
     , name
     , deptno
  from emp2
 where deptno in (select dcode
                    from dept2
                   where area = 'Pohang Main Office');   
 
select dcode
  from dept2
 where area = 'Pohang Main Office';
 
select * from emp2;

select name
     , position
     , to_char(pay, '$999,999,999') "SALARY"
  from emp2
 where pay > any (select pay
                    from emp2
                   where position='Section head');

select to_char(pay, '$999,999,999') "SALARY"
  from emp2
 where position='Section head';
 
 
select name
     , position
     , to_char(pay, '$999,999,999') "SALARY"
  from emp2
 where pay > (select min(pay)
                from emp2
               where position = 'Section head')
               order by 3 desc;
 
select min(pay)
  from emp
 where position = 'Section head';
 
select * from student;

select name
     , grade
     , weight
 from student 
 where weight < (select min(weight)
                      from student
                     where grade = 2);
 
select name
     , grade
     , weight
 from student
 where weight < all (select weight
                      from student
                     where grade = 2); 

select weight
  from student
 where grade = 2;
 
select min(weight)
  from student
 where grade = 2;
 
select * from emp2;
select * from dept2;

select d.dname
     , e.name
     , to_char(e.pay, '$999,999,999') "SALARY"
  from emp2 e, dept2 d
 where e.deptno = d.dcode
   and e.pay < all (select avg(pay)
                      from emp2
                     group by deptno)
 group by d.dname, e.name, e.pay;
 
select d.dname
     , e.name
     , to_char(pay, '$999,999,999') "SALARY"
  from emp2 e, dept2 d
 where e.deptno = d.dcode
   and e.pay < (select min(avg(pay))
                  from emp2
                 group by deptno)
 order by 3;
 
 
 select min(avg(pay))
   from emp2
 group by deptno;
 
select d.dname
     , avg(pay)
  from emp2 e, dept2 d
 where e.deptno = d.dcode
 group by d.dcode, d.dname;
 
 select avg(pay)
   from emp2
 group by deptno;
 
select * from student;

select grade
     , name
     , weight
  from student
 where weight in (select max(weight)
                    from student
                   group by grade)
 order by grade;
  
select grade
     , name
     , max(weight)
  from student
 group by grade;
 
select * from department;
select * from professor;

select profno
     , name "PROF_NAME"
     , to_char(hiredate, 'YYYY-MM-DD') "HIREDATE"
     , dname "DEPT_NAME"
  from department d, professor p
 where d.deptno = p.deptno
   and hiredate in (select min(hiredate)
                      from professor 
                     group by deptno)
 order by hiredate;

select max(hiredate)
  from professor;
  
select * from emp2;
select * from dept2;

select name
     , position
     , to_char(pay, '$999,999,999') "SALARY" 
  from emp2
 where position is not null
   and pay in (select max(pay)
                 from emp2
                group by position)
 order by pay;
 
select name
     , dname
  from emp2 e, dept2 d
 where e.deptno = d.dcode;
 
select name
     , (select dname
          from dept2 d
         where e.deptno = d.dcode) "DNAME"
  from emp2 e;