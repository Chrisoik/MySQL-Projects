SELECT salesman.name AS "salesman", customer.cust_name, customer.city
FROM salesman, customer
WHERE salesman.city = customer.city;

SELECT c.cust_name AS customer_name, c.city , s.name AS salesman, s.commission 
FROM costumer AS c
INNER JOIN salesman AS s
	on c.salesman_id = s.salesman_id
WHERE s.commission >= 0.12
;

SELECT c.cust_name AS customer_name,
c.city,
o.ord_no AS order_num,
o.ord_date AS order_date,
o.purch_amt AS  "order amount"
FROM customer c
 LEFT OUTER JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY order_date;

