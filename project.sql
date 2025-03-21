create database project

use project

select *
from project_last





1 -- What is the total sales amount for 'Canon imageCLASS 2200 Advanced Copier'? (Sales)

SELECT SUM(Sales) as Total_sales
FROM project_last
WHERE product_name = 'Canon imageCLASS 2200 Advanced Copier';


2 --How many orders included 'HON 5400 Series Task Chairs for Big and Tall'? (Order ID)

SELECT COUNT(DISTINCT Order_ID) as number_of_orders
FROM project_last
WHERE product_name = 'HON 5400 Series Task Chairs for Big and Tall';



3 -- What was the most common ship mode for 'Cisco TelePresence System EX90 Videoconferencing Unit'? (Ship Mode)

SELECT Ship_Mode, COUNT(*) AS common_ship 
FROM project_last
WHERE product_name = 'Cisco TelePresence System EX90 Videoconferencing Unit' 
GROUP BY Ship_Mode 
ORDER BY common_ship  DESC 


4 -- In which city was 'GBC DocuBind TL300 Electric Binding System' sold the most? (City)


SELECT City, COUNT(*) AS most_sold
FROM project_last
WHERE product_name = 'GBC DocuBind TL300 Electric Binding System' 
GROUP BY City
ORDER BY most_sold DESC 


5 -- Which customer purchased the highest quantity of 'GBC DocuBind TL300 Electric Binding System'? (Customer Name)

SELECT Customer_Name, COUNT(*) AS most_purchased_customer
FROM project_last
WHERE product_name = 'GBC DocuBind TL300 Electric Binding System' 
GROUP BY Customer_Name
ORDER BY most_purchased_customer DESC 



6 -- What was the average delivery delay for 'GBC Ibimaster 500 Manual ProClick Binding System'? (Delivery Delay)

SELECT AVG(CAST(REPLACE(Delivery_Delay_Dayes, ' days', '') AS INT)) AS avg_delay
FROM project_last
WHERE product_name = 'GBC Ibimaster 500 Manual ProClick Binding System';


select*
from project_last




7 -- In which month did 'Hewlett Packard LaserJet 3310 Copier' generate the most sales? (Month Name)

SELECT Month_Name, SUM(Sales) AS total_sales 
FROM project_last 
WHERE product_name = 'Hewlett Packard LaserJet 3310 Copier' 
GROUP BY Month_Name
ORDER BY total_sales DESC 



8 -- What is the most frequent customer segment purchasing 'HP Designjet T520 Inkjet Large Format Printer - 24" Color'? (Segment)

SELECT 'Segment' ,COUNT(*) as most_frequent_customer
FROM project_last 
WHERE product_name = 'Hewlett Packard LaserJet 3310 Copier' 
AND Year = 2024;



select*
from project_last



1 -- Total Sales Per Year

select*
from project_last

SELECT Year, Month_of_order, SUM(Sales) AS Total_Sales
FROM project_last
GROUP BY Year, Month_of_order
ORDER BY Year, Month_of_order;


2 -- Top 5 Cities by Total Sales



SELECT Top 5 City, SUM(Sales) AS Total_Sales
FROM project_last
GROUP BY City
ORDER BY Total_Sales DESC



3 -- Most Popular Product Category

SELECT top 1 Category, COUNT(Product_ID) AS Total_Orders
FROM project_last
GROUP BY Category
ORDER BY Total_Orders DESC


4 -- Average Delivery Delay for Each Ship Mode


SELECT Ship_Mode, AVG(CAST(REPLACE(Delivery_Delay_Dayes, ' days', '') AS INT)) AS Avg_Delivery_Delay
FROM project_last
GROUP BY Ship_Mode;

5 -- Sales Distribution by Customer Segment

SELECT Segment, SUM(Sales) AS Total_Sales
FROM project_last
GROUP BY Segment
ORDER BY Total_Sales DESC;


6 -- Month with the Highest Sales


SELECT top 1 Month_Name, SUM(Sales) AS Total_Sales
FROM project_last
GROUP BY Month_Name
ORDER BY Total_Sales DESC


7 -- Top 5 Customers by Total Purchase Value

SELECT top 5 Customer_ID, Customer_Name, SUM(Sales) AS Total_Spent
FROM project_last
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Spent DESC



8 -- Number of Orders Placed on Each Day of the Week

SELECT Day_Name, COUNT(Order_ID) AS Total_Orders
FROM project_last
GROUP BY Day_Name
ORDER BY Total_Orders DESC;


9 -- Sales Trend Over the Years

SELECT Year, SUM(Sales) AS Total_Sales
FROM project_last
GROUP BY Year
ORDER BY Year;

10 -- States with the Fastest Delivery (Lowest Delay)

SELECT top 5 State, AVG(CAST(REPLACE(Delivery_Delay_Dayes, ' days', '') AS INT)) AS Avg_Delivery_Delay
FROM project_last
GROUP BY State
ORDER BY Avg_Delivery_Delay ASC

