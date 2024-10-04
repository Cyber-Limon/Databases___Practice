CREATE TABLE Customers (
    cust_id CHAR(10) PRIMARY KEY,
    cust_name CHAR(50) NOT NULL,
    cust_address CHAR(50) DEFAULT NULL,
    cust_city CHAR(50) DEFAULT NULL,
    cust_state CHAR(5) DEFAULT NULL,
    cust_zip CHAR(10) DEFAULT NULL,
    cust_country CHAR(50) DEFAULT NULL,
    cust_contact CHAR(50) DEFAULT NULL,
    cust_email CHAR(255) DEFAULT NULL
);

INSERT INTO Customers VALUES (1000000001, "Village Toys", "200 Maple Lane", "Detroit", "MI", 44444, "USA", "John Smith", "sales@villagetoys.com");
INSERT INTO Customers VALUES (1000000002, "Kids Place", "333 South Lake Drive", "Columbus", "OH", 43333, "USA", "Michelle Green", NULL);
INSERT INTO Customers VALUES (1000000003, "Fun4All", "1 Sunny Place", "Muncie", "PU", 42222, "USA", "Jim Jones", "jjones@fun4all.com");
INSERT INTO Customers VALUES (1000000004, "Fun4All", "829 Riverside Drive", "Phoenix", "AZ", 88888, "USA", "Deinse L. Stephens", "dstephens@fun4all.com");
INSERT INTO Customers VALUES (1000000005, "The Toy Store", "4545 53rd Streer", "Chicago", "IL", 54545, "USA", "Kim Howard", NULL);



CREATE TABLE OrderItems (
    order_num INT(11)NOT NULL ,
    order_item INT(11) NOT NULL,
    prod_id CHAR(10) NOT NULL,
    quantity INT(11) NOT NULL,
    item_price DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (order_num, order_item)
);

INSERT INTO OrderItems VALUES (20005, 1, 'BR01', 100, 5.49);
INSERT INTO OrderItems VALUES (20005, 2, 'BR03', 100, 10.99);
INSERT INTO OrderItems VALUES (20006, 1, 'BR01', 20, 5.99);
INSERT INTO OrderItems VALUES (20006, 2, 'BR02', 10, 8.99);
INSERT INTO OrderItems VALUES (20006, 3, 'BR03', 10, 11.99);
INSERT INTO OrderItems VALUES (20007, 1, 'BR03', 50, 11.49);
INSERT INTO OrderItems VALUES (20007, 2, 'BNBG01', 100, 2.99);
INSERT INTO OrderItems VALUES (20007, 3, 'BNBG02', 100, 2.99);
INSERT INTO OrderItems VALUES (20007, 4, 'BNBG03', 100, 2.99);
INSERT INTO OrderItems VALUES (20007, 5, 'RGAN01', 50, 4.49);
INSERT INTO OrderItems VALUES (20008, 1, 'RGAN01', 5, 4.99);
INSERT INTO OrderItems VALUES (20008, 2, 'BR03', 5, 11.99);
INSERT INTO OrderItems VALUES (20008, 3, 'BNBG01', 10, 3.49);
INSERT INTO OrderItems VALUES (20008, 4, 'BNBG02', 10, 3.49);
INSERT INTO OrderItems VALUES (20008, 5, 'BNBG03', 10, 3.49);
INSERT INTO OrderItems VALUES (20009, 1, 'BNBG01', 250, 2.49);
INSERT INTO OrderItems VALUES (20009, 2, 'BNBG02', 250, 2.49);
INSERT INTO OrderItems VALUES (20009, 3, 'BNBG03', 250, 2.49);



CREATE TABLE Orders (
    order_num INT(11) PRIMARY KEY,
    order_date DATETIME NOT NULL,
    cust_id CHAR(10) NOT NULL
);

INSERT INTO Orders VALUES (20005, '2004-05-01 00:00:00', 1000000001);
INSERT INTO Orders VALUES (20006, '2004-01-12 00:00:00', 1000000003);
INSERT INTO Orders VALUES (20007, '2004-01-30 00:00:00', 1000000004);
INSERT INTO Orders VALUES (20008, '2004-02-03 00:00:00', 1000000005);
INSERT INTO Orders VALUES (20009, '2004-02-08 00:00:00', 1000000001);



CREATE TABLE Products (
    prod_id CHAR(10) PRIMARY KEY,
    vend_id CHAR(10) NOT NULL,
    prod_name CHAR(255) NOT NULL,
    prod_price DECIMAL(8,2) NOT NULL,
    prod_desc TEXT DEFAULT NULL
);

