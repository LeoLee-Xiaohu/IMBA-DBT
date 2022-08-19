

with 
pf as (
select * from {{ ref('prd_features' )}}
),

upf as (
    select * from {{ ref('up_features') }}
),

uf1 as (
    select * from {{ ref('user_feature_1') }}
),

uf2 as (
    select * from {{ ref('user_feature_2') }}
),

final as (
    select * from upf 
    left join upf on pf.product_id = upf.product_id 
    left join uf1 on upf.user_id = uf1.user_id 
    left join uf2 on uf1.user_id = uf2.user_id 
)

select * from final 