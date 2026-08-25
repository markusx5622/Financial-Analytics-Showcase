with stg_customers as (
    select * from {{ ref('stg_customers') }}
)

select
    customer_id,
    age,
    case
        when age < 25 then 'Gen Z'
        when age between 25 and 40 then 'Millennial'
        when age between 41 and 56 then 'Gen X'
        else 'Boomer'
    end as generational_cohort,
    customer_segment,
    city,
    join_date,
    date_diff('year', join_date, current_date) as customer_tenure_years
from stg_customers
