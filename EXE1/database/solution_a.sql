-- Lấy danh sách người dùng theo thứ tự tên Alphabet (A→Z)
SELECT * FROM users ORDER BY name ASC;

-- Lấy 07 người dùng theo thứ tự tên Alphabet (A→Z)
SELECT * FROM users ORDER BY name ASC LIMIT 7;

-- Lấy danh sách người dùng theo thứ tự tên Alphabet (A→Z), trong đó tên có chữ 'a'
SELECT * FROM users WHERE name LIKE '%a%' ORDER BY name ASC;

-- Lấy danh sách người dùng có tên bắt đầu bằng chữ 'm'
SELECT * FROM users WHERE name LIKE 'm%';

-- Lấy danh sách người dùng có tên kết thúc bằng chữ 'i'
SELECT * FROM users WHERE name LIKE '%i';

-- Lấy danh sách người dùng có email là Gmail
SELECT * FROM users WHERE email LIKE '%@gmail.com';

-- Lấy danh sách người dùng có email là Gmail và tên bắt đầu bằng chữ 'm'
SELECT * FROM users WHERE email LIKE '%@gmail.com' AND name LIKE 'm%';

-- Lấy danh sách người dùng có email là Gmail, tên có chữ 'i' và tên dài hơn 5 ký tự
SELECT * FROM users 
WHERE email LIKE '%@gmail.com' 
AND name LIKE '%i%' 
AND LENGTH(name) > 5;

-- Lấy danh sách người dùng có tên chứa chữ 'a', chiều dài từ 5 đến 9, email là Gmail, và phần tên email chứa chữ 'i'
SELECT * FROM users 
WHERE name LIKE '%a%' 
AND LENGTH(name) BETWEEN 5 AND 9 
AND email LIKE '%@gmail.com' 
AND SUBSTRING_INDEX(email, '@', 1) LIKE '%i%';

-- Lấy danh sách người dùng thỏa điều kiện:
-- - Tên chứa chữ 'a', dài từ 5 đến 9 HOẶC
-- - Tên chứa chữ 'i', dài nhỏ hơn 9 HOẶC
-- - Email là Gmail và phần tên email chứa chữ 'i'
SELECT * FROM users 
WHERE (name LIKE '%a%' AND LENGTH(name) BETWEEN 5 AND 9) 
   OR (name LIKE '%i%' AND LENGTH(name) < 9) 
   OR (email LIKE '%@gmail.com' AND SUBSTRING_INDEX(email, '@', 1) LIKE '%i%');
