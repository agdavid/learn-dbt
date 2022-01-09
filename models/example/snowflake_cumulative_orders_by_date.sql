with sample_orders as (
  select *
  from {{ source('sample', 'orders') }}
)


SELECT
    o.o_orderdate,
    sum(o.o_totalprice) as cumulative_sales
FROM sample_orders o
GROUP BY o.o_orderdate
ORDER BY o.o_orderdate DESC