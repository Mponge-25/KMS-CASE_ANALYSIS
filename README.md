# KMS CASE_ANALYSIS

Businesses thrive based on informed decisions from existing data. This document provides useful data insights from an exploratory data analysis conducted for Kultra Mega Stores, with respect to the company's sales performance, customer base and category, as well as transportation. This analysis aims to provide information to management on the current state of the business and enable them take business decisions from an informed perspective for the future.
 
To begin the analysis, the Kultra Mega Stores Inventory file was uploaded into the SQL Studio Management Server as a flat file, and some modifications made on the dataset. Then we proceeded to conduct a guided analysis by running a series of queries and syntaxes in the dataset as seen below.

## CASE SCENARIO I:

The first series of analysis revolved around sales with respect to some criteria and transportation

### Question 1; Product category with highest sales

(![KMS question 1](https://github.com/user-attachments/assets/323968e2-1069-44dd-822c-c4f8e8d5008c)

### Question 2; Top and Bottom 3 regions on sales
![KMS question 2](https://github.com/user-attachments/assets/81ee944c-621f-4f59-bd48-ddea53a01850)

### Question 3 and 4

![KMS question 3 and 4](https://github.com/user-attachments/assets/c8111d8e-7f90-41f3-a413-5492e9f6811f)

### Question 5; Highest Shipping Cost

![KMS Question 5](https://github.com/user-attachments/assets/943bbc7d-8b59-4352-bf1c-2acc6e31c152)

## CASE SCENARIO II
The key delivearbles in this section are explained below

### Question 6; Most valuable Customers vs products they normally purchase

In order to obtain the most valuable customer, there were two possible criterias; sales and profit. However, given that high sales does not always mean positive profit 6(i), profit was used as the baseline for analysis.

![KMS question 6(i)](https://github.com/user-attachments/assets/18730c94-d149-4321-9d15-d03bac908fc4)
![KMS Question 6(ii)](https://github.com/user-attachments/assets/75e01c90-bcf4-4005-9092-b06d47e148d1)

### Question 7; Small business customer with highest sales

![KMS question 7](https://github.com/user-attachments/assets/021505e3-3f87-40f9-afee-74fa3cac3d78)

### Question 8; Corporate customer with most orders

![KMS Question 8](https://github.com/user-attachments/assets/dc26a49e-fde3-4eae-92e6-7129e780650e)

### Question 9;Most profitable consumer customer and Q10; Customers who returned items

![KMS Question 9 and 10](https://github.com/user-attachments/assets/3890a513-60eb-4ba2-b902-8a4a9e9885e6)

### Question 11; Shipping cost appropriateness to Shipping method

First of all, we examined the cost of shipping for the three modes available, and delivery truck was the most expensive, while express air was second most expensive. We further looked at the order priority for the different modes as well as the total number of orders per priority and mode. The results reveal that management did not appropriately spend shipping cost based on order priority. This is indicated by the fact that even if delivery truck was the most economical but slowest and express air the fastest but most expensive, there is still a third shipping mode (Regular) which combines order priority, average shipping cost, total number of orders in the least cost way.

If we go further to look at the average shipping days, it is the same across all priority orders and shipping mode, with the exception of low prority orders where delivery truck has the least number of days. Hence, the company's shipping cost decision was not based on order priority; other factors such as product sub category, region or product container.

![KMS Question 11(ii)](https://github.com/user-attachments/assets/51ce6323-e8fe-4962-bd3d-0231ce3f3666)
![KMS Questiion 11(iii)](https://github.com/user-attachments/assets/50d70821-5dcd-49ab-8f78-d27a938db2a5)

## KEY CONTRIBUTIONS
1. Pointed out
   - the product category and region with the highest sales.
   - customers who brought the least and most value to the company in different segments.
   - customer with the most orders within a four years period.
2. Highlighted the need for management to review shipping policies.
3. Documented and included the syntax used in the analysis which can be reused and or modified for optimality.

[KMS QUERY SYNTAX](https://raw.githubusercontent.com/Mponge-25/KULTRA-MEGA-STORE-CASE_ANALYSIS/refs/heads/main/SQL%20SYNTAX%20FOR%20KULTRA%20MEGA%20STORE.sql)
