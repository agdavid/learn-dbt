select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from analytics.dbt.snowflake_nation_customer_count
where n_nationkey is null



      
    ) dbt_internal_test