/**
 * 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
 */

SELECT menu.product_name,
       COUNT(*) AS times_purchased
  FROM dannys_diner.sales AS sales
    INNER JOIN dannys_diner.menu AS menu
      ON sales.product_id = menu.product_id
  GROUP BY menu.product_name
  ORDER BY times_purchased DESC
  LIMIT 1;
