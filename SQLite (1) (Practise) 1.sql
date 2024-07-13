#List all transactions along with customer details and total amount.
SELECT Transaction_ID, Customer_ID, Name, Email, Phone, Address, City, State, Zipcode, Country, Total_Amount
FROM retail_data;

#transections Per country
SELECT country, Count(transaction_id) As Transection_Count
From retail_data
Group By country;

#average total amount spent per customer
SELECT customer_id , AVG(amount) As AVG_Amount
from retail_data
Group By customer_id;

#products purchased by customers who provided an 'Excellent' feedback
SELECT total_purchases , Count(customer_id) As Exellent_FeedBack
From retail_data
group by feedback = 'exellent';

#most frequently used payment method
SELECT payment_method , Count(transaction_id) as Frequent_payment_methode
FROM retail_data
group by payment_method
order by transaction_id DESC

#top 5 cities with the highest total sales
SELECT city, SUM(total_amount) As Total_sales
from retail_data
group by city
order by total_amount DESC
LIMIT 5;

#list of customers who have made more than 5 purchases
SELECT customer_id, Count(total_purchases) As Purchases
from retail_data
order by total_purchases > 5;

#Retrieve transactions that are still 'Processing'
SELECT order_status , COUNT(transaction_id) AS Transection_processing
from retail_data
group by order_status = 'Processing';

#total sales amount for each product category
SELECT product_category , SUM(amount) As Total_sales_By_catagory
from retail_data
group by product_category;

#customers along with their most recent transaction.
SELECT customer_id , MAX(transaction_id) AS Recent_transaction
from retail_data
group by year
Limit 5;

#all transactions where the total amount is greater than 1000.
SELECT  name , total_amount
FRom retail_data
where total_amount > 1000;

#customers from Germany or the UK.
SELECT country ,  COUNT(customer_id) As Total_Customers
from retail_data
GROUP by country = 'germany' or country = 'UK'
ORDER by customer_id;

#all transactions where the total amount is between 500 and 1500.
SELECT transaction_id , total_amount 
from retail_data
where amount 
IS 500 OR 1500;

#customers who have given either 'Bad' or 'Average' feedback.
SELECT customer_id , feedback
from retail_data
WHERE Feedback IN ('Bad', 'Average');

#all transactions that are either in 'Processing' status or have been 'Shipped'.
SELECT transaction_id , order_status 
from retail_data
where order_status = 'Processing' Or order_status = 'Shipped';

#Retrieve customers whose phone numbers contain the digit '8'.
SELECT customer_id , phone
from retail_data
where phone like '%8%';

#all customers who do not live in the state of 'Berlin'.
SELECT customer_id , state
from retail_data 
where State <> 'Berlin';

#transactions where the ratings are greater than or equal to 4.
SELECT transaction_id , ratings
from retail_data
where ratings >= '4';

#customers whose email addresses end with 'gmail.com'.
SELECT customer_id , email
from retail_data
where email like '%gmail.com';

#all transactions that have a total amount not in the range of 200 to 500.
SELECT transaction_id , total_amount
from retail_data
where total_amount Not like 200 AND 500;

#List customers who live in a city that contains the letter 'o'.
SELECT customer_id , city
from retail_data 
where city like '%o%';

#transactions where the shipping method is neither 'Same-Day' nor 'Standard'.
SELECT transaction_id , shipping_method
from retail_data
where shipping_method Not In ('Same-Day' , 'Standard');

#Retrieve customers who have made exactly 3 transactions.
SELECT customer_id , Count(transaction_id)
from retail_data
where  transaction_id = 3;

Select transaction_id , total_amount
from retail_data
where total_amount > '1000';

SELECT name , email , feedback
FROM retail_data
where feedback =  'Excellent';

SELECT product_type , amount , year
From retail_data
where year = '2023';

SELECT DISTINCT(product_category)
from retail_data;

SELECT customer_id , country
from retail_data
where country = 'Germany';

SELECT name , city , total_amount
from retail_data
where total_amount > '50000';

SELECT transaction_id , order_status , payment_method
from retail_data
where order_status = 'Shipped' AND payment_method = 'Credit Card';

SELECT transaction_id , total_amount
from retail_data
order by total_amount;

SELECT city
FROM retail_data
GROUP by city;

SELECT name , products , customer_id , ratings
FROM retail_data
where ratings = '5';

SELECT transaction_id , month
from retail_data
where month = 'December';

SELECT customer_id , total_purchases
FROM retail_data
where total_purchases > '10';

SELECT product_brand , feedback , ratings
from retail_data
where ratings >= '4';

SELECT transaction_id , shipping_method
from retail_data
where shipping_method = 'Same-Day';

SELECT name , product_brand , count(product_brand)
FROM retail_data
where product_brand = 'Nike';

SELECT transaction_id , product_category 
from retail_data
where product_category = 'Electronics';

SELECT DISTINCT(country)
from retail_data;

SELECT name , total_amount , transaction_id , products
from retail_data
where products = 'Chocolate cookies';

SELECT *
from retail_data
where feedback = 'Average';

SELECT name , email , phone , country
from retail_data
where country = 'Canada';

SELECT Count(transaction_id)
from retail_data

SELECT SUM(total_purchases)
from retail_data;

SELECT product_category, AVG(total_amount) AS AVG_Amount
FROM retail_data
where product_category = 'Clothing';

SELECT transaction_id , MAX(amount) As MAX_Amount
from retail_data

SELECT customer_id , MIN(age) AS MIN_AGE
from retail_data

SELECT DISTINCT ( Count(customer_id)) AS Unique_Customer
from retail_data

SELECT AVG(ratings) AS AVG_Rating
from retail_data

SELECT product_brand , Count(transaction_id) AS Number_Of_Transaction
from retail_data
GROUP by product_brand

SELECT product_category , SUM(total_amount) AS SUM_Amount
from retail_data
GROUP by product_category

SELECT customer_id , MAX(total_amount) AS Highest_amount
from retail_data

SELECT AVG(income)
from retail_data

SELECT year , Count(transaction_id) AS Total_transection
from retail_data
order by year;

SELECT customer_id , MAX(total_purchases) AS MAX_Parches
from retail_data

SELECT product_category , SUM(total_amount) AS Total_revene
from retail_data
where product_category = 'Electronics';

SELECT feedback , AVG(total_amount) AS AVG_AMOUNT
from retail_data
Where feedback = 'Excellent';

SELECT Count(payment_method) AS PAY_PAYPAL
from retail_data
where payment_method = 'PayPal';

SELECT country , Count(transaction_id) AS UK_Transections
from retail_data
Where country = 'UK';

SELECT feedback , AVG(age) AS Feedback_age
from retail_data
where feedback = 'Bad';

SELECT shipping_method , COUNT(transaction_id) AS Total_Shipped
FROM retail_data
where shipping_method = 'shipped';

SELECT DISTINCT(Count(product_type))
from retail_data;