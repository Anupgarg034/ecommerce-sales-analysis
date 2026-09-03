-- ============================================
-- E-COMMERCE SALES ANALYSIS
-- SQL ANALYSIS
-- ============================================


-- 1. Total Sales, Profit and Quantity
SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM sales;


-- 2. Sales and Profit by Category
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 3. Regional Performance
SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(*) AS Number_of_Orders
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;


-- 4. Top 10 Products by Sales
SELECT
    "Sub-Category",
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM sales
GROUP BY "Sub-Category"
ORDER BY Total_Sales DESC
LIMIT 10;


-- 5. Top 10 Products by Profit
SELECT
    "Sub-Category",
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM sales
GROUP BY "Sub-Category"
ORDER BY Total_Profit DESC
LIMIT 10;

-- ============================================
-- ADVANCED SQL ANALYSIS
-- ============================================


-- 6. Top 10 Customers by Sales
SELECT
    "Customer Name",
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(*) AS Number_of_Orders
FROM sales
GROUP BY "Customer Name"
ORDER BY Total_Sales DESC
LIMIT 10;


-- 7. Top 10 Customers by Number of Orders
SELECT
    "Customer Name",
    COUNT(*) AS Number_of_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY "Customer Name"
ORDER BY Number_of_Orders DESC, Total_Sales DESC
LIMIT 10;


-- 8. Payment Method Performance
SELECT
    "Payment Mode",
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(*) AS Number_of_Orders
FROM sales
GROUP BY "Payment Mode"
ORDER BY Total_Sales DESC;


-- 9. Discount vs Profit Analysis
SELECT
    Discount,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    AVG(Profit) AS Average_Profit
FROM sales
GROUP BY Discount
ORDER BY Discount;


-- 10. Profit Margin by Category
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(
        (SUM(Profit) * 100.0) / SUM(Sales),
        2
    ) AS Profit_Margin_Percent
FROM sales
GROUP BY Category
ORDER BY Profit_Margin_Percent DESC;

-- ============================================
-- MORE ADVANCED SQL ANALYSIS
-- ============================================


-- 11. Monthly Sales and Profit Trend
SELECT
    "Year-Month",
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(*) AS Number_of_Orders
FROM sales
GROUP BY "Year-Month"
ORDER BY "Year-Month";


-- 12. Repeat Customers
SELECT
    "Customer Name",
    COUNT(*) AS Number_of_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY "Customer Name"
HAVING COUNT(*) > 1
ORDER BY Number_of_Orders DESC, Total_Sales DESC;


-- 13. Most Profitable Product in Each Category

SELECT
    Category,
    "Sub-Category",
    Total_Profit
FROM (
    SELECT
        Category,
        "Sub-Category",
        SUM(Profit) AS Total_Profit,
        ROW_NUMBER() OVER (
            PARTITION BY Category
            ORDER BY SUM(Profit) DESC
        ) AS Rank
    FROM sales
    GROUP BY Category, "Sub-Category"
)
WHERE Rank = 1
ORDER BY Total_Profit DESC;


-- 14. Customer Retention Summary

SELECT
    CASE
        WHEN Order_Count > 1 THEN 'Repeat Customer'
        ELSE 'One-Time Customer'
    END AS Customer_Type,
    COUNT(*) AS Customer_Count
FROM (
    SELECT
        "Customer Name",
        COUNT(*) AS Order_Count
    FROM sales
    GROUP BY "Customer Name"
) AS customer_orders
GROUP BY Customer_Type;