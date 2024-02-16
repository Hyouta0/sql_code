/*
Generate a report that shows all columns from product table with one additional column 
- price_cat. Where price_cat is derived 
1. low_price - less than 3 dollar
2. mid_price - between 3 dollar to 5 dollar 
3. high_price - greater than 5 dollar
*/

USE retail;
SELECT *,
CASE 
	WHEN price <3 THEN 'low_pirce'
	WHEN price   BETWEEN 3 AND 5 THEN 'mid_price'
	WHEN price > 5 THEN 'high_price'
END AS price_cat
FROM product;