# DBMS-Food-Delivery-System
## Problem Statement
The DBMS Food Delivery System Project aims to develop a robust database system to support the operations of a food delivery service. This project involves designing and implementing a database schema, creating tables to store relevant data, defining relationships between tables, and implementing queries to retrieve and manipulate data efficiently.<br>

## Entity Description
The Customer table stores information about the customers who use the food delivery system. It typically includes attributes such as customer ID, name, contact details, delivery address, and other relevant information. This table is essential for managing customer accounts, tracking order history, and providing personalized services.<br>

The Delivery_Employee contains details of delivery personnel employed by the food delivery service. It includes attributes such as employee ID, name, contact information, salary details, and ratings. This table facilitates the assignment of delivery tasks and monitoring of employee performance.<br>

The Menu stores information about the dishes available. It includes details of food items, such as item ID, name, price, and cuisine type. This table allows customers to browse available items, place orders, and helps restaurants manage their offerings.<br>

The Restaurant contains data related to the restaurants registered with the food delivery service. It includes attributes such as restaurant ID, name, speciality, address, and ratings. This table facilitates restaurant management, menu updates, and order routing based on customer preferences and restaurant availability.<br>

The Offers stores information about restaurants and deals provided by restaurants. <br>

The Orders table records details of customer orders placed through the food delivery system. It includes attributes such as order ID, customer ID, restaurant ID, order details and dish id for order placement and delivery. <br>

The Deals table stores information about special deals and offers available to customers. It includes attributes such as deal ID, discount amount, and validity details. This table helps promote bundled sales, upsell products, and attract customers with attractive pricing schemes.<br>

The Served_By table establishes relationship between restaurants and delivery employees. Delivery employees are assigned to serve orders from restaurants. This table facilitates efficient assignment of delivery tasks and tracking of delivery assignments for each restaurant.<br>

