use zepto;

/*select all rows & columns from zepto data*/
ALTER TABLE zepto
ADD COLUMN sku_id INT AUTO_INCREMENT PRIMARY KEY;


/*data exploration*/
SELECT * FROM zepto
LIMIT 10;

/*lets counts the rows*/
SELECT COUNT(*) FROM zepto;

ALTER TABLE zepto
RENAME COLUMN ï»¿Category TO Category;

/*check for null values*/
SELECT * 
FROM zepto
WHERE name IS NULL
   OR Category IS NULL
   OR mrp IS NULL
   OR discountPercent IS NULL
   OR availableQuantity IS NULL
   OR discountedSellingPrice IS NULL
   OR weightInGms IS NULL
   OR outOfStock IS NULL
   OR quantity IS NULL;
   
   /*different product categories*/
   SELECT DISTINCT Category
   FROM zepto
   ORDER BY Category;
   
   /*LETS FIND THE PRODUCTS IN THE STOCK VS OUT OF STOCK*/
  SELECT  outOfStock, COUNT(*)
  FROM zepto
  GROUP BY outOfStock;
  
/*PRODUCT NAMES HAVING MULTIPLE TIMES*/
  SELECT name, COUNT(sku_id) AS NUMBEROFTIMES
  FROM zepto
  GROUP BY name
  HAVING COUNT(sku_id) >1
  ORDER BY COUNT(sku_id) DESC;
  
  /* DATA CLEANING  */ 
  /* PRODUCTS WITH PRICE =0*/
  SELECT * FROM zepto
  WHERE     mrp =0 OR discountedSellingPrice =0;
  
  SET SQL_SAFE_UPDATES=0;
  DELETE FROM zepto
  WHERE mrp=0;
  SET SQL_SAFE_UPDATES=0; 

/*CONVERT PAISE TO RUPEES*/
UPDATE zepto
SET mrp=mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

SELECT mrp ,discountedSellingPrice FROM zepto;

/*Q. Which products have the highest available quantity in stock? (Top 10)*/
SELECT name, availableQuantity
FROM zepto
ORDER BY availableQuantity DESC
LIMIT 10;


/*Q10. What are the top 5 brands with the most number of products listed?*/
SELECT name, COUNT(*) AS product_count
FROM zepto
GROUP BY name
ORDER BY product_count DESC
LIMIT 5;



 /*Q. Find the top 10 best-value products based on the discount percentage.*/
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

/*Q.What are the Products with High MRP but Out of Stock*/

SELECT  name,mrp
FROM zepto
WHERE outOfStock = TRUE and mrp > 300
ORDER BY mrp DESC;

/*Q.Calculate Estimated Revenue for each category*/
SELECT category,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue;

/*Q. Top 5 Product Names with the Most Entries*/
SELECT name,COUNT(*) AS PRODUCT_COUNT
FROM zepto
GROUP BY name
ORDER BY PRODUCT_COUNT DESC
LIMIT 5;

/*Q. Find all products where MRP is greater than ₹500 and discount is less than 10%.*/
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;

/*Q.Average Discount per Product Name (Top 10)*/
SELECT name,ROUND(AVG(discountPercent),2) AS AVGDISCOUNT
FROM zepto
GROUP BY name
ORDER BY AVGDISCOUNT DESC
LIMIT 10;

/*Q.Categories with Most Out-of-Stock Products*/
SELECT category,COUNT(*) AS OUT_OF_STOCKCOUNT
FROM zepto
WHERE outOfStock ='TRUE'
GROUP BY category
ORDER BY OUT_OF_STOCKCOUNT DESC;


/*Q. Identify the top 5 categories offering the highest average discount percentage.*/
SELECT category,
ROUND(AVG(discountPercent),2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

/* Q. Find the price per gram for products above 100g and sort by best value.*/
SELECT DISTINCT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) AS price_per_gram
FROM zepto
WHERE weightInGms >= 100
ORDER BY price_per_gram;

/*Q.Group the products into categories like Low, Medium, Bulk.*/
SELECT DISTINCT name, weightInGms,
CASE WHEN weightInGms < 1000 THEN 'Low'
	WHEN weightInGms < 5000 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category 
FROM zepto;

/* Q.What is the Total Inventory Weight Per Category */
SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;

/*Q.Max, Min, Avg MRP per Category*/
SELECT category,
 MAX(mrp) AS MAXMRP,
 MIN(mrp) AS MINMRP,
 ROUND(AVG(mrp),2) AS AVG_MRP
 FROM zepto
 GROUP BY category;
 
/* Q. Products with Same Name but Different MRP*/
SELECT name,COUNT(DISTINCT mrp) AS MRP_VARIANTS
FROM zepto
GROUP BY name
HAVING COUNT(DISTINCT mrp)>1;

/*Products with Quantity 0 but Not Marked Out of Stock*/
SELECT name,availableQuantity,outOfStock
FROM zepto
WHERE availableQuantity =0 AND outOfStock= 'FALSE';
