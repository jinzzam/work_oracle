select 'aaa bb  c   d' "R"
        , regexp_replace( 'aaa bb  c   d', '( ){1}', '') "R"
        , regexp_replace( 'aaa bb  c   d', '( ){2}', '') "R"
        , regexp_replace( 'aaa bb  c   d', '( ){3}', '') "R"
        , regexp_replace( 'aaa bb  c   d', '( ){4}', '') "R"
        , regexp_replace( 'aaa bb  c   d', '( ){1,}', '') "R"
        , regexp_replace( 'aaa bb  c   d', '( ){2,}', '') "R"
  from dual;

--50
select ascii('29')
  from dual;

--56
select ascii('8')
  from dual;