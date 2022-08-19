with opp as (
    select * from {{ ref('prd_features')}}
),

uf2 as (
    SELECT *
    FROM opp 
)

select * from uf2