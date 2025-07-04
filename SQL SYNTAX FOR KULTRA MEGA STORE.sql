SELECT *FROM KMS

-----------Kultra Mega Store Inventory Case Study Analysis--------------
----------CASE SCENARIO I-------------

------Question 1; Product category with highest sales
-------Check the number of product categories available

select Product_Category,
count(product_category) as Number_PC from KMS
GROUP BY Product_Category


select top 1 Product_Category,
sum (sales) as TotalSales from KMS
group by Product_Category
order by TotalSales desc


----------QUESTION 2; TOP AND BOTTOM 3 REGIONS ON SALES-----
-----top 3
Select top 3 Region,
sum (sales) as Totalsales from KMS
group by Region
Order by Totalsales desc

-----bottom 3
Select top 3 Region,
sum (sales) as Totalsales from KMS
group by Region
Order by Totalsales asc


------QUESTION 3;TOTAL SALES OF APPLIANCES IN ONTARIO
select 
sum(sales) as Total_Sales_Ont from KMS
where Product_Sub_Category = 'Appliances' and Region='Ontario'


---------QUESTION 4;BOTTOM 10 CUSTOMERS FROM REVENUE
select Customer_Name,
sum (sales) as Total_Sales from KMS
group by Customer_Name
Order by Total_Sales asc


------------QUESTION 5;SHIPPING METHOD WITH HIGHEST SHIPPING COST--------
select Ship_Mode,
sum (Shipping_Cost) as Total_ShippingCost from KMS
group by Ship_Mode
Order by Total_ShippingCost desc

---------CASE SCENARIO II------------------
---------QUESTION 6;MOST VALUABLE CUSTOMERS AND WHAT PRODUCTS THEY PURCHASE------
----------Ran a query to verify if customer name with highest sales has highest profits
----------because many sales do not necessarily indicate profitability----
select distinct top 10 Customer_Name,Order_ID,
sum (Sales) as Total_Sales,
sum (Profit) as Total_Profit
from KMS
group by Customer_Name, Order_ID
order by Total_Sales desc
--------CHECKED MOST VALUABLE CUSTOMERS BASED ON PROFIT
---------given that from the above query, the second highest sales has a negative profit
select top 10 Order_ID,Customer_Name,Product_Category,
sum(Profit) as [Total Profit] from KMS
group by  Order_ID,Customer_Name,Product_Category
order by [Total Profit]desc

select Product_Category,
count(*) as [Purchase count] from KMS
where Order_ID in ('29766','9637','20967','32932','29187','29569','26432','34663','3841','19010')
group by Product_Category
order by [Purchase count]desc



----------QUESTION 7;SMALL BUSINESS CUSTOMER WITH HIGHEST SALES------
-------check number of small business customers by segment
select Customer_Segment,
count (*) as [Total SM] from KMS
where Customer_Segment= 'Small Business'
group by Customer_Segment
order by [Total SM] desc
 ------then to get highest
select top 1 Customer_Name,
sum (sales) as TotalSales from KMS
where Customer_Segment = 'Small Business'
group by Customer_Name
order by TotalSales desc

-------QUESTION 8;CORPORATE CUSTOMER WITH HIGHEST ORDERS BETWEEN 2009 & 2012-------
alter table KMS
alter column Order_Date date

select top 1 Customer_Name,
count (Order_ID) as TotalOrder from KMS
where Customer_Segment='Corporate'
and Order_Date between '2009-01-01' and '2012-12-31'
group by Customer_Name
order by TotalOrder desc


----------QUESTION 9;MOST PROFITABLE CONSUMER CUSTOMER---------
select top 1 Customer_Name,
sum (Profit) as Total_Profit from KMS
where Customer_Segment='Consumer'
group by Customer_Name
order by Total_Profit desc
          
--------QUESTION 10; CUSTOMERS WHO RETUNRNED ITEMS AND THEIR SEGMENT----------
select Distinct Customer_Name,Customer_Segment
from KMS,Order_Status
where Status='Returned'

select *from KMS
---------QUESTION 11;SHIPPING COST VS ORDER PRIORITY VS SHIPPING METHOD-------- 
----------SHIPPING METHOD VS SHIPPING COST
select Ship_Mode,
sum (Shipping_Cost) as Total_Shipping from KMS
group by Ship_Mode
order by Total_Shipping desc

--------SHIPPING METHOD BY ORDER PRIORITY and AVG SHIPPING COST---------
select Order_Priority,
        Ship_Mode,
count (*) as Total_Orders,
avg(Shipping_Cost) as [Average Shippping Cost]
from KMS
group by Order_Priority,
         Ship_Mode
order by Order_Priority,
         Total_Orders,
          [Average Shippping Cost]desc

		  ----------OTHER MEASURE--------
select Ship_Mode,
      Order_Priority,
avg(datediff(day,[Order_Date],[Ship_Date])) as Avg_Ship_Days from KMS
group by Order_Priority,
         Ship_Mode
Order by Avg_Ship_Days desc,
         Ship_Mode,
		 Order_Priority 
		 select *from KMS
------------------------------END------------------------------------------------
