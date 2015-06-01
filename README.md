# dbms
Bank Database Management System
The purpose of this project is to create a database management system for a bank. Oracle 11g has been used as the underlying database. The DDL and DML statements have been written using Oracle PL/SQL developer. This project intends to provide a simplistic approach towards designing a database for a banking system. 
In any banking database system the most important relationship is that of the customer to the account. In general there are several categories and types of accounts a customer can have. For this project I have taken into consideration the following types of accounts: -
<ul>
<li>	Credit Deposit
<li>  Money Market
<li>	Individual Retirement 
<li>	Checking
<li>	Saving
</ul>

As a part of this project the essential details of the customer are to be captured like name, address, date of birth, phone number, email, etc. A customer id is assigned to every customer who wants to be a part of the banking system. This customer id acts as a key to the other details related to the customer such as account information, loan information and credit card information. The accounts table carries important information about the account such as the balance in the account and the type of the account. Each of the entries of the account carry a customer id associated with the account to form a correct relation.
Going with the industry standard I have chosen to include the details of any credit card or loan that has been issued to the customer as a part of the banking relationship.
As with every customer most of the accounts are opened at a branch so it is logical to have a relationship between a customer and a branch. Every branch can have one or many customers associated with it. This makes it easier for the administrator or a bank employee to look up and track the branch where an account was first opened. 
This project encompasses a complete view of how a banking system database would look like. All the tables mentioned above intend to capture and retain important information related to the account and the customer.  SQL queries can then be used to query the details of customers, customer phone numbers, accounts, loans or credit cards.

