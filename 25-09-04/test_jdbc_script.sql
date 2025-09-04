insert into student3 values('1112222', '김철수', '컴퓨터시스템');
insert into student3 values('2223333', '최고봉', '멀티미디어');
insert into student3 values('3334444', '이기자', '컴퓨터공학');
commit;

select * from student3;

create table student3
(id char(7)
,name varchar2(10)
,dept VARCHAR2(20)
);

drop table student3;