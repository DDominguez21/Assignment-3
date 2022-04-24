select 
    id, 
    orderid as order_id, 
    status, 
    amount / 100 as amount, 
    created 

from {{ source('stripe', 'payment')}}