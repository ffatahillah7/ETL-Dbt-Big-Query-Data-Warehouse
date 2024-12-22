
select 
    o.order_item_id,
    p.product_category_name,
    pt.product_category_name_english,
    o.price,
    o.freight_value
from {{ref('stg_order_items')}} o
left join {{ref('stg_product')}} p
    on o.product_id = p.product_id
left join {{ref('stg_product_translation')}} pt
    on p.product_category_name = pt.product_category_name
    
