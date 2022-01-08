

      create or replace transient table analytics.dbt.snowflake_nation_customer_count  as
      (SELECT
    n.n_nationkey,
    n.n_name,
    count(*) as total_customers

FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."NATION" n
LEFT JOIN "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" c
ON n.n_nationkey = c.c_nationkey

group by
    n.n_nationkey,
    n.n_name
      );
    