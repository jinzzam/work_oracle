create table emp01
as
select *
  from emp;
  
INSERT INTO emp01 
select *
  from emp01;
--3,145,728
select count(*)
  from emp01;
  
INSERT INTO emp01(empno, ename)
values(111, 'aaa');
commit;

select *
  from emp01;

drop index index_emp01_ename;

--4.696
create index index_emp01_ename
on emp01(ename);
  
--ename에 인덱스 안걸려있음
--0.023 0.234 0.188
select empno, ename
  from emp01
 where ename='aaa';
--index 걸려있을 때
--0.005 0.001 0
  
select ROWID
  from emp;
  
