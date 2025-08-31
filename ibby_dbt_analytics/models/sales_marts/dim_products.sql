{{ config(materialized='table') }}

with ranked_products as (
    select *,
           row_number() over (partition by id order by id) as rn
    from {{ ref('stg_products') }}
)

select 
    id as product_id,
    title as product_name,
    price,
    description,
    category,
    image,
    rating_rate as rating,
    rating_count
from ranked_products
where rn = 1