drop SYNONYM e;

SELECT *
  FROM user_synonyms;

create SYNONYM em
   FOR EMP;

create SYNONYM e
   FOR DEPARTMENT;
  
SELECT *
  FROM DEPARTMENT;
  
SELECT *
  FROM e;
  
SELECT *
  FROM em;