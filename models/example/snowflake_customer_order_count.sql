select
    c.c_custkey,
    c.c_name,
    count(*) as total_orders
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o
left join "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" c
on o.o_custkey = c.c_custkey
group by 
    c.c_custkey,
    c.c_name
order by total_orders asc
;