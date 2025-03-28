-- 1. Liệt kê các hóa đơn của khách hàng
SELECT ord.user_id, usr.name AS user_name, ord.order_id 
FROM orders ord
JOIN users usr ON ord.user_id = usr.id;

-- 2. Liệt kê số lượng các hóa đơn của khách hàng
SELECT ord.user_id, usr.name AS user_name, COUNT(ord.order_id) AS total_orders 
FROM orders ord
JOIN users usr ON ord.user_id = usr.id
GROUP BY ord.user_id, usr.name;

-- 3. Liệt kê thông tin hóa đơn: mã đơn hàng, số sản phẩm
SELECT ordt.order_id, COUNT(ordt.product_id) AS total_products 
FROM order_details ordt
GROUP BY ordt.order_id;

-- 4. Liệt kê thông tin mua hàng của người dùng
SELECT ord.user_id, usr.name AS user_name, ord.order_id, prd.name AS product_name 
FROM orders ord
JOIN users usr ON ord.user_id = usr.id
JOIN order_details ordt ON ord.order_id = ordt.order_id
JOIN products prd ON ordt.product_id = prd.id
ORDER BY ord.order_id;

-- 5. Liệt kê 7 người dùng có số lượng đơn hàng nhiều nhất
SELECT ord.user_id, usr.name AS user_name, COUNT(ord.order_id) AS total_orders 
FROM orders ord
JOIN users usr ON ord.user_id = usr.id
GROUP BY ord.user_id, usr.name
ORDER BY total_orders DESC
LIMIT 7;

-- 6. Liệt kê 7 người dùng mua sản phẩm có tên Samsung hoặc Apple
SELECT ord.user_id, usr.name AS user_name, ord.order_id, prd.name AS product_name 
FROM orders ord
JOIN users usr ON ord.user_id = usr.id
JOIN order_details ordt ON ord.order_id = ordt.order_id
JOIN products prd ON ordt.product_id = prd.id
WHERE prd.name LIKE '%Samsung%' OR prd.name LIKE '%Apple%'
LIMIT 7;

-- 7. Liệt kê danh sách mua hàng của user bao gồm giá tiền của mỗi đơn hàng
SELECT ord.user_id, usr.name AS user_name, ord.order_id, SUM(prd.price) AS total_price 
FROM orders ord
JOIN users usr ON ord.user_id = usr.id
JOIN order_details ordt ON ord.order_id = ordt.order_id
JOIN products prd ON ordt.product_id = prd.id
GROUP BY ord.user_id, usr.name, ord.order_id;

-- 8. Mỗi user chỉ chọn ra 1 đơn hàng có giá tiền lớn nhất
SELECT ord.user_id, usr.name AS user_name, ord.order_id, SUM(prd.price) AS total_price 
FROM orders ord
JOIN users usr ON ord.user_id = usr.id
JOIN order_details ordt ON ord.order_id = ordt.order_id
JOIN products prd ON ordt.product_id = prd.id
GROUP BY ord.user_id, usr.name, ord.order_id
HAVING total_price = (SELECT MAX(total_price) FROM (SELECT ord.user_id, SUM(prd.price) AS total_price FROM orders ord JOIN order_details ordt ON ord.order_id = ordt.order_id JOIN products prd ON ordt.product_id = prd.id GROUP BY ord.user_id, ord.order_id) subquery WHERE subquery.user_id = ord.user_id);

-- 9. Mỗi user chỉ chọn ra 1 đơn hàng có giá tiền nhỏ nhất
SELECT ord.user_id, usr.name AS user_name, ord.order_id, SUM(prd.price) AS total_price, COUNT(ordt.product_id) AS total_products 
FROM orders ord
JOIN users usr ON ord.user_id = usr.id
JOIN order_details ordt ON ord.order_id = ordt.order_id
JOIN products prd ON ordt.product_id = prd.id
GROUP BY ord.user_id, usr.name, ord.order_id
HAVING total_price = (SELECT MIN(total_price) FROM (SELECT ord.user_id, SUM(prd.price) AS total_price FROM orders ord JOIN order_details ordt ON ord.order_id = ordt.order_id JOIN products prd ON ordt.product_id = prd.id GROUP BY ord.user_id, ord.order_id) subquery WHERE subquery.user_id = ord.user_id);

-- 10. Mỗi user chỉ chọn ra 1 đơn hàng có số sản phẩm nhiều nhất
SELECT ord.user_id, usr.name AS user_name, ord.order_id, SUM(prd.price) AS total_price, COUNT(ordt.product_id) AS total_products 
FROM orders ord
JOIN users usr ON ord.user_id = usr.id
JOIN order_details ordt ON ord.order_id = ordt.order_id
JOIN products prd ON ordt.product_id = prd.id
GROUP BY ord.user_id, usr.name, ord.order_id
HAVING total_products = (SELECT MAX(total_products) FROM (SELECT ord.user_id, COUNT(ordt.product_id) AS total_products FROM orders ord JOIN order_details ordt ON ord.order_id = ordt.order_id GROUP BY ord.user_id, ord.order_id) subquery WHERE subquery.user_id = ord.user_id);
