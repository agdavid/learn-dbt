

select *
from "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."DATE_DIM"
where d_date <= current_date
order by d_date desc


    and d_date > (select max(d_date) from analytics.dbt.dates)