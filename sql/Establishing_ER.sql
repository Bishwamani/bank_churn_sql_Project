## Establishing ER Diadram

## Adding Primary Key
Use churn_db;

select * from customers;

Alter table customers 
add primary key (CustomerID);

## Adding foreign key
ALTER TABLE accounts
ADD CONSTRAINT fk_customer
FOREIGN KEY (CustomerId)
REFERENCES customers(CustomerId);