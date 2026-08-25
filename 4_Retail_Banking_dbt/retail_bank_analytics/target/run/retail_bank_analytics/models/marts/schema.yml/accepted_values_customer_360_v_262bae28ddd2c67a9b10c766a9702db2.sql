
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        financial_health_status as value_field,
        count(*) as n_records

    from "banco_retail"."main"."customer_360_view"
    group by financial_health_status

)

select *
from all_values
where value_field not in (
    'High Net Worth','Standard','Overdrawn (Risk)'
)



  
  
      
    ) dbt_internal_test