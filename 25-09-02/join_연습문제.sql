select * from student;
select * from professor;
select * from department;

--ORACLE JOIN
select a.name "stu_name", b.name "prof_name"
  from student a , professor b
 where a.profno = b.profno;
 
--ANSI JOIN
select s.name, p.name
  from student s join professor p
    on s.profno = p.profno;
    
select s.name "STU_NAME", d.dname "DEPT_NAME", f.name "PROF_NAME" 
  from student s, professor f, department d
 where s.profno = f.profno
   and d.deptno = f.deptno;
   
select s.name "STU_NAME", d.dname "DEPT_NAME", f.name "PROF_NAME" 
  from student s, professor f, department d
 where s.profno = f.profno
   and s.deptno1 = d.deptno;
   
select s.name "STU_NAME", d.dname "DEPT_NAME", f.name "PROF_NAME" 
  from student s 
  INNER join professor f 
    on s.profno = f.profno
  inner join department d
    on d.deptno = f.deptno;