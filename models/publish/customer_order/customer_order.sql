{{ config(
    schema= 'PUBLISH'
)}}

select 
    C_CUSTKEY
   ,C_NAME
   ,C_ADDRESS
   ,C_PHONE
   ,C_ACCTBAL
   ,O_ORDERKEY
   ,O_ORDERSTATUS
   ,O_TOTALPRICE
   ,O_ORDERDATE
   ,O_ORDERPRIORITY
   ,O_SHIPPRIORITY
   ,O_CLERK
from {{ source('STAGE', 'CUSTOMER') }} c 
    left join {{ source('STAGE', 'ORDERS') }} o 
        on c.c_custkey = o.o_custkey
order by
    C_CUSTKEY

-- create raw folder , as views for all tables ( v_tablename)
-- read the data from raw_views instead of raw in stage

