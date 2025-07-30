--- 1. Combine the menu_table and order_details table into a single table.
SELECT * FROM  menu_items;
SELECT * FROM order_details;

SELECT * FROM order_details od
	JOIN menu_items mi ON od.item_id = mi.menu_item_id;
    
--- 2. What are the least and most ordered items ? What categories were they in ?
SELECT  item_name,
		category,
		COUNT(order_details_id) as num_purchases
FROM order_details od
	JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY 3 DESC;

SELECT  item_name,
		category,
		COUNT(order_details_id) as num_purchases
FROM order_details od
	JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY 3;
    
--- 3. What were the top 5 orders that spend the most money ? 
SELECT 
	  order_id,
	  SUM(price) AS total_spend
FROM order_details od
	JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY order_id    
ORDER BY total_spend DESC
LIMIT 5;

--- 4. View the details of the highest spend order. What insights can you gather from the results ? 
SELECT
	  order_id,
	  category,
      COUNT(item_id) AS num_items
FROM order_details od
	JOIN menu_items mi ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY order_id,category;

--- 5. View the details of the top 5 highest spend orders. What insights can you gather from the results ?
SELECT
	  order_id,
	  category,
      COUNT(item_id) AS num_items
FROM order_details od
	JOIN menu_items mi ON od.item_id = mi.menu_item_id
WHERE order_id IN(440,2075,1957,330,2675)
GROUP BY order_id,category;