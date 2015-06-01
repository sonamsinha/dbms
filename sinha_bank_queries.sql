/*  Query 1 
Write a query that returns customer name, customer_id, loan_number,loan_amount,
loan_type from the customers and accounts table.The result set should contain 
customers associated with a branch that have a loan against them with an amount
of greater than 10,000 and a loan duration of more than 60 months.
*/
SELECT first_name||' '|| last_name AS customer_name , c.customer_id, loan_number,
        loan_amount,loan_type, b.branch_code
FROM customers c 
  JOIN loans l ON
   c.customer_id= l.customer_id
   JOIN branch b ON
   c.branch_code= b.branch_code
WHERE loan_amount > 10000
      AND loan_duration_months > 60;
/*
Query 1 Output-
CUSTOMER_NAME	CUSTOMER_ID		LOAN_NUMBER		LOAN_AMOUNT		LOAN_TYPE	      BRANCH_CODE
Alisha Nanda	11015	     	78363489	    50000	   		Mortgage loan	  ILSH008

*/
      
/*  Query 2
Get the different types of accounts that have been opened up by customers at the
bank. Also get the maximum balance with respect to each of the account types and
the customer details with respect to those accounts.
*/
SELECT cc.customer_id, cc.first_name, cc.last_name, acc.account_balance,
acc.account_number,acc.account_type
FROM accounts acc, customers cc 
WHERE account_balance IN (
                          SELECT MAX(a.account_balance) as max_balance
                          FROM accounts a 
                          GROUP BY a.account_type) 
          AND cc.customer_id = acc.customer_id;
/*
Query2 Output-
CUSTOMER_ID	FIRST_NAME	LAST_NAME	 ACCOUNT_BALANCE	ACCOUNT_NUMBER	ACCOUNT_TYPE
11017	      Shawn	      White	     8500	          	8175492955	        CHECKING
11013	      Kathy	      Meyer	     85000	         	5189201392	        SAVINGS
11011	      Sam	      Mill	     69999.7	     	9871702287	        MMA
11012	      Rich	      Malcom	 75000	         	4345010261	        CD
11014	      Alex	      Baker	     15000	        	8001939743	        IRA

*/          


/*
QUERY 3
Write a query that returns a list of customers that have taken 
two or more loans from the bank.
*/
SELECT  c.customer_id,  first_name, last_name, COUNT(loan_number)AS 
      total_number_of_loans
FROM customers c 
      JOIN loans l ON
      c.customer_id = l.customer_id
GROUP BY  c.customer_id, first_name,last_name
HAVING COUNT(loan_number)>=2
ORDER BY c.customer_id;
/*
Query 3 Output-
CUSTOMER_ID	FIRST_NAME	LAST_NAME	      TOTAL_NUMBER_OF_LOANS
11014	      Alex	      Baker	          2
*/

/*
QUERY 4
Write a query that returns branch_code, customer_id, customer_name,
city and state for the branches that are not in Utah(UT) and Arizona(AZ).
*/
SELECT b.branch_code, customer_id,first_name||' '|| last_name AS customer_name,city,
      state
FROM customers c JOIN branch b ON
      c.branch_code= b.branch_code
WHERE state NOT IN('UT', 'AZ')
ORDER BY city DESC;
/*
Query 4 Output-
BRANCH_CODE	  CUSTOMER_ID	 CUSTOMER_NAME	    CITY	          STATE
ILSH008	      11015	         Alisha Nanda	    Schaumburg	      IL  
ILSH008	      11017	         Shawn White	    Schaumburg	      IL  
ILSH008	      11016	         Alia Bright	  	Schaumburg	      IL  
WILG117	      11018	         Shaan 	            Lake Geneva	      WI  
NYHD118	      11013	         Kathy Meyer	    Hudson	          NY  
INFV094	      11014	         Alex Baker	        Fort Wayne	      IN 
INBG108       11020          Vicky              Bloomington       IN  
INBG108	      11019	         Vincent 	        Bloomington	      IN  
ILAH135	      11012	         Rich Malcom	    Arlington Heights IL  
*/

/*QUERY 5
Write a query that gives a list of customers who are not living in 
apartments/units. Get detailed customer information regarding these customers.
*/
SELECT customer_id,first_name, last_name, street_number||' '||street_name||', '
      ||city ||', '||state||', '||zip_code  AS address
FROM customers
WHERE unit IS NULL
ORDER BY state DESC;
/*
Query 5 Output-
CUSTOMER_ID	 FIRST_NAME	  LAST_NAME	  	ADDRESS
11018	       Shaan		              3115 River Lane, Lake Geneva, WI  , 54423
11010	       Rick	        Smith	      GL65 Saint Ave., Springville, UT  , 84663
11014	       Alex	        Baker	      1426 South Wolf Raod, Fort Wayne, IN  , 46074
11017	       Shawn	    White	      1715 Bell Street, Schaumburg, IL  , 60560
11016	       Alia	        Bright        1635 Park Street, Schaumburg, IL  , 60562
11015	       Alisha	    Nanda	      1435 Parker Street, Schaumburg, IL  , 67012
*/

/*QUERY 6
Write a query that returns customer_name, customer_id, account_number,
account_balance for the customers who have account_balance between 5000 and 7000
in their checking accounts.
*/
SELECT first_name||' ' ||last_name AS customer_name, c.customer_id, account_number, account_balance
FROM customers c 
      JOIN accounts a ON
      c.customer_id= a.customer_id
WHERE account_balance >= 5000 AND account_balance <7000 AND account_type= 'CHECKING'
ORDER BY account_number;
/*
Query 6 Output-
CUSTOMER_NAME	  CUSTOMER_ID	  ACCOUNT_NUMBER	  ACCOUNT_BALANCE
Rick Smith	      11010	          3982276530	      5000
Alia Bright	      11016	          8028492955	      6500
*/

