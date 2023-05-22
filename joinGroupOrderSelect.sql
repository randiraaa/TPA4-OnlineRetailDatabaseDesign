-- Mengambil data pelanggan yang membeli 3 barang yang berbeda
SELECT c.customer_id, c.customer_name, COUNT(DISTINCT p.product_id) AS product_names, GROUP_CONCAT(DISTINCT p.product_name SEPARATOR ', ') AS product_names
FROM transactions t
JOIN customers c ON t.customer_id = c.customer_id
JOIN trans_items ti ON t.transaction_id = ti.transaction_id
JOIN products p ON ti.product_id = p.product_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(DISTINCT p.product_id) = 3;

-- Melihat 3 produk yang paling sering dibeli oleh pelanggan
SELECT p.product_name, SUM(ti.quantity) AS total_sold
FROM transactions t
JOIN trans_items ti ON t.transaction_id = ti.transaction_id
JOIN products p ON ti.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 3;

-- Melihat kategori barang yang paling banyak barangnya
SELECT c.category_name, COUNT(p.product_id) AS total_products, GROUP_CONCAT(p.product_name SEPARATOR ', ') AS product_names
FROM categories c
JOIN products p ON c.category_id = p.category_id
GROUP BY c.category_name
ORDER BY total_products DESC
LIMIT 1;

-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir
SELECT c.customer_name, SUM(t.price) AS total_transaction, AVG(t.price) AS average_transaction
FROM customers c
JOIN transactions t ON c.customer_id = t.customer_id
WHERE t.transaction_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY c.customer_id;
