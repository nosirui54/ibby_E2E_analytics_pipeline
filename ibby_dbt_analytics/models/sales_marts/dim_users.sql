{{ config(materialized='table') }}

with ranked_users as (
    select *,
           row_number() over (partition by id order by id) as rn
    from {{ ref('stg_users') }}
)

select 
    id as user_id,
    username,
    email,
    first_name,
    last_name,
    phone,
    street,
    city,
    zipcode
from ranked_users
where rn = 1