select
    top 100
    c_customer_sk,
    c_salutation,
    c_first_name,
    c_last_name,
    c_email_address,
    c_preferred_cust_flag,
    c_birth_day,
    c_birth_month,
    c_birth_year
from "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."CUSTOMER"
where c_email_address is not null