select 
    id as payment_id,  
    orderid as order_id,
    paymentmethod as payment_method,
    amount / 100 as amount,  -- amount is stored in cents, convert it to dollars
    status,
    created as created_at

from {{ source('stripe', 'payment') }}

