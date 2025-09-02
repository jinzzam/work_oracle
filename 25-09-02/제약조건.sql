insert into student2 values('A0001', 'AA');
insert into student2 values('B0001', 'BB');
insert into subject2 values('100', 'A1');
--insert into score2 values('A0001', '100', 100, 'G');
insert into score2 values('A0001', '100', 100, 'A');
--insert into score2 values('A0001', '111', 100, 'A');
--insert into score2 values('A0002', '100', 100, 'A');
insert into score2 values('A0001', '100', 100, 'A');


delete from student2;
delete from subject2;
delete from score2;
select * from student2;
select * from subject2;
select * from score2;

commit;
rollback;

desc score2;
drop table score2;
create table score2
(stu_id CHAR(5) 
,sub_id number(3)
,score number(3)
,grade char(1) constraint score2_grade_ck CHECK(grade IN('A','B','C','D','F'))
,CONSTRAINT score2_pk PRIMARY KEY(stu_id, sub_id)
--,CONSTRAINT score2_fk1 FOREIGN KEY(stu_id) REFERENCES student2(stu_id)
,CONSTRAINT score2_fk1 FOREIGN KEY(stu_id) REFERENCES student2(stu_id) ON DELETE CASCADE
,CONSTRAINT score2_fk2 FOREIGN KEY(sub_id) REFERENCES subject2(sub_id) ON DELETE CASCADE
);

drop table subject2;
create table subject2
(sub_id number(3) constraint subject2_sub_id_pk primary key 
,sub_name VARCHAR2(20) constraint subject2_sub_name_nn NOT NULL
);

desc student2;
create table student2
(stu_id CHAR(5) primary key 
,stu_name VARCHAR2(10) NOT NULL
);

drop table student2;
create table student2
(stu_id CHAR(5) constraint student2_stu_id_pk primary key 
--                constraint student2_stu_id_ck check(length(stu_id) = 5)
                constraint student2_stu_id_ck check(length(trim(' ' from stu_id)) = 5)
,stu_name VARCHAR2(10) constraint student2_stu_name_nn NOT NULL
);

--student2
--subject2
--score2

