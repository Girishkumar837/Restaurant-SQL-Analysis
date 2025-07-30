--- 1. View the order_details table .
SELECT * FROM order_details;

--- 2. What is the data range of the table ?
SELECT 
	MIN(order_date),
    MAX(order_date)
FROM order_details;

--- 3. How many orders where made within this data range ?
SELECT 
	COUNT(DISTINCT order_id)
FROM order_details;

--- 4. How many items where ordered with in this data range ?
SELECT 
	COUNT(*) 
FROM order_details;

--- 5. Which orders has the most number of items ?
SELECT 
	order_id,
    COUNT(item_id) AS num_of_items
FROM order_details
GROUP BY order_id
ORDER BY num_of_items DESC;

--- 6. How many orders had more than 12 items ? 
SELECT 
	COUNT(*)
	FROM 
(SELECT 
	order_id,
    COUNT(item_id) as num_of_items
FROM order_details 
GROUP BY order_id
HAVING num_of_items > 12) AS num_items;