with dim_customers as (
    select * from "banco_retail"."main"."dim_customers"
),

stg_accounts as (
    select * from "banco_retail"."main"."stg_accounts"
),

fct_transactions as (
    select * from "banco_retail"."main"."fct_transactions"
),

-- CTE 1: Agregamos a nivel de cuenta (Último balance y volumen de transacciones)
account_metrics as (
    select
        account_id,
        count(transaction_id) as total_transactions,
        sum(case when amount_eur < 0 then amount_eur else 0 end) as total_money_out,
        sum(case when amount_eur > 0 then amount_eur else 0 end) as total_money_in,
        -- Función avanzada de agregación: Obtenemos el balance de la última transacción cronológicamente
        arg_max(running_balance_eur, transaction_timestamp) as current_balance
    from fct_transactions
    group by account_id
),

-- CTE 2: Agregamos a nivel de cliente (Cruzando cuentas)
customer_metrics as (
    select
        a.customer_id,
        count(a.account_id) as total_accounts,
        sum(am.current_balance) as total_portfolio_balance,
        sum(am.total_transactions) as total_transaction_volume
    from stg_accounts a
    left join account_metrics am on a.account_id = am.account_id
    group by a.customer_id
)

-- FINAL JOIN: Cruzamos la demografía con las métricas financieras
select
    c.customer_id,
    c.generational_cohort,
    c.customer_segment,
    c.city,
    c.customer_tenure_years,
    coalesce(cm.total_accounts, 0) as active_accounts,
    coalesce(cm.total_portfolio_balance, 0) as total_portfolio_balance_eur,
    coalesce(cm.total_transaction_volume, 0) as total_transaction_volume,
    -- Simple Business Logic para detectar cuentas de alto valor
    case 
        when cm.total_portfolio_balance > 50000 then 'High Net Worth'
        when cm.total_portfolio_balance < 0 then 'Overdrawn (Risk)'
        else 'Standard'
    end as financial_health_status
from dim_customers c
left join customer_metrics cm on c.customer_id = cm.customer_id