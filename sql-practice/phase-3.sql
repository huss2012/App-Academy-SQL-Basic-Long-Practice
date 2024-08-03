-- Your code here
--1.
INSERT INTO customers (name, phone) VALUES ('Rachel', '111-111-111');
--2.
SELECT points FROM customers WHERE id = 1;--Check the points
UPDATE customers SET points = points + 1 WHERE id = 1;--update the points
INSERT INTO coffee_orders DEFAULT VALUES;--add new coffee order
--3
INSERT INTO customers (name, phone, email)
VALUES ('Monica', '222-222-222', 'monica@friends.show'),
('Phoebe','333-333-333', 'phoebe@friends@show');
--4
SELECT points FROM customers WHERE id = 3;--Check the points
UPDATE customers SET points = points + 3 WHERE id = 3;--update the points
INSERT INTO coffee_orders DEFAULT VALUES;--add new coffee order
--5
--Rachel
SELECT points FROM customers WHERE id = 2;--Check the points
UPDATE customers SET points = points + 4 WHERE id = 2;--update the points
INSERT INTO coffee_orders DEFAULT VALUES;--add new coffee order
--monica
SELECT points FROM customers WHERE id = 1;--Check the points
UPDATE customers SET points = points + 4 WHERE id = 1;--update the points
INSERT INTO coffee_orders DEFAULT VALUES;--add new coffee order
--6
SELECT points FROM customers WHERE id = 2;--9 points
--7
SELECT points FROM customers WHERE id = 1;--10 points
UPDATE customers SET points = points - 10 WHERE id = 1;
INSERT INTO coffee_orders (is_redeemed) VALUES (1);
--8
INSERT INTO customers (name, email) VALUES ('Joey', 'joey@friends.show');
INSERT INTO customers (name, email) VALUES ('Chandler', 'chandler@friends.show');
INSERT INTO customers (name, email) VALUES ('Ross', 'ross@friends.show');
--9
SELECT points FROM customers WHERE id = 6;--Check the points
UPDATE customers SET points = points + 6 WHERE id = 6;--update the points
INSERT INTO coffee_orders (is_redeemed) VALUES (0);--add new coffee order
--10
SELECT points FROM customers WHERE id = 2;--Check the points
UPDATE customers SET points = points + 3 WHERE id = 2;--update the points
INSERT INTO coffee_orders (is_redeemed) VALUES (0);--add new coffee order
--11
SELECT points FROM customers WHERE id = 3;--Check on points8
UPDATE customers SET points = points + 1 WHERE id = 3;--update the points
INSERT INTO coffee_orders (is_redeemed) VALUES (0);--add new coffee order
--12
--Need a foreign key not added in phase 2
--13
--14
--15
DELETE * FROM customers WHERE id = 5;
--16
--17
--18
UPDATE customers SET email = 'p_as_in_phoebe@friends.show' WHERE id = 3;
