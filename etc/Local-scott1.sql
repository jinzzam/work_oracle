

CREATE TABLE memberT 
(mem_uid varchar2(15) PRIMARY KEY
,mem_pwd varchar2(15) not null
,mem_name varchar2(10) not null
,mem_email varchar2(50)
,mem_address varchar2(100)
);

desc memberT;
select * from memberT;

select mem_uid, mem_pwd, mem_name, mem_email, mem_address from memberT;

select mem_uid, mem_pwd, mem_name, mem_email, mem_address from memberT;