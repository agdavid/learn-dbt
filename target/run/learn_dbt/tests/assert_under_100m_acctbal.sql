select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select
    c_custkey,
    sum(c_acctbal) as total_acctbal
from analytics.dbt.playing_with_tests
group by
    c_custkey

having sum(c_acctbal) > 100000000
      
    ) dbt_internal_test