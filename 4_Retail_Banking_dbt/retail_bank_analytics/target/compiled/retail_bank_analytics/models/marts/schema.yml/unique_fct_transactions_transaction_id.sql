
    
    

select
    transaction_id as unique_field,
    count(*) as n_records

from "banco_retail"."main"."fct_transactions"
where transaction_id is not null
group by transaction_id
having count(*) > 1


