select empno
     , ename
     , comm
     , case 
       when comm>0 then '수당 : '||comm
       when comm=0 then '수당없음'
       when comm is null then '해당사항 없음'
       end "comm_text"
  from emp;
  
select sum(pay) "sum"
     , avg(pay) "A"
     , max(pay) "X"
     , min(pay) "N"
     , round(stddev(pay),2) "S"
     , round(variance(pay), 2) "V"
  from professor;
  
select position
     , round(avg(pay),2) "avg"
  from professor
 group by position
having avg(pay)>=300;

select * from student;

select name
     , height
     , rank() over (order by height desc)"rank"
     , dense_rank() over (order by height desc)"rank2"
     , row_number() over (order by height desc)"rank3"
  from student
 where height>=170;
 
select name
     , grade
     , weight
     , rank() over (partition by grade order by weight desc) "rank"
  from student;
  
select name
     , jumin
     , deptno1 
     , decode(substr(jumin, 7, 1), '1', 'M', 'F') "MF"
     , weight
     , sum(weight) over (partition by deptno1, substr(jumin, 7, 1) order by weight desc) "total"
  from student;
  
