select 
    id, 
    orderid as order_id, 
    status, 
    {{ cents_to_dollars('amount') }} as amount, 
    created 

from {{ source('stripe', 'payment')}}
order by id