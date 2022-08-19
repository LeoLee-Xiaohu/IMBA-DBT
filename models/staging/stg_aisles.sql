with aisles  as (
    select * from {{ref('aisles')}}
)

select * from aisles