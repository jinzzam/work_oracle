select deptno
     , profno
     , name
  from professor;

select a.name "STU_NAME"
     , b.name "PROF_NAME"
  from student a, professor b
 where a.profno = b.profno;
 
select a.name "STU_NAME"
     , b.name "PROF_NAME"
  from student a RIGHT OUTER JOIN professor b
    ON a.profno = b.profno;
    
select a.name "STU_NAME"
     , b.name "PROF_NAME"
  from student a LEFT OUTER JOIN professor b
    ON a.profno = b.profno;
 
select a.name "STU_NAME"
     , b.name "PROF_NAME"
  from student a, professor b
 where a.profno = b.profno(+);
 
SELECT * FROM STUDENT;