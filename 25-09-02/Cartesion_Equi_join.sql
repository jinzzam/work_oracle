--카티션 곱(cartesion product)
--각 PK : EMPNO, DEPTNO
SELECT * from emp, dept;

--12
SELECT * 
  FROM emp a, dept b
 where a.deptno = b.deptno;

--등가 조인(Equi Join)
--12
SELECT ename
     , dname
  FROM emp a, dept b
 where a.deptno = b.deptno;


SELECT * from dept;

--12
SELECT count(*) from emp;
--4
SELECT count(*) from dept;
SELECT * from dept;
SELECT * from emp;
