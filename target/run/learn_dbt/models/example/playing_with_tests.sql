

      create or replace transient table analytics.dbt.playing_with_tests  as
      (select * 
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF100"."CUSTOMER"
      );
    