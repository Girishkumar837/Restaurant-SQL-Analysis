# 🍽 Restaurant Menu and Order Analysis – SQL Project

This SQL project focuses on analyzing a restaurant's menu_items and order_details datasets to uncover meaningful business insights. The analysis was done using MySQL Workbench and aims to answer key questions around pricing, customer behavior, and product performance.

---

## 📂 Datasets Used

- *menu_items*: Contains dish names, prices, and category.
- *order_details*: Contains orders placed with order date and item_id.

---

## 🎯 Questions Answered

### 📋 menu_items Table

1. ✅ Find the total number of items in the menu.
2. 💰 Identify the *least* and *most* expensive items.
3. 🍝 Determine how many *Italian dishes* are on the menu.
   - Find the least and most expensive Italian dishes.
4. 📊 Count how many dishes are in each category.
   - Calculate the average price within each category.

---

### 🧾 order_details Table

1. 📆 Determine the *date range* of orders in the table.
2. 📦 Count how many orders were placed within that date range.
   - Find the total number of items ordered.
3. 🧮 Identify which orders had the *most number of items*.
4. 🔢 Count how many orders had *more than 12 items*.

---

### 👥 Customer Behavior Analysis

1. 📉 What are the *least and most ordered items*?
   - What categories were they in?
2. 💸 What are the *top 5 highest-spending orders*?
3. 🔍 Analyze the details of the *highest-spending order*.
   - What insights can be drawn from the results?

---

## 💡 Key Insights

- 🇮🇹 *Italian and American items* perform best overall.
- 🍝 The *highest-spending order* primarily featured *Italian dishes*, suggesting they are highly valued by customers.
- 🌮 *Chicken Tacos* (Mexican category) is the *least ordered item*, which might need re-evaluation in the menu.
- 🍔 *Hamburgers* (American) are the *most ordered item*, indicating strong customer preference.
- 📈 Dishes from *Italian cuisine* consistently show up in high-spending orders — keep focusing on this category.
- ⚠ Items like *Chicken Tacos* may require promotions, menu rework, or removal based on low performance.

---

## 🛠 SQL Concepts Used

- *Aggregation* – SUM(), COUNT(), AVG(), MAX(), MIN()
- *JOINS* – To merge menu_items with order_details
- *Filtering* – WHERE, GROUP BY, HAVING
- *Sorting* – ORDER BY
- *Subqueries* – Used to identify top spenders, least ordered items, etc.
- *Date functions* – MIN(date), MAX(date)
- *Aliases* – For improving result readability

---

## 🧠 Tools Used

- *SQL* – MySQL Workbench 

---

## 📌 Conclusion

This project provides data-driven insights into customer preferences, menu performance, and order patterns. These insights can support better decision-making in pricing strategy, menu design, and customer targeting.

---