INSERT INTO Products VALUES ('BR01', 'BRS01', '8 inch teddy bear', '5.99', '8 inch teddy bear, comes with cap and jacket');
INSERT INTO Products VALUES ('BR02', 'BRS01', '12 inch teddy bear', '8.99', '12 inch teddy bear, comes with cap and jacket');
INSERT INTO Products VALUES ('BR03', 'BRS01', '18 inch teddy bear', '11.99', '18 inch teddy bear, comes with cap and jacket');
INSERT INTO Products VALUES ('BNBG01', 'DLL01', 'Fish bean bag toy', '3.49', 'Fish bean bag toy, complete with bean bag worms with which to feed it');
INSERT INTO Products VALUES ('BNBG02', 'DLL01', 'Bird bean bag toy', '3.49', 'Bird bean bag toy, eggs are not included');
INSERT INTO Products VALUES ('BNBG03', 'DLL01', 'Rabbit bean bag toy', '3.49', 'Rabbit bean bag toy, comes with bean bag carrots');
INSERT INTO Products VALUES ('RGAN01', 'DLL01', 'Raggedy Ann', '4.99', '18 inch Raggedy Ann doll');
INSERT INTO Products VALUES ('RYL01', 'FNG01', 'King doll', '9.49', '12 inch king doll with royal garments and crown');
INSERT INTO Products VALUES ('RYL02', 'FNG01', 'Queen doll', '9.49', '12 inch queen doll with royal garments and crown');



CREATE TABLE Vendors (
    vend_id CHAR(10) PRIMARY KEY,
    vend_name CHAR(50) NOT NULL,
    vend_address CHAR(50) DEFAULT NULL,
    vend_city CHAR(50) DEFAULT NULL,
    vend_state CHAR(5) DEFAULT NULL,
    vend_zip CHAR(10) DEFAULT NULL,
    vend_country CHAR(50) DEFAULT NULL
);

INSERT INTO Vendors VALUES ('BRS01', 'Bears R Us', '1123 Main Street', 'Bear Town', 'MI', 44444, 'USA');
INSERT INTO Vendors VALUES ('BRE02', 'Bear Emporium', '500 Park Street', 'Anytown', 'OH', 44333, 'USA');
INSERT INTO Vendors VALUES ('DLL01', 'Doll House Inc.', '555 High Street', 'Dollsville', 'CA', 9999, 'USA');
INSERT INTO Vendors VALUES ('FRB01', 'Furball Inc.', '1000 5th Avenue', 'New York', 'NY', 1111, 'USA');
INSERT INTO Vendors VALUES ('FNG01', 'Fun and Games', '42 Galaxy Road', 'London', NULL, 'N16 6PS', 'England');
INSERT INTO Vendors VALUES ('JTS01', 'Jouets et ours', '1 Rue Amusement', 'Paris', NULL, 45678, 'France');



SELECT '1 часть' AS '-----Задачи по SQL-----';

#Задание 1.1
SELECT * FROM Customers;

#Задание 1.2
SELECT cust_id from Customers;

#Задание 1.3
SELECT prod_id, prod_name, prod_price FROM Products;

#Задание 1.4
SELECT prod_id FROM Products order by prod_id;

#Задание 1.5
SELECT prod_id, prod_name, prod_price from Products order by prod_name, prod_price;



SELECT '2 часть' AS '-----Задачи по SQL-----';

#Задание 2.1
select prod_id, prod_price, prod_name from Products order by 2,3;

#Задание 2.2
select prod_id, prod_name, prod_price from Products order by prod_name desc;

#Задание 2.3
select prod_id, prod_name, prod_price from Products order by prod_name desc, prod_price asc;

#Задание 2.4
select prod_id, prod_name, prod_price from Products where prod_price = 3.49;

#Задание 2.5
select prod_id, prod_name, prod_price from Products where prod_price = 11.99 and vend_id = "BRS01";



SELECT '3 часть' AS '-----Задачи по SQL-----';

#Задание 3.1
SELECT prod_id, prod_name, prod_price FROM Products WHERE prod_name = '8 inch teddy bear' OR prod_price = '3.49';

#Задание 3.2
SELECT prod_id, prod_name, prod_desc FROM Products WHERE prod_price IN ('3.49', '9.49');

#Задание 3.3
SELECT prod_name FROM Products WHERE NOT vend_id = 'DLL01';

#Задание 3.4
SELECT prod_price FROM Products WHERE prod_name LIKE 'Fish bean%';

