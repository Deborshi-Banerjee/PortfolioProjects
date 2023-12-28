Select * FROM Portfolio_Project.dbo.['Sales Data'] 
ORDER BY F1

--Selecting Data that is going to be used

Select Product, [Quantity Ordered], [Price Each], [Order Date], [Purchase Address], Month, Sales, City, Hour 
FROM Portfolio_Project..['Sales Data']

--Sum of Sales by Month

Select Month, ROUND(SUM(Sales), 2) as Sum_of_Sales 
FROM Portfolio_Project..['Sales Data'] 
GROUP BY Month
ORDER BY Sum_of_Sales DESC

--Sum of Sales by City

Select City, ROUND(SUM(Sales), 2) as Sum_of_Sales 
FROM Portfolio_Project..['Sales Data'] 
GROUP BY City
ORDER BY Sum_of_Sales DESC

--Sum of Sales by Hour

Select Hour, ROUND(SUM(Sales), 2) as Sum_of_Sales 
FROM Portfolio_Project..['Sales Data'] 
GROUP BY Hour
ORDER BY Sum_of_Sales DESC

--Total quantity ordered of a Product

Select Product, SUM([Quantity Ordered]) as Total_Quantity
FROM Portfolio_Project..['Sales Data']
GROUP BY Product
ORDER BY Total_Quantity DESC

--Sum of Sales by Product

Select Product, ROUND(SUM(Sales), 2) as Sum_of_Sales 
FROM Portfolio_Project..['Sales Data'] 
GROUP BY Product
ORDER BY Sum_of_Sales DESC

--Sum of Sales by Purchase Address (Top 10)

Select TOP 10 [Purchase Address], ROUND(SUM(Sales), 2) as Sum_of_Sales 
FROM Portfolio_Project..['Sales Data'] 
GROUP BY [Purchase Address]
ORDER BY Sum_of_Sales DESC

--Total quantity of products sold by City

Select City, Product, SUM([Quantity Ordered]) as Total_Quantity
FROM Portfolio_Project..['Sales Data']
GROUP BY Product, City
ORDER BY City

--Sum of Sales by Product by City

Select City, Product, ROUND(SUM(Sales), 2) as Sum_of_Sales 
FROM Portfolio_Project..['Sales Data'] 
GROUP BY Product, City
ORDER BY City

--Top 10 costliest Products

Select TOP 10 Product, ROUND(AVG([Price Each]), 2) as Price_Each
FROM Portfolio_Project..['Sales Data']
GROUP BY Product
ORDER BY Price_Each DESC