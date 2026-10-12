### Creating the database

create database Apex_Project;
use Apex_Project;

### Uploaded Dataset and renamed it as Suppliers
### Uploaded Dataset and renamed it as Inventory

select * from inventory;

### Q.1 How many Products are currently in inventory?

select count(*) as Total_Products
from inventory;

### Ans: 10 total products

### Q.2 What is the total inventory value?

select sum(Units_In_Stock * Unit_Cost) as Inventory_Value
from inventory;

### Answer: The Inventory value is $76660.

### Q.3 Which category has the highest stock?

select category, sum(Units_In_Stock) as Total_Stock
from inventory
group by category
order by Total_Stock desc
limit 1;

### Answer: Electroncis has the higest stock of 178 units.

### Q4. which products need restocking(stock below order level)

select Product_Name, Units_In_Stock, Reorder_level
from inventory
where Units_In_Stock< Reorder_Level;

### Office Chair, Microwave and Air Fryer need restocking.

### Q5.Which supplier provides the most products?

select Supplier_ID, count(*) as Product_Count
from inventory
group by Supplier_ID
order by Product_Count desc;

### Answer: All 10 suppliers tie exactly at 1 product each.

### Q.6 Which Supplier has the highest rating?

select Supplier_Name, Supplier_Rating
from Suppliers
order by Supplier_Rating desc
limit 1;

### Answer: Supplier_1 has the Highest Rating. 

###Q.7 Which State has the most suppliers?

select state, count(*) as Supplier_count
from Suppliers
group by state
order by Supplier_count desc
limit 1;

### California stste has the most suppliers - 11 suppliers. 

### Q.8 Which supplier category contributes the highest inventory value? 

select s.Category, Sum(i.Units_In_Stock * i.Unit_Cost) as Inventory_Value
from inventory i 
inner join suppliers s 
on i.Supplier_ID = s.Supplier_ID
group by s.Category
order by Inventory_Value desc
limit 1;

### Answer: Electronics category contributes the higest inventory value of $40000. 



















































