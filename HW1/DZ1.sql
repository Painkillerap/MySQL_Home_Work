CREATE DATABASE DZ_1;

USE DZ_1;

# 1. Создайте таблицу с мобильными телефонами.
CREATE TABLE mobile_phones (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(30) NOT NULL,
  manufacturer VARCHAR(20) NOT NULL,
  product_count INT NULL,
  price INT NULL);
  
SELECT * FROM mobile_phones;

#  Заполните БД данными.
INSERT INTO mobile_phones(product_name, manufacturer, product_count, price)
VALUES
("iPhone X", "Apple", 3, 76000),
("iPhone 8", "Apple", 2, 51000),
("Galaxy S9", "Samsung", 2, 56000),
("Galaxy S8", "Samsung", 1, 41000),
("P20 Pro", "Huawei", 5, 36000);

# 2. Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT product_name, manufacturer, price FROM mobile_phones
WHERE product_count > 2;

# 3. Выведите весь ассортимент товаров марки “Samsung”
SELECT * FROM mobile_phones
WHERE manufacturer = "Samsung";

# 4.1 Найти товары, в которых есть упоминание "Iphone"
SELECT * FROM mobile_phones
WHERE product_name LIKE '%iPhone%';

SELECT product_name, manufacturer, product_count, price 
FROM mobile_phones 
WHERE product_name REGEXP 'Iphone' || manufacturer REGEXP 'Iphone';

# 4.2 Найти товары, в которых есть упоминание "Samsung"
SELECT * FROM mobile_phones
WHERE manufacturer LIKE '%Samsung%';

SELECT product_name, manufacturer, product_count, price 
FROM mobile_phones 
WHERE product_name REGEXP 'Samsung' || manufacturer REGEXP 'Samsung';

# 4.3 Найти товары, в которых есть ЦИФРА "8"  
SELECT * FROM mobile_phones
WHERE product_name LIKE '%8%';

SELECT product_name, manufacturer, product_count, price 
FROM mobile_phones 
WHERE product_name REGEXP '[[8]]' = 1 || manufacturer REGEXP '[[8]]' = 1;
