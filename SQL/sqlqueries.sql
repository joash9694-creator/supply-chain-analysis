show databases;
USE supply__chain1;
SELECT * FROM supply_chain_1 LIMIT 10;

##What is the total revenue generated?
SELECT SUM(revenue) Total_Revenue
FROM supply_chain_1;

##What is the total profit generated?
SELECT 
    SUM(Profit) AS Total_Profit
FROM supply_chain_1;

##What is the overall profit margin?
SELECT 
    ROUND(SUM(Profit) / SUM(Revenue) * 100, 2) AS Profit_Margin_Percentage
FROM supply_chain_1;

##How many total orders are placed?
SELECT 
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM supply_chain_1;

##How many unique customers are there?
SELECT 
    COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM supply_chain_1;

##. REVENUE & PROFIT ANALYSIS
##Which region generates the highest revenue?
SELECT 
    Region,
    SUM(Revenue) AS Total_Revenue
FROM supply_chain_1
GROUP BY Region
ORDER BY Total_Revenue DESC;

##Which region generates the highest profit?
SELECT 
    Region,
    SUM(Profit) AS Total_Profit
FROM supply_chain_1
GROUP BY Region
ORDER BY Total_Profit DESC;

##Which state contributes most to revenue?
SELECT 
    State,
    SUM(Revenue) AS Total_Revenue
FROM supply_chain_1
GROUP BY State
ORDER BY Total_Revenue DESC
LIMIT 10;

##PRODUCT PERFORMANCE ANALYSIS
SELECT 
    Product_Name,
    SUM(Revenue) AS Total_Revenue
FROM supply_chain_1
GROUP BY Product_Name
ORDER BY Total_Revenue DESC
LIMIT 10;

## Top 10 most profitable products
SELECT 
    Product_Name,
    SUM(Profit) AS Total_Profit
FROM supply_chain_1
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;

##Which product category generates highest revenue?
SELECT 
    Product_Category,
    SUM(Revenue) AS Total_Revenue
FROM supply_chain_1
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;

##CUSTOMER ANALYSIS
##Which customer segment generates highest revenue?
SELECT 
    Customer_Segment,
    SUM(Revenue) AS Total_Revenue
FROM supply_chain_1
GROUP BY Customer_Segment
ORDER BY Total_Revenue DESC;

##Which customers contribute most to profit?
SELECT 
    Customer_ID,
    SUM(Profit) AS Total_Profit
FROM supply_chain_1
GROUP BY Customer_ID
ORDER BY Total_Profit DESC
LIMIT 10;

##SUPPLY CHAIN & LOGISTICS
##Which warehouse has highest inventory?
SELECT 
    Warehouse_Location,
    SUM(Inventory_Level) AS Total_Inventory
FROM supply_chain_1
GROUP BY Warehouse_Location
ORDER BY Total_Inventory DESC;

## Which transport mode is most used?
SELECT 
    Transport_Mode,
    COUNT(*) AS Total_Orders
FROM supply_chain_1
GROUP BY Transport_Mode
ORDER BY Total_Orders DESC;

##What is the average delivery lead time?
SELECT 
    AVG(Lead_Time_Days) AS Avg_Lead_Time
FROM supply_chain_1;

##RETURN & QUALITY ANALYSIS
##Which product category has highest returns?
SELECT 
    Product_Category,
    SUM(Return_Quantity) AS Total_Returns
FROM supply_chain_1
GROUP BY Product_Category
ORDER BY Total_Returns DESC;

##What is the return rate?
SELECT 
    ROUND(SUM(Return_Quantity) / SUM(Quantity) * 100, 2) AS Return_Rate
FROM supply_chain_1;

##PAYMENT & DELIVERY ANALYSIS
##Which payment method is most used?
SELECT 
    Payment_Method,
    COUNT(*) AS Total_Transactions
FROM supply_chain_1
GROUP BY Payment_Method
ORDER BY Total_Transactions DESC;

##On-time vs delayed deliveries
SELECT 
    On_Time_Delivery,
    COUNT(*) AS Total_Orders
FROM supply_chain_1
GROUP BY On_Time_Delivery;
