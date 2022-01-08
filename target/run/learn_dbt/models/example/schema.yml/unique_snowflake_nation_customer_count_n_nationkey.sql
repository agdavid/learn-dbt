select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    n_nationkey as unique_field,
    count(*) as n_records

from analytics.dbt.snowflake_nation_customer_count
where n_nationkey is not null
group by n_nationkey
having count(*) > 1



      
    ) dbt_internal_test