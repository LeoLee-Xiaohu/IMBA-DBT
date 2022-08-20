with p as (
 
    select * from {{source('imba','src_products') }}
 
)

select * from p 