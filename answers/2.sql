/**
 * 2. How many days has each customer visited the restaurant?
 */

SELECT customer_id,
       COUNT(*) AS total_visits
  FROM
    (
      SELECT DISTINCT customer_id, order_date
        FROM dannys_diner.sales
    ) AS visits
  GROUP BY customer_id
  ORDER BY total_visits DESC;
