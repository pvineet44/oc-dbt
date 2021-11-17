WITH customer AS (
  SELECT * FROM {{ ref('stg_customer')}}
),
orders AS (
  SELECT * FROM {{ ref('stg_orders')}}
),
state_map AS (
  SELECT * FROM {{ ref('stg_state')}}
),
final AS (
  SELECT
    customer.customer_id,
    orders.order_id,
    CASE
      orders.order_status
      WHEN 'delivered' THEN 1
      ELSE 0
    END
      AS order_status,
      state_map.state_name
  FROM orders
  INNER JOIN customer ON orders.customer_id = customer.customer_id
      INNER JOIN state_map ON customer.state_code = state_map.state_code
)

SELECT
*
FROM final
