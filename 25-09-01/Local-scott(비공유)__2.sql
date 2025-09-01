update professor 
   set bonus = 200
 where position='assistant professor';

select *
  from professor;

rollback;

delete
  from new_emp2;
  
drop table new_emp2;
  
select *
  from new_emp2;