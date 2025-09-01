GRANT CREATE session, create table to test; -- 테이블 생성 권한
revoke DROP ANY TABLE from test;
REVOKE DROP ANY TABLE FROM test;
grant DROP ANY TABLE to test;

GRANT CREATE SESSION to test; --접속 권한 주기
REVOKE CREATE SESSION FROM test; --접속 권한 뺏기

GRANT CREATE table to test; -- 테이블 생성 권한 
REVOKE CREATE table from test; -- 테이블 생성 권한

create user test
IDENTIFIED BY 1234
DEFAULT TABLESPACE storm
TEMPORARY TABLESPACE temp
QUOTA UNLIMITED on storm;

alter TABLESPACE storm ADD datafile 'C:\oraclexe\app\oracle\oradata\XE\app_data2.dbf' size 50M;

alter database datafile 'C:\oraclexe\app\oracle\oradata\XE\app_data.dbf' AUTOEXTEND ON NEXT 100M MAXSIZE UNLIMITED;

create TABLESPACE storm
datafile 'C:\oraclexe\app\oracle\oradata\XE\app_data.dbf' size 100M AUTOEXTEND ON NEXT 10M MAXSIZE 500M
default STORAGE 
(
    initial 10k
    next 10k
    MINEXTENTS 2
    MAXEXTENTS 50
    PCTINCREASE 50
);
