SELECT * FROM EMP2;

SELECT NAME
     , POSITION
     , TO_CHAR(PAY, '$999,999,999') "SALARY"
  FROM EMP2
 GROUP BY POSITION, NAME;
 HAVING ANY>=SELECT AVG(PAY)
          FROM EMP2 GROUP BY PAY,POSITION;
SELECT * FROM EMP2;

SELECT NAME
     , position
     , TO_CHAR(PAY, '$999,999,999') "SALARY"
  FROM EMP2 A
 WHERE PAY >= (SELECT AVG(PAY)
                 FROM  EMP2 B
                WHERE A.POSITION = B.POSITION);
  
SELECT AVG(PAY)
  FROM EMP2;
  
select * from student;
select * from professor;
select * from department;


select s.name "STUD_NAME"
     , d.dname "DEPT_NAME"
  from student s, department d
 where s.deptno1 = d.deptno
   and s.deptno1 = (select s.deptno1
                      from student s
                     where s.name = 'Anthony Hopkins');
                      
select p.name "PROF_NAME"
     , to_char(p.hiredate, 'YYYY-MM-DD') "HIREDATE"
     , d.dname "DEPT_NAME"
  from professor p, department d
 where p.deptno = d.deptno
   and p.hiredate > (select hiredate
                       from professor
                      where name='Meg Ryan');
             
select hiredate
  from professor
 where name='Meg Ryan';
 
select name
     , weight
  from student
 where weight > (select avg(weight)
                   from student
                  where deptno1 = 201);