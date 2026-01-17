-- Total Sales, Profit, and Orders
SELECT 
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore;

-- Region-wise Sales and Profit
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Region_Sales,
    ROUND(SUM(Profit), 2) AS Region_Profit
FROM superstore
GROUP BY Region
ORDER BY Region_Sales DESC;

-- Category-wise Sales and Profit
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Category_Sales,
    ROUND(SUM(Profit), 2) AS Category_Profit
FROM superstore
GROUP BY Category
ORDER BY Category_Sales DESC;

-- Sub-Category Performance
SELECT 
    `Sub-Category`,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;

-- Top 10 Products by Sales
SELECT 
    `Product Name`,
    ROUND(SUM(Sales), 2) AS Product_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Product_Sales DESC
LIMIT 10;

-- Products with Overall Loss
SELECT 
    `Product Name`,
    ROUND(SUM(Profit), 2) AS Total_Loss
FROM superstore
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Total_Loss;

-- Monthly Sales Trend
SELECT 
    MONTH(`Order Date`) AS Month,
    ROUND(SUM(Sales), 2) AS Monthly_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;

-- Year-wise Sales
SELECT 
    YEAR(`Order Date`) AS Year,
    ROUND(SUM(Sales), 2) AS Yearly_Sales
FROM superstore
GROUP BY Year
ORDER BY Year;

-- Sales & Profit by Customer Segment
SELECT 
    Segment,
    ROUND(SUM(Sales), 2) AS Segment_Sales,
    ROUND(SUM(Profit), 2) AS Segment_Profit
FROM superstore
GROUP BY Segment
ORDER BY Segment_Sales DESC;

-- Discount vs Profit Analysis
SELECT 
    Discount,
    ROUND(AVG(Profit), 2) AS Avg_Profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;

-- Top 10 Customers
SELECT 
    `Customer Name`,
    ROUND(SUM(Sales), 2) AS Customer_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Customer_Sales DESC
LIMIT 10;

-- Shipping Mode Performance
SELECT 
    `Ship Mode`,
    ROUND(SUM(Sales), 2) AS Ship_Sales,
    ROUND(SUM(Profit), 2) AS Ship_Profit
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Ship_Sales DESC;
