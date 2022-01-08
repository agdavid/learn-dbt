select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from analytics.dbt.snowflake_cumulative_orders_by_date
where o_orderdate is null



      
    ) dbt_internal_test