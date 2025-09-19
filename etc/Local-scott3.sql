select * from memberT;
desc memberT;
commit;
update memberT set mem_pwd='12', mem_email='hello@na.com', mem_address='서울'
 where mem_uid='hello';