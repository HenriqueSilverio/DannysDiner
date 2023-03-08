/**
 * 1. What is the total amount each customer spent at the restaurant?
 */

SELECT customer_id,
       SUM(menu.price) AS total_spent
  FROM dannys_diner.sales AS sales
  INNER JOIN dannys_diner.menu AS menu
    ON sales.product_id = menu.product_id
  GROUP BY customer_id
  ORDER BY total_spent DESC;
