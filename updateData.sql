-- Mengubah data pada tabel Customers
UPDATE customers SET email = 'randinur@gmail.com' WHERE customer_id = 1;

-- Mengubah data pada tabel Products
UPDATE products SET price = 200000 WHERE product_id = 5;

-- Mengubah data pada tabel Transactions
UPDATE transactions SET price = 60000 WHERE transaction_id = 7;

-- Mengubah data pada tabel Transaction Items
UPDATE trans_items SET quantity = 2 WHERE trans_items_id = 1;