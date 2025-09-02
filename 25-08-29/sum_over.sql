select p_date
       , p_code
       , p_qty
       , p_total
       , sum(p_total) over (order by p_total) "t"
  from panmae
 where p_store=1000;
 
select *
  from panmae
 order by p_store;
 
select p_date
       , p_code
       , p_qty
       , p_total
--       , sum(p_total) over (order by p_total) "TOTAL"
       , sum(p_total) over (PARTITION by p_code order by p_total) "TOTAL"
  from panmae
 where p_store=1000;
 
select p_code
       , p_store
       , p_date
       , p_qty
       , p_total
       , sum(p_total) over (PARTITION by p_code, p_store order by p_total) "TOTAL"
  from panmae;
  
select p_code
       , p_store
       , p_qty
       , sum(p_qty) over (order by p_code) "TOTAL_QTY"
       , to_char(100*(p_qty)/(sum(p_qty) over (partition by p_code order by p_code)),'999.99') "QTY_%"
  from panmae
 where p_code=100;
 
select p_code
       , p_store
       , p_qty
       , sum(p_qty) over () "TOTAL_QTY"
       , round(p_qty / sum(p_qty) over () *100, 2) "TOTAL_%"
  from panmae
 where p_code=100
 group by p_code
       , p_store
       , p_qty;