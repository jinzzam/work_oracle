drop table boardT;
select * from boardT;
commit;
delete from boardT;
rollback;

create table boardT
(b_id number(5) primary key 
,b_name varchar2(20)
,b_email varchar2(50)
,b_title varchar2(80)
,b_content varchar2(3000)
,b_date date
,b_hit number(5) default 0
,b_pwd varchar2(12)
,b_ip varchar2(15)
,b_ref number(5)
,b_step number(5)
,b_level number(5)
,b_fname varchar2(100)
,b_rfname varchar2(100)
,b_fsize number(10)
);
desc boardT;
select * from boardT where b_id=10;
update boardT set b_hit = b_hit + 1
 where b_id='';
 
 select b_id, b_name, b_email, b_title, b_content, to_char(b_date, 'YYYY-MM-DD HH24:MI'), b_hit, b_pwd, b_ip, b_ref, b_step, b_level from boardT order by b_ref desc, b_step asc;
select count(b_id) from boardT;

insert into boardT(b_id, b_name, b_email, b_title, b_content, b_date, b_hit, b_pwd, b_ip
                  , b_ref, b_step, b_level, b_fname, b_fsize)
            values(1, name, 1||title, 1||'_'||'emailId'||1||'@nav.con', 'content_'||1, sysdate, '333', 0, '192.168.10.64'
                 , 0, 0, 0, 1||'_file', 1*0.8);

commit;