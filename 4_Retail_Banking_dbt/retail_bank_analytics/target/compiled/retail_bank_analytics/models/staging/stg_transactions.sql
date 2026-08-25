with raw_transactions as (
    select * from read_csv_auto('../raw_data/raw_transactions.csv')
)

select
    transaction_id,
    account_id,
    transaction_date::TIMESTAMP as transaction_timestamp,
    transaction_type,
    cast(amount as DECIMAL(10,2)) as amount_eur
from raw_transactions