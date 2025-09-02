--복습문제

select deptno no
       , avg(sal)
  from emp
 group by no;
 -- group by에는 별칭 못 쓴다.

select deptno
       , job
       , sal
  from emp
 order by deptno;

select deptno
       , avg(sal)
  from emp
 group by deptno
 order by deptno;

select deptno
       , job
       , avg(sal)
  from emp
 group by deptno, job
 order by deptno;

select count(*) 
       , count(empno)
       , count(comm)
       , sum(comm)  --2200
       , avg(comm)  --550
       , avg(nvl(comm, 0))  --183.333
       , stddev(sal) "s" --1219 표준편차
       , variance(sal) "v" --1488347 분산
    from emp;

select * 
    from emp;

select deptno
    , sal
    from emp
    order by deptno;
    
--2077.083333333333333333333333333333333333 : 전체 12명에 대한 평균
select avg(sal)
    from emp
    order by deptno;
    
--10 : 2916.666666666666666666666666666666666667
--20 : 2258.333333333333333333333333333333333333
--30 : 1566.666666666666666666666666666666666667
--각 부서에 대한 평균 급여
select deptno
    , avg(sal)
    from emp
    group by deptno
    order by deptno;    
    
--오류
select deptno
    , avg(sal)
    from emp
    order by deptno;