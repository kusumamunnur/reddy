select * from orders;
#A Get the month on month no. of orders placed in each state.
SELECT * FROM walmart.orders;
use walmart;
SELECT
c.customer_state AS state,
DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS order_month,
COUNT(o.order_id) AS total_orders
FROM walmart.orders o
JOIN walmart.customers c
ON o.customer_id = c.customer_id
GROUP BY
c.customer_state,
DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
ORDER BY
c.customer_state,
order_month;

#B How are the customers distributed across all the states?
Select customer_state, count(customer_id) as customer
from customers
group by customer_state;