#Задание 3.5
SELECT prod_id, prod_name, prod_price FROM Products WHERE prod_name LIKE '_____bean bag toy';



SELECT '4 часть' AS '-----Задачи по SQL-----';

#Задание 4.1
SELECT cust_address FROM Customers WHERE cust_address RLIKE '[JM%]';

#Задание 4.2
SELECT CONCAT(vend_name, vend_country) FROM Vendors ORDER BY vend_name;

#Задание 4.3
SELECT RTRIM(CONCAT(vend_name, vend_address)) FROM Vendors ORDER BY vend_name;

#Задание 4.4
SELECT RTRIM(CONCAT(vend_name, vend_country)) AS 'Задание 4.4' FROM Vendors ORDER BY vend_name;

#Задание 4.5
SELECT prod_id, quantity, item_price, (quantity * item_price) AS expanded_data FROM OrderItems;



SELECT '5 часть' AS '-----Задачи по SQL-----';

#Задание 5.1
SELECT vend_name, UPPER(vend_name) AS vend_name_upcase FROM Vendors ORDER BY vend_name;

#Задание 5.2 (! FUNCTION DB.DATEPART does not exist  !)
SELECT order_num, YEAR(order_date) FROM Orders;

#Задание 5.3
SELECT AVG(prod_price) AS avg_price FROM Products;

#Задание 5.4
SELECT COUNT(*) FROM Customers;

#Задание 5.5
SELECT MAX(prod_price) AS max_price FROM Products;



SELECT '6 часть' AS '-----Задачи по SQL-----';

#Задание 6.1
SELECT MIN(prod_price) AS min_price FROM Products;

#Задание 6.2
SELECT SUM(quantity) AS item_ordered FROM OrderItems WHERE order_num = 20005;

#Задание 6.3
SELECT AVG(DISTINCT prod_price) AS avg_price FROM Products;

#Задание 6.4
SELECT COUNT(*) AS num_items, 
       MIN(prod_price) AS price_min,
       MAX(prod_price) AS price_max,
       AVG(prod_price) AS price_avg FROM Products;

#Задание 6.5
SELECT COUNT(vend_id) AS num_prods FROM Products GROUP BY vend_id;



SELECT '7 Часть' AS '-----Задачи по SQL-----';

#Задание 7.1
SELECT cust_id AS orders FROM Orders GROUP BY cust_id HAVING COUNT(cust_id) >= 2;

#Задание 7.2 
SELECT vend_id AS num_prods FROM Products WHERE prod_price >= 4 GROUP BY vend_id HAVING COUNT(vend_id) >= 2; 

#Задание 7.3
SELECT order_num AS items FROM OrderItems GROUP BY order_num HAVING COUNT(order_num) >= 3 ORDER BY order_num, items;

#Задание 7.4
SELECT cust_id FROM Orders WHERE order_num IN (SELECT order_num FROM OrderItems WHERE prod_id = "RGAN01");

#Задание 7.5
SELECT cust_name, cust_state, (SELECT COUNT(*) FROM Orders WHERE Orders.cust_id = Customers.cust_id) AS orders FROM Customers ORDER BY cust_name;



SELECT '8 часть' AS '-----Задачи по SQL-----';

#Задание 8.1
SELECT vend_name, prod_name, prod_price FROM Vendors, Products WHERE Vendors.vend_id = Products.vend_id;

#Задание 8.2
SELECT prod_name, vend_name, prod_price, quantity FROM OrderItems, Products, Vendors 
                                                  WHERE OrderItems.prod_id = Products.prod_id 
                                                  AND Products.vend_id = Vendors.vend_id 
                                                  AND order_num = 20007; 

#Задание 8.3
SELECT cust_name, cust_contact FROM OrderItems AS OI, Orders AS O, Customers AS C 
                               WHERE OI.order_num = O.order_num 
                               AND C.cust_id = O.cust_id 
                               AND prod_id = "RGAN01";

#Задание 8.4
SELECT c1.cust_name, c1.cust_id, c1.cust_contact FROM Customers AS c1, Customers AS c2 
                                                 WHERE c1.cust_name = c2.cust_name 
                                                 AND c2.cust_contact = "Jim Jones"; 

#Задание 8.5
SELECT O.order_num, O.order_date, OI.prod_id, OI.quantity, OI.item_price 
                                FROM Customers AS C, Orders AS O, OrderItems AS OI 
                                WHERE C.cust_id = O.cust_id 
                                AND OI.order_num = O.order_num 
                                AND prod_id = "RGAN01";
