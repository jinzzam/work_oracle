alter table new_emp2
add(BIRTHDAY DATE DEFAULT sysdate);

alter table new_emp2
rename COLUMN BIRTHDAY to BIRTH;

alter table new_emp2
modify(empno number(7));


alter table new_emp2
drop column birth;

select * from new_emp2;
desc new_emp2;

create table new_emp3
as
select * 
  from new_emp2
 where 1=2;

create table new_emp2
as
select empno, ename, hiredate
  from emp;

select * from new_emp2;
desc new_emp2;

create table new_emp
(no number(5) 
,name VARCHAR2(20) 
,hiredate date 
,bonus number(6, 2)
);

alter table dept6
drop column loc;

alter table dept6
MODIFY(loc VARCHAR2(20));

rename dept5 to dept6;

desc dept6;

select *
  from dept6;

alter table dept5
rename COLUMN location2 to loc;

alter table dept5
add(location2 VARCHAR2(10) DEFAULT 'busan');

alter table dept5
add(location VARCHAR2(10));

select *
  from dept5;

create table dept5
as
select dcode, dname
  from dept2
 where dcode in(1000, 1001, 1002);

create table dept4
as
select *
  from dept2
 where 1=2;

create table dept3
as
select *
  from dept2;

select *
  from dept5;
  
dept2 -> dept3 복제
desc dept2;

--한글 테이블, 컬럼 => 모델링(논리 모델)
--영문 (물리 모델)

desc 한글테이블;

create table 한글테이블
(컬럼1 number(3,1) 
,컬럼2 VARCHAR2(10)
,컬럼3 date
);


select * from tt_02;

insert into tt_02(no) values(1);

desc tt_02;

create table tt_02
(no number(3,1) DEFAULT 0
,name VARCHAR2(10) DEFAULT 'no name'
,birth date DEFAULT sysdate
);


select * from new_table;

desc new_table;

create table new_table
(no number(3)
,name VARCHAR2(10)
,birth date
);

