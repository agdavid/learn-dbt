with sample_orders as (
  select *
  from {{ source('sample', 'orders') }}
)

SELECT distinct
    o.o_orderdate,
    sum(o.o_totalprice) over (
ORDER BY o.o_orderdate) as cumulative_sales
FROM sample_orders o

{% if target.name == 'dev' %}
WHERE year(o.o_orderdate) = 1996
{% endif %}

ORDER BY o.o_orderdate