use retail_project;

USE retail_project;

LOAD DATA INFILE '""C:\Users\user\Downloads\cleaned_sal;es_data.csv""'
INTO TABLE sales_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM sales_data;

SELECT SUM(Sales) AS Total_Sales
FROM sales_data;

SELECT SUM(Profit) AS Total_Profit
FROM sales_data;

SELECT Product_Name,
SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT Product_Name,
SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Product_Name
HAVING Total_Profit < 0;

SELECT Category,
SUM(Profit) AS Category_Profit
FROM sales_data
GROUP BY Category;

SELECT Region,
SUM(Sales) AS Region_Sales
FROM sales_data
GROUP BY Region;

SELECT Region,
SUM(Profit) AS Region_Profit
FROM sales_data
GROUP BY Region;

SELECT Category,
AVG(Discount) AS Avg_Discount
FROM sales_data
GROUP BY Category;

SELECT Product_Name,
Sales,
Profit,
Discount
FROM sales_data
WHERE Profit < 0;

SELECT MONTH(Order_Date) AS Month_Number,
SUM(Sales) AS Monthly_Sales
FROM sales_data
GROUP BY MONTH(Order_Date)
ORDER BY Month_Number;

SELECT Loss_Status,
COUNT(*) AS Total_Products
FROM sales_data
GROUP BY Loss_Status;
select *from sales_data limit 10;