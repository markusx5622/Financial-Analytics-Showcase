with raw_customers as (
    select * from read_csv_auto('../raw_data/raw_customers.csv')
)

select
    customer_id,
    age,
    segment as customer_segment,
    city,
    join_date::DATE as join_date
from raw_customers