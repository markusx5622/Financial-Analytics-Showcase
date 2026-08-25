with raw_accounts as (
    select * from read_csv_auto('../raw_data/raw_accounts.csv')
)

select
    account_id,
    customer_id,
    account_type,
    status as account_status,
    open_date::DATE as open_date
from raw_accounts