drop SYNONYM e;

SELECT *
  FROM user_synonyms;

create SYNONYM e
   FOR EMP;
  
SELECT *
  FROM EMP;
  
SELECT *
  FROM e;