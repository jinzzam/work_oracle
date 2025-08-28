select * from emp;
select * from cal;
select ename
    , comm
    , nvl(comm,0)
    , nvl(comm,100)
    , nvl2(comm,1,2)
    from emp;
--    null이면 0으로, 100으로
--is null, is not null

select profno, name, pay, bonus
    , to_char(pay*12+nvl(bonus,0), '999,999') "total"
    from professor where deptno=201;
    
select * from professor;
    
SELECT EMPNO
    , ENAME
    , COMM
    , NVL2(COMM, 'EXIST', 'NULL') "NVL2"
    FROM EMP
    WHERE DEPTNO=30;
    
select max(sal)
    , min(sal)
    , max(hiredate)
    , min(hiredate)
    from emp;