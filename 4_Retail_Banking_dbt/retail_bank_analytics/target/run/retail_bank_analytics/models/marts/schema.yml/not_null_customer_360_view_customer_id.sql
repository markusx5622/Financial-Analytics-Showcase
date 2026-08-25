
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select customer_id
from "banco_retail"."main"."customer_360_view"
where customer_id is null



  
  
      
    ) dbt_internal_test