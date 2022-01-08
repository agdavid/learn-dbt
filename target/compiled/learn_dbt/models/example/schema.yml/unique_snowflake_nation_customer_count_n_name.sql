
    
    

select
    n_name as unique_field,
    count(*) as n_records

from analytics.dbt.snowflake_nation_customer_count
where n_name is not null
group by n_name
having count(*) > 1


