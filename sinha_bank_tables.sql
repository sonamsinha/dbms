/*
Sonam Sinah
Project Bank Management System
sinha_bank_tables.sql
*/


CREATE TABLE branch
( branch_code     VARCHAR2(10)   NOT NULL,
  head_office     VARCHAR2(30)   NOT NULL,
  branch_details  VARCHAR2(50)   NOT NULL,
  city_name       VARCHAR2(30)   NOT NULL,
  
  CONSTRAINT branch_pk PRIMARY KEY(branch_code)
);

CREATE TABLE customers
( customer_id   			    NUMBER(10)    NOT NULL,
  first_name    			    VARCHAR2(50)  NOT NULL,
  last_name     			    VARCHAR2(50),
  birth_date				    VARCHAR2(12)  NOT NULL,
  street_number 			    VARCHAR2(30)  NOT NULL,
  street_name   			    VARCHAR2(30)  NOT NULL,
  unit          			    VARCHAR2(10),
  city          			    VARCHAR2(30)  NOT NULL,
  state         			    CHAR(4)       NOT NULL,
  zip_code      			    NUMBER(10)    NOT NULL,
  email_id      			    VARCHAR2(40)  NOT NULL,
  social_security_number  		NUMBER(12)    NOT NULL,
  branch_code   			    VARCHAR2(10)  NOT NULL,
  credit_card				    CHAR(5),
  loan						    CHAR(5),
  
  CONSTRAINT customers_pk PRIMARY KEY(customer_id),
  CONSTRAINT customers_fk_branch FOREIGN KEY(branch_code) REFERENCES branch(branch_code) 
);


CREATE TABLE customer_phone
( phone_number    VARCHAR2(20)  NOT NULL,
  customer_id     NUMBER(10)    NOT NULL,
  phone_type      VARCHAR2(30)  NOT NULL,
  
  CONSTRAINT customer_phone_pk PRIMARY KEY(phone_number,customer_id),
  CONSTRAINT customer_phone_fk_customers FOREIGN KEY(customer_id) REFERENCES
              customers(customer_id)
);


CREATE TABLE accounts
( account_number    		    NUMBER(12)    NOT NULL,
  customer_id       		    NUMBER(10)    NOT NULL,
  account_balance   		    NUMBER(10,2)  NOT NULL,
  account_type				    VARCHAR2(10)  NOT NULL,
  account_type_description		VARCHAR2(50)  NOT NULL,
  
  CONSTRAINT accounts_pk PRIMARY KEY(account_number),
  CONSTRAINT accounts_fk_customers FOREIGN KEY(customer_id) REFERENCES 
                customers(customer_id)
);


 CREATE TABLE credit_cards
 (
 	credit_card_number		NUMBER(16)		NOT NULL,
 	credit_limit			NUMBER(6,2)		NOT NULL	CHECK(credit_limit>= 500.00 AND credit_limit<= 5000.00),
 	amount_spent			NUMBER(6,2)		NOT NULL,
 	bill_payment_due_date	DATE		  	NOT NULL,
 	minimum_payment			NUMBER(6,2)		NOT NULL	CHECK(minimum_payment>=25.00 AND minimum_payment<=50.00),
 	customer_id				NUMBER(10)    	NOT NULL,
 	
 	CONSTRAINT credit_cards_pk PRIMARY KEY(credit_card_number),
  	CONSTRAINT credit_cards_fk_customers FOREIGN KEY(customer_id)REFERENCES
              customers(customer_id)
 );
 
 
 CREATE TABLE loans
 (
 	loan_number						    NUMBER(12)		NOT NULL,
 	loan_amount						    NUMBER(10,2)	NOT NULL	CHECK(loan_amount>=1000.00 AND loan_amount< 99999.00),
 	loan_type						    VARCHAR2(30)	NOT NULL,
 	loan_duration_months	    		NUMBER(4)		NOT NULL,
 	interest_rate					    NUMBER(4,2)		NOT NULL	CHECK(interest_rate> 00.00 AND interest_rate< 50.00),
 	monthly_payment_due_date			NUMBER(2)		NOT NULL	CHECK(monthly_payment_due_date>=01 AND monthly_payment_due_date<=31),
 	monthly_minimum_payment				NUMBER(10,2)	NOT NULL,
 	payment_method					  	VARCHAR2(20)	NOT NULL,
 	customer_id						    NUMBER(10)    	NOT NULL,
 	
 	CONSTRAINT loans_pk PRIMARY KEY(loan_number),
  	CONSTRAINT loans_fk_customers FOREIGN KEY(customer_id)REFERENCES
              customers(customer_id)
 );