/*
QUERY 7
Write a query that returns customer_name, address,phone_number,phone_type,
account_number and account_balance of customers whose account balances
are equal to or more than 50000 and and have a cell phone (Phone Type- "Cell Phone").
Order the result set by account balance.
*/
SELECT  c.customer_id, first_name||' '||last_name AS customer_name, account_number,
      account_balance , phone_number,phone_type,
      unit||', '||street_name||' '||street_number||', '||city||', '||state||', '||
      zip_code AS customer_address
FROM customers c JOIN customer_phone cp ON
      c.customer_id= cp.customer_id
      JOIN accounts a
      ON c.customer_id= a.customer_id
WHERE unit IS NOT NULL AND account_balance>= 50000 AND 
      phone_type= 'Cell Phone'
ORDER BY account_balance;
/*
Query 7 Output-
CUSTOMER_ID	CUSTOMER_NAME	ACCOUNT_NUMBER	ACCOUNT_BALANCE	PHONE_NUMBER	PHONE_TYPE	CUSTOMER_ADDRESS
11012	      Rich Malcom	9124003568	    50000	          2246329874	  Cell Phone	136, Kim Street 4531, Arlington Heights, IL, 60510
11011	      Sam Mill	 	9871702287	    69999.7	          6027461132	  Cell Phone	261, Churchchill 9871, Phoenix, AZ, 51132
11012	      Rich Malcom	4345010261	    75000	          2246329874	  Cell Phone	136, Kim Street 4531, Arlington Heights,IL, 60510
11013	      Kathy Meyer	5189201392	    85000	          9179114876	  Cell Phone	240, King Street TL65, Hudson, NY, 73740
*/

/*
QUERY 8
Write a query that gets the list of customers who have to pay their credit card bill
between 06 April,2015 and 01 May, 2015 and have a credit limit at least $1000.
*/
SELECT c.customer_id, first_name||' '|| last_name AS customer_name,credit_limit,
credit_card_number,bill_payment_due_date
FROM customers c JOIN credit_cards cc
      ON c.customer_id= cc.customer_id
WHERE bill_payment_due_date BETWEEN '06-APR-15' AND '01-MAY-15' AND 
credit_limit>=1000
ORDER BY customer_id;
/*
Query 8 Output-
CUSTOMER_ID	CUSTOMER_NAME	CREDIT_LIMIT	CREDIT_CARD_NUMBER	BILL_PAYMENT_DUE_DATE
11010	      Rick Smith	  3000	        3714496353984371	  08-APR-15
11012	      Rich Malcom	  2000	        3643893643893654	  10-APR-15
11013	      Kathy Meyer	  1000	        6011016011016011	  15-APR-15
11014	      Alex Baker	  3500	        3611036110361276	  20-APR-15
11015	      Alisha Nanda	  2000	        3611064749361281	  30-APR-15
11020    	  Vicky           2000          4562036780362678      27-APR-15
*/

/*
QUERY 9
Query the data related to a customer who has the amount spent from a credit card
totaling atleast $1000 and also determine the credit limit for the account. 
Display the customer details, credit limit and the amount spent by the customer.
*/
SELECT c.customer_id, first_name||' '|| last_name AS customer_name,credit_limit,
        amount_spent
FROM customers c 
      JOIN credit_cards cc ON
      c.customer_id= cc.customer_id
WHERE amount_spent>=1000;
/*
Query 9 Output-
CUSTOMER_ID	CUSTOMER_NAME	CREDIT_LIMIT	AMOUNT_SPENT
11012	    Rich Malcom	  2000	        1050
11014	    Alex Baker	  3500	        1000
11015	    Alisha Nanda  2000	        1060
11020       Vicky         2000          1300
*/


/*Query 10
Write a query to find out the customers that have more than $5000 with the bank. 
Order the result set by total_account_balance in descending order.
*/
SELECT c.first_name,c.customer_id, SUM(account_balance) AS total_account_balance,c.state
FROM customers c 
    JOIN accounts a ON
    c.customer_id = a.customer_id
GROUP BY c.first_name,c.customer_id, c.state
HAVING SUM(account_balance) > 5000
ORDER BY total_account_balance DESC;
/*Query 10 Output-

FIRST_NAME	CUSTOMER_ID	TOTAL_ACCOUNT_BALANCE	STATE
Rich	      11012	      125000	            IL  
Kathy	      11013	      85000	                NY  
Sam	          11011	      69999.7	            AZ  
Rick	      11010	      65000	                UT  
Alisha	      11015	      65000	                IL  
Alia	      11016	      46500	                IL  
Vincent	      11019	      30000	                IN  
Shaan	      11018	      20000	                WI  
Alex	      11014	      15000	                IN  
Shawn	      11017	      15000	                IL  
*/
  
/*Query 11
Write a query that returns the account_balances that are greater than 
the average account_balance for all the accounts.Return the customer_id,
account_number and account_balance for each customer*/  
SELECT c.customer_id,account_number, account_balance
FROM accounts a
    JOIN customers c ON
    a.customer_id= c.customer_id
WHERE account_balance >(
                      SELECT AVG(account_balance)
                      FROM accounts);
/*Query 11 Output
CUSTOMER_ID	ACCOUNT_NUMBER	ACCOUNT_BALANCE
11010	      8902345125	    60000
11011	      9871702287	    69999.7
11012	      4345010261	    75000
11012	      9124003568	    50000
11013	      5189201392	    85000
11015	      6829743045	    65000
11016	      8027649295	    40000
*/
 