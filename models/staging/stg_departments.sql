with ais  as (
    select * from {{ref('departments')}}
)

select * from ais