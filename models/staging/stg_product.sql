with p as (
 
    select * from {{source('src_products') }}
 
)

select * from p 