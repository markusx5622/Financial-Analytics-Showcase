
    

    create  table
      "banco_retail"."main"."fct_transactions__dbt_tmp"
  
    
    as (
      with stg_transactions as (
    select * from "banco_retail"."main"."stg_transactions"
),

calc_running_balance as (
    select
        transaction_id,
        account_id,
        transaction_timestamp,
        transaction_type,
        amount_eur,
        -- Window Function: Calcula el balance acumulado de la cuenta ordenado por fecha (Running Total)
        sum(amount_eur) over (
            partition by account_id 
            order by transaction_timestamp 
            rows between unbounded preceding and current row
        ) as running_balance_eur
    from stg_transactions
)

select * from calc_running_balance
    );
    
  