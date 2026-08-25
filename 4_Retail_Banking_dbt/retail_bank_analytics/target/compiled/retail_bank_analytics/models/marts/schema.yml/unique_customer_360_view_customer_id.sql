
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from "banco_retail"."main"."customer_360_view"
where customer_id is not null
group by customer_id
having count(*) > 1


