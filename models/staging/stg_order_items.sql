with source as (

    select * from {{ source('online_store','order_items_dataset') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source