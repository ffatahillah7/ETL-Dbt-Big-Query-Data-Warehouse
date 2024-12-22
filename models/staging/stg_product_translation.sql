with source as (

    select * from {{ source('online_store','product_category_name_translation') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source