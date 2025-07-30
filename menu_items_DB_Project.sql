USE restaurant_db;

--- 1. View the menu_items table.
SELECT * from menu_items; 

--- 2. Find the number of items in the menu.
SELECT COUNT(*) from menu_items;  

--- 3. What are the least and most expensive items on the menu ?
SELECT * from menu_items
ORDER BY price;

SELECT * from menu_items
ORDER BY price DESC;

--- 4. How many italian dishes are in the menu ?
SELECT count(*) FROM menu_items 
WHERE category = 'Italian';

--- 5. What are the most least and most expensive Italian dishes in the menu ? 
SELECT * from menu_items
WHERE category = 'Italian'
ORDER BY price;

SELECT * from menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

--- 6. How many dishes are in each category ?
SELECT 
	category,
    count(menu_item_id) as num_dishes
    from menu_items 
GROUP BY category;

--- 7. What is the Average dish price in each category ?
SELECT 
	category,
    avg(price) as Avg_price 
from menu_items
group by category;
