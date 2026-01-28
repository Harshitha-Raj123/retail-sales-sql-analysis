-- SQL queries for retail sales analysis
-- 1. Total revenue from all sales
SELECT 
    SUM(Quantity * UnitPrice) AS total_revenue
FROM data_sample;
-- 2. Revenue by country
SELECT 
    Country,
    SUM(Quantity * UnitPrice) AS total_revenue
FROM data_sample
GROUP BY Country
ORDER BY total_revenue DESC;
-- 3. Monthly sales trend
SELECT 
    YEAR(InvoiceDate) AS year,
    MONTH(InvoiceDate) AS month,
    SUM(Quantity * UnitPrice) AS monthly_revenue
FROM data_sample
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY year, month;


