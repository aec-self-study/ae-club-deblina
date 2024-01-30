-- models/monthly_users.sql
 select
  date_trunc(first_order_at, month) month, 
  count(*) n_users
 
from {{ ref('customers') }}
 
group by 1