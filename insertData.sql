-- Table Customers
INSERT INTO customers (customer_name, email, phone) VALUES
("Randi", "randi@gmail.com", "085603553044"),
("Anggia", "anggia@gmail.com", "085603553098"),
("Yusuf", "yusuf@gmail.com", "085603553066"),
("Asep", "asep@gmail.com", "085603553064"),
("Putri", "putri@gmail.com", "085603553064"),
("Rizal", "rizal@gmail.com", "085603553067"),
("Agus", "agus@gmail.com", "085603553064"),
("Cintia", "cintia@gmail.com", "085603553078"),
("Diny", "diny@gmail.com", "085603553054"),
("Alex", "alex@gmail.com", "085603553089")

SELECT * FROM customers;

-- Table Categories
INSERT INTO categories (category_name) VALUES
("Baju"),
("Celana"),
("Kerudung"),
("Sepatu"),
("Pakaian Dalam"),
("Jaket"),
("Parfum"),
("Topi"),
("Kecantikan"),
("Sendal")

SELECT * FROM categories;

-- Table Products
INSERT INTO products (product_name, price, category_id) VALUES
("Baju Tidur Wanita", 100000, 1),
("Baju Lengan Panjang", 50000, 1),
("Baju Lengan Pendek", 40000, 1),
("Baju Renang", 70000, 1),
("Celana Jeans", 150000, 2),
("Celana Chino", 140000, 2),
("Celana Cargo", 170000, 2),
("Pashmina", 20000, 3),
("Khimar Panjang", 15000, 3),
("Hijab Scarf", 30000, 3),
("Sepatu Adidas", 170000, 4),
("Sepatu Boots", 120000, 4),
("Sepatu Safety Boots", 230000, 4),
("Blazer", 15000, 5),
("Bikini", 15000, 5),
("Belt", 15000, 5),
("Jaket Bomber", 150000, 6),
("Jaket Trucker", 150000, 6),
("Jaket Varsity", 150000, 6),
("Burberry London", 70000, 7),
("Belagio", 70000, 7),
("Butterfly", 80000, 7),
("Topi Beani", 30000, 8),
("Topi Fedora", 30000, 8),
("Topi Hat", 40000, 8),
("Face Primer", 45000, 9),
("Foundation", 50000, 9),
("Conclear", 35000, 9),
("Sandal Tali", 50000, 10),
("Sandal Santai", 50000, 10),
("Sandal Flat", 50000, 10)

SELECT * FROM products;

-- Table Transactions
INSERT INTO transactions (customer_id, transaction_date, product_id, product_name, price) VALUES
(1, '2023-05-20', 2, "Baju Lengan Panjang", 50000),
(1, '2023-05-20', 2, "Baju Lengan Panjang", 50000),
(1, '2023-05-20', 3, "Baju Lengan Pendek", 40000),
(1, '2023-05-20', 4, "Baju Renang", 70000),
(2, '2023-05-20', 27, "Foundation", 50000),
(2, '2023-05-21', 28, "Conclear", 35000),
(2, '2023-05-21', 28, "Conclear", 35000),
(2, '2023-05-21', 28, "Conclear", 35000),
(9, '2023-05-21', 29, "Sendal Tali", 50000),
(9, '2023-05-21', 30, "Sendal Santai", 50000),
(3, '2023-05-22', 24, "Topi Fedora", 30000),
(3, '2023-05-22', 24, "Topi Fedora", 30000),
(3, '2023-05-22', 24, "Topi Fedora", 30000),
(3, '2023-05-22', 2, "Baju Lengan Panjang", 50000)

SELECT * FROM transactions;

-- Table Transaction Items
INSERT INTO trans_items (transaction_id, product_id, quantity) VALUES
(1, 2, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 27, 1),
(6, 28, 1),
(7, 28, 1),
(8, 28, 1),
(9, 29, 1),
(10, 30, 1),
(11, 24, 1),
(12, 24, 1),
(13, 24, 1),
(14, 2, 1)

SELECT * FROM trans_items;
