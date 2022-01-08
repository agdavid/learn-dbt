select
    c_custkey,
    sum(c_acctbal) as total_acctbal
from analytics.dbt.playing_with_tests
group by
    c_custkey

having sum(c_acctbal) > 100000000