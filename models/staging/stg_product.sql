with source as (

    select * from {{ source('online_store','products_dataset') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source