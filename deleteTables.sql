-- Delete Table Customers
DELETE FROM customers;
ALTER TABLE customers AUTO_INCREMENT = 1;

-- Delete Table Categories
DELETE FROM categories;
ALTER TABLE categories AUTO_INCREMENT = 1;

-- Delete Table Products
DELETE FROM products;
ALTER TABLE products AUTO_INCREMENT = 1;

-- Delete Table Transactions
DELETE FROM transactions;
ALTER TABLE transactions AUTO_INCREMENT = 1;

-- Delete Table Transactions
DELETE FROM trans_items;
ALTER TABLE trans_items AUTO_INCREMENT = 1;