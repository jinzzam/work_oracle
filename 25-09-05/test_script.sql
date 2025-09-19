select * from student3;

UPDATE student3 set name=null WHERE id = '3334444';
commit;

select * from emp3;
select count(*) from emp3;

drop table emp3;
create table emp3
(no number
,name varchar2(20)
,sal number
);

drop table dept3;
select * from emp3;

rollback;