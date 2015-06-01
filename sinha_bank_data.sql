/*Sonam Sinah
Project Bank Management System
sinha_bank_data.sql*/

-- BRANCH TABLE DATA
INSERT INTO branch(branch_code, head_office,branch_details,city_name)
VALUES ('UTSV008', 'Provo, Utah', 'Commercial','Springville');

INSERT INTO branch(branch_code, head_office,branch_details,city_name)
VALUES ('ARPH125', 'Phoenix, Arizona', 'Commercial','Phoenix');

INSERT INTO branch(branch_code, head_office,branch_details,city_name)
VALUES ('ILAH135', 'Chicago, Illinois', 'Private','Arlington Heights');

INSERT INTO branch(branch_code, head_office,branch_details,city_name)
VALUES ('NYHD118', 'Madison, New York', 'Commercial','Hudson');

INSERT INTO branch(branch_code, head_office,branch_details,city_name)
VALUES ('WILG117', 'Madison, Wisconsin', 'Commercial','Lake Geneva');

INSERT INTO branch(branch_code, head_office,branch_details,city_name)
VALUES ('INFV094', 'Louisville, Indiana', 'Commercial','Fort Wayne');

INSERT INTO branch(branch_code, head_office,branch_details,city_name)
VALUES ('INBG108', 'Louisville, Indiana', 'Commercial','Bloomington');

INSERT INTO branch(branch_code, head_office,branch_details,city_name)
VALUES ('ILSH008', 'Chicago, Illinois', 'Commercial','Schaumburg');

-- CUSTOMER TABLE DATA

INSERT INTO customers(customer_id, 
                      first_name, 
                      last_name,
                      birth_date,
                      street_number, 
                      street_name, 
                      unit,
                      city,
                      state,
                      zip_code, 
                      email_id, 
                      social_security_number, 
                      branch_code,
                      credit_card,
                      loan)
VALUES               (11010,
                      'Rick',
                      'Smith',
                      '09/05/1989',
                      'GL65',
                      'Saint Ave.',
                       NULL,
                      'Springville',
                      'UT',
                      84663,
                      'nick@gmail.com',
                      669521008,
                      'UTSV008',
                      'Yes',
                      NULL); 
                      
INSERT INTO customers(customer_id, 
                      first_name, 
                      last_name,
                      birth_date,
                      street_number, 
                      street_name, 
                      unit,
                      city,
                      state,
                      zip_code, 
                      email_id, 
                      social_security_number, 
                      branch_code,
                      credit_card,
                      loan)
VALUES                ( 11011,
                        'Sam',
                        'Mill',
                        '05/09/1981',
                        '9871',
                        'Churchchill',
                        261,
                        'Phoenix',
                        'AZ',
                        51132,
                        'smill@aol.com',
                        897661310,
                        'ARPH125',
                        NULL,
                        NULL);
                        
INSERT INTO customers(customer_id, 
                      first_name, 
                      last_name,
                      birth_date,
                      street_number, 
                      street_name, 
                      unit,
                      city,
                      state,
                      zip_code, 
                      email_id, 
                      social_security_number, 
                      branch_code,
                      credit_card,
                      loan)
VALUES                ( 11012,
                        'Rich',
                        'Malcom',
                        '11/11/1981',
                        '4531',
                        'Kim Street',
                        136,
                        'Arlington Heights',
                        'IL',
                        60510,
                        'richm@yahoo.com',
                        601993210,
                        'ILAH135',
                        'Yes',
                        'Yes');
                        
INSERT INTO customers(customer_id, 
                      first_name, 
                      last_name,
                      birth_date,
                      street_number, 
                      street_name, 
                      unit,
                      city,
                      state,
                      zip_code, 
                      email_id, 
                      social_security_number, 
                      branch_code,
                      credit_card,
                      loan)
VALUES                ( 11013,
                        'Kathy',
                        'Meyer',
                        '06/11/1991',
                        'TL65',
                        'King Street',
                        240,
                        'Hudson',
                        'NY',
                        73740,
                        'kmalcom@gmail.com',
                        611234861,
                        'NYHD118',
                        'Yes',
                        'Yes');

INSERT INTO customers(customer_id, 
                      first_name, 
                      last_name,
                      birth_date,
                      street_number, 
                      street_name, 
                      unit,
                      city,
                      state,
                      zip_code, 
                      email_id, 
                      social_security_number, 
                      branch_code,
                      credit_card,
                      loan)
VALUES                ( 11014,
                        'Alex',
                        'Baker',
                        '12/01/1875',
                        '1426',
                        'South Wolf Raod',
                         NULL,
                        'Fort Wayne',
                        'IN',
                        46074,
                        'alexb@gmail.com',
                        800188021,
                        'INFV094',
                        'Yes',
                        'Yes');
                        
