select name
     , tel
     , position
     , to_char(pay, '999,999,999')
     , rank() OVER (partition by substr(tel, 1, instr(tel, 1, ')')-1), position
                    order by pay desc) "rank"
  from emp2;
     
select * from emp2;

select name
     , birthday
     , emp_type
     , to_char(pay, '999,999,999') "PAY"
     , to_char(sum(pay) over (partition by emp_type order by pay desc), '999,999,999') "TOTAL" 
  from emp2;
  
select * from student;
select * from professor;

select a.name "STU_NAME", b.name "PROF_NAME"
  from student a, professor b
 where a.deptno1 = 101 and b.deptno = 101 and a.profno = b.profno;
 
 select * from customer; 
 select * from gift;

 
 select c.gname "CUST_NAME"
      , TO_CHAR(c.point, '999,999') "POINT"
      , g.gname "GIFT_NAME"
  from customer c, gift g
 where c.point between g.g_start and g.g_end;
 
select * from hakjum;
select * from score;
select * from student;
 
SELECT s.name "STU_NAME"
     , sc.total "SCORE"
     , h.grade "CREDIT"
  from student s, hakjum h, score sc
 where sc.studno = s.studno
   and (sc.total between h.min_point and h.max_point);
   
select a.name "STU_NAME"
     , b.name "PROF_NAME"
  from student a 
  left JOIN professor b
    on a.profno = b.profno;
    
select a.name "STU_NAME"
     , b.name "PROF_NAME"
  from student a, professor b
 where a.profno = b.profno(+)
union
select a.name "STU_NAME"
     , b.name "PROF_NAME"
  from student a, professor b
 where a.profno(+) = b.profno;
 
select a.name "STU_NAME"
     , b.name "PROF_NAME"
  from student a FULL OUTER JOIN professor b
    ON a.profno = b.profno;
    
SELECT *
  FROM EMP;
  
--SELF JOIN
SELECT e1.EMPNO "ENO"
     , e1.ENAME
     , e2.EMPNO "MGRNO"
     , e2.ENAME "MGR_NAME"
  FROM EMP e1, EMP e2
 where e1.mgr = e2.empno;
 
select * from emp;
 
--인라인 뷰(inline view)
select e.deptno
     , d.dname
     , sal
  from (select deptno, max(sal) sal
          from emp
          group by deptno) e, dept d
 where e.deptno = d.deptno;   
  
select * from v_emp_dept;

select distinct deptno, profno
          from professor;

select a.deptno
     , a.profno
     , a.name
  from (select distinct deptno, profno, name
          from professor) a 
          right join (select distinct profno from professor) b
          on a.profno= b.profno;
 
select decode(deptno, ndeptno, null, deptno) deptno, profno, name
  from (select lag(deptno) over(order by deptno) ndeptno
     , deptno
     , profno
     , name
  from professor
  );
  
(select lag(deptno) over(order by deptno) ndeptno
     , deptno
     , profno
     , name
  from professor
  );
--lag : 이전 행의 값을 리턴
 select lag(deptno) over(order by deptno) "i" from professor; 
          
select * from professor;
select * from v_prof_dept_;

create or replace view v_prof_dept_
as 
select p.profno "교수번호"
     , p.name "교수명"
     , d.dname "소속학과명"
  from professor p join department d
    on p.deptno = d.deptno;
    
select d.dname
     , h
     , w
  from (select deptno1
             , max(height) h
             , max(weight) w
          from student 
         group by deptno1) s, department d
 where s.deptno1 = d.deptno;   
 
 select deptno1, deptno2,max(height) h, max(weight) w
          from student
          group by deptno1, deptno2;

select avg(height) avg_height
        ,grade
        from student
        group by grade, height;

select d.dname
     , a.max_height
     , s.name
     , s.height
  from (select max(height) max_height
        ,deptno1
        from student
        group by deptno1) a, student s, department d
 where s.height = a.max_height
   and s.deptno1 = d.deptno
   and s.deptno1 = a.deptno1;   
 
 select * from student; 
 select * from department;
 
 select max(height) over (partition by deptno1 order by height), deptno1
    from student ;
    
select s.grade
     , s.name
     , s.height
     , a.avg_height
  from (select avg(height) avg_height
             , grade
          from student
         group by grade
       ) a, student s
 where a.grade = s.grade
   and a.avg_height < s.height
 order by 1; 
 
select * from professor;

select * from (
select rank() over (order by pay desc) "Ranking"
     , name
     , pay      
  from professor
  )
 where rownum <=5;
 
select rownum "Ranking"
     , name
     , pay
  from (
        select name
             , pay      
          from professor
          order by 2 desc
        )
 where rownum between 1 and 5;


