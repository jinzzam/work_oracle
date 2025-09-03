 select ename
       , hiredate
       , sal
       , lag(sal, 1, 0) over(order by hiredate) "1" --아래로 1칸, 0으로 채움
       , lag(sal, 2) over(order by hiredate) "1"    --아래로 2칸, null
       , lag(sal) over(order by hiredate) "1"       --,1이 생략, 아래로 1칸, null
       , lag(sal, 1) over(order by hiredate) "1"    --,1이 생략, 아래로 1칸, null
       
       , lead(sal, 1, 0) over(order by hiredate) "1"--위로 1칸, 0으로 채움
       , lead(sal, 2) over(order by hiredate) "1"   --위로 2칸, null
       , lead(sal) over(order by hiredate) "1"      --,1이 생략, 위로 1칸, null
   from emp;
   
select lag(deptno) over(order by deptno), deptno from professor; 
   
 select 'A-B-C-D'
    , instr('A-B-C-D', '-', -6, 2) "i"  --시작하자마자 찾고 그 뒤에 없다(?) 그래서 0
  from dual;  

CREATE OR REPLACE VIEW V_emp_dept1
as
select e.ename
     , d.dname
  from emp e, dept d
 where e.deptno = d.deptno;

select * from V_emp_dept1;

--뷰에 인덱스 생성 안됨
CREATE INDEX idx_v_emp1_ename
    on v_emp1(ename);

--롤백해도 생성된 뷰는 취소되지 않음
ROLLBACK;

drop view v_emp1;
CREATE OR REPLACE VIEW V_EMP2
AS
SELECT EMPNO
     , ENAME
--     , hiredate
  FROM EMP;

drop view v_emp1;
CREATE OR REPLACE VIEW V_EMP1
AS
SELECT EMPNO
     , ENAME
     , hiredate
  FROM EMP;

SELECT *
  FROM v_emp1;
SELECT *
  FROM v_emp2;
  
SELECT *
  FROM EMP;