INSERT INTO customers(customer_id, 
                      first_name, 
                      last_name,
                      birth_date,
                      street_number, 
                      street_name, 
                      unit,
                      city,
                      state,
                      zip_code, 
                      email_id, 
                      social_security_number, 
                      branch_code,
                      credit_card,
                      loan)
VALUES                ( 11015,
                        'Alisha',
                        'Nanda',
                        '12/02/1990',
                        '1435',
                        'Parker Street',
                        NULL,
                        'Schaumburg',
                        'IL',
                        67012,
                        'al_nanda@gmail.com',
                        788518821,
                        'ILSH008',
                        'Yes',
                        'Yes');
                        
INSERT INTO customers(customer_id, 
                      first_name, 
                      last_name,
                      birth_date,
                      street_number, 
                      street_name, 
                      unit,
                      city,
                      state,
                      zip_code, 
                      email_id, 
                      social_security_number, 
                      branch_code,
                      credit_card,
                      loan)
VALUES                ( 11016,
                        'Alia',
                        'Bright',
                        '22/03/1991',
                        '1635',
                        'Park Street',
                        NULL,
                        'Schaumburg',
                        'IL',
                        60562,
                        'alia@gmail.com',
                        619812188,
                        'ILSH008',
                        NULL,
                        'Yes');
INSERT INTO customers(customer_id, 
                      first_name, 
                      last_name,
                      birth_date,
                      street_number, 
                      street_name, 
                      unit,
                      city,
                      state,
                      zip_code, 
                      email_id, 
                      social_security_number, 
                      branch_code,
                      credit_card,
                      loan)
VALUES                ( 11017,
                        'Shawn',
                         'White',
                        '08/02/1990',
                        '1715',
                        'Bell Street',
                        NULL,
                        'Schaumburg',
                        'IL',
                        60560,
                        'shawn1@gmail.com',
                        736381313,
                        'ILSH008',
                        NULL,
                        NULL);
                        
INSERT INTO customers(customer_id, 
                      first_name, 
                      last_name,
                      birth_date,
                      street_number, 
                      street_name, 
                      unit,
                      city,
                      state,
                      zip_code, 
                      email_id, 
                      social_security_number, 
                      branch_code,
                      credit_card,
                      loan)
VALUES                ( 11018,
                        'Shaan',
                         NULL,
                        '08/03/1990',
                        '3115',
                        'River Lane',
                        NULL,
                        'Lake Geneva',
                        'WI',
                        54423,
                        's2g@gmail.com',
                        657063812,
                        'WILG117',
                         NULL,
                        NULL);
                        
                        
INSERT INTO customers(customer_id, 
                      first_name, 
                      last_name,
                      birth_date,
                      street_number, 
                      street_name, 
                      unit,
                      city,
                      state,
                      zip_code, 
                      email_id, 
                      social_security_number, 
                      branch_code,
                      credit_card,
                      loan)
VALUES                ( 11019,
                        'Vincent',
                         NULL,
                        '06/08/1989',
                        '1542',
                        'Blue Avenue',
                        267,
                        'Bloomington',
                        'IN',
                        45310,
                        'vin2@gmail.com',
                        880638121,
                        'INBG108',
                        NULL,
                        NULL);
                        
INSERT INTO customers(customer_id, 
                      first_name, 
                      last_name,
                      birth_date,
                      street_number, 
                      street_name, 
                      unit,
                      city,
                      state,
                      zip_code, 
                      email_id, 
                      social_security_number, 
                      branch_code,
                      credit_card,
                      loan)
VALUES                (11020,
                       'Vicky',
                       NULL,
                       '05/08/1987',
                       1451,
                       'Windsor Avenue',
                       384,
                       'Bloomington',
                       'IN',
                       46235,
                       'vicky123@gmail.com',
                       620638841,
                       'INBG108',
                       'Yes',
                       'Yes');
                        
--CUSTOMER PHONE TABLE DATA
INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('8018953214', 11010,'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('8019874632', 11010,'Home Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('6027461132', 11011,'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('6021136878', 11011,'Home Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('2246329874', 11012, 'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('3129321651', 11012, 'Home Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('9179114876', 11013,'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('9170365632', 11013, 'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('3177461321', 11014, 'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('2249874622', 11015,'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('3129874166', 11016,'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('2248763122', 11017,'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('6549871362', 11017,'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('2629874622', 11018,'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('3179874568', 11019,'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('3179874982', 11019,'Cell Phone');

INSERT INTO customer_phone(phone_number,customer_id,phone_type)
VALUES('3159876826', 11020,'Cell Phone');


-- ACCOUNTS TABLE DATA
INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(3982276530,11010,5000.00,'CHECKING','CHECKING ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(8902345125,11010, 60000.00,'SAVINGS','SAVINGS ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(9871702287, 11011,69999.70, 'MMA', 'MONEY MARKET ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(4345010261, 11012, 75000.00,'CD','CERTIFICATE OF DEPOSIT ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(9124003568, 11012, 50000.00, 'SAVINGS', 'SAVINGS ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(5189201392, 11013, 85000.00, 'SAVINGS','SAVINGS ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(8001939743, 11014, 15000.00, 'IRA', 'INDIVIDUAL RETIREMENT ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(6829743045, 11015, 65000.00,'SAVINGS', 'SAVINGS ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(8028492955, 11016, 6500.00, 'CHECKING', 'CHECKING ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(8027649295, 11016, 40000.00, 'SAVINGS', 'SAVINGS ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(8175492955, 11017, 8500.00, 'CHECKING', 'CHECKING ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(8028406355, 11017, 6500.00, 'SAVINGS', 'SAVINGS ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(8020292942, 11018, 20000.00, 'SAVINGS', 'SAVINGS ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(7377332955, 11019, 30000.00, 'SAVINGS', 'SAVINGS ACCOUNT');

INSERT INTO accounts(account_number, customer_id, account_balance,account_type,account_type_description)
VALUES(8476322975,11020,2000,'CHECKING','CHECKING ACCOUNT');

-- CREDIT CARDs TABLE DATA

INSERT INTO credit_cards(credit_card_number, credit_limit, amount_spent, bill_payment_due_date, minimum_payment, customer_id)
VALUES(3714496353984371,3000.00, 900.00, '08-APR-15',25.00, 11010);

INSERT INTO credit_cards(credit_card_number, credit_limit, amount_spent, bill_payment_due_date, minimum_payment, customer_id)
VALUES(3643893643893654, 2000.00, 1050.00, '10-APR-15', 40.00, 11012);

INSERT INTO credit_cards(credit_card_number, credit_limit, amount_spent, bill_payment_due_date, minimum_payment, customer_id)
VALUES(6011016011016011, 1000.00, 500.00, '15-APR-15', 25.00,11013);

INSERT INTO credit_cards(credit_card_number, credit_limit, amount_spent, bill_payment_due_date, minimum_payment, customer_id)
VALUES(3611036110361276, 3500.00, 1000.00, '20-APR-15', 25.00,11014);

INSERT INTO credit_cards(credit_card_number, credit_limit, amount_spent, bill_payment_due_date, minimum_payment, customer_id)
VALUES(3611064749361281, 2000.00, 1060.00, '30-APR-15', 46.89, 11015 );

INSERT INTO credit_cards(credit_card_number, credit_limit, amount_spent, bill_payment_due_date, minimum_payment, customer_id)
VALUES(4562036780362678, 2000.00, 1300.00,'27-APR-15',25.00,11020);

-- LOANS TABLE DATA

INSERT INTO loans(loan_number, loan_amount, loan_type, loan_duration_months, interest_rate, monthly_payment_due_date,
				 monthly_minimum_payment, payment_method,customer_id)
VALUES(44689319,10000.00, 'Car loan', 72, 0.03, 12,200.00, 'Cheque', 11012);

INSERT INTO loans(loan_number, loan_amount, loan_type, loan_duration_months, interest_rate, monthly_payment_due_date,
				 monthly_minimum_payment, payment_method,customer_id)
VALUES(77489838, 15000.00, 'Personal loan', 60, 0.06, 15, 500.00, 'Cheque',11013);

INSERT INTO loans(loan_number, loan_amount, loan_type, loan_duration_months, interest_rate, monthly_payment_due_date,
				 monthly_minimum_payment, payment_method,customer_id)
VALUES(63892734, 8000.00, 'Personal loan', 30, 0.07, 16, 600.00, 'Credit card', 11014);

INSERT INTO loans(loan_number, loan_amount, loan_type, loan_duration_months, interest_rate, monthly_payment_due_date,
				 monthly_minimum_payment, payment_method,customer_id)
VALUES(62860134, 5000.00, 'Car loan', 12, 0.04, 28, 300.00, 'Credit card', 11014);

INSERT INTO loans(loan_number, loan_amount, loan_type, loan_duration_months, interest_rate, monthly_payment_due_date,
				 monthly_minimum_payment, payment_method,customer_id)
VALUES(78363489, 50000.00, 'Mortgage loan', 150, 0.06, 6, 500.00, 'Cheque', 11015);

INSERT INTO loans(loan_number, loan_amount, loan_type, loan_duration_months, interest_rate, monthly_payment_due_date,
				 monthly_minimum_payment, payment_method,customer_id)
VALUES(18467484, 5000.00, 'Personal loan', 12, 0.07, 2, 350, 'Credit card', 11016);

INSERT INTO loans(loan_number, loan_amount, loan_type, loan_duration_months, interest_rate, monthly_payment_due_date,
				 monthly_minimum_payment, payment_method,customer_id)
VALUES(67417448, 3000.00, 'Personal loan', 17, 0.08, 2, 350, 'Credit card', 11020);








