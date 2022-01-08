
SELECT
    o.o_orderdate,
    sum(o.o_totalprice) as cumulative_sales
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o
GROUP BY o.o_orderdate
ORDER BY o.o_orderdate DESC