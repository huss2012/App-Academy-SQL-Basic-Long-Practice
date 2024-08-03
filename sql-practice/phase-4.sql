-- Your code here
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS romantic_relationships;
DROP TABLE IF EXISTS performance_reviews;
DROP TABLE IF EXISTS parties;

CREATE TABLE employees(
    employee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    department VARCHAR(40) NOT NULL,
    role VARCHAR(40) NOT NULL
);
CREATE TABLE romantic_relationships(
    relationship_id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee1_id INTEGER,
    employee2_id INTEGER,
    FOREIGN KEY (employee1_id) REFERENCES employees(employee_id),
    FOREIGN KEY (employee2_id) REFERENCES employees(employee_id)
);
CREATE TABLE performance_reviews(
    review_id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id INTEGER,
    score DECEMAL(3, 1) CHECK(score >= 0 AND score <=10),
    review_date TIMESTAMP CURRENT_TIMESTAMP,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
CREATE TABLE parties(
    party_id INTEGER PRIMARY KEY AUTOINCREMENT,
    budget DECIMAL(10, 2),
    location VARCHAR(8) CHECK(location IN ('onsite', 'offsite')),
    party_date DATE NOT NULL
);
--1,2,3,4,5,6,7,9
INSERT INTO employees (first_name, last_name, department, role)
VALUES('Michael', 'Scott', 'Management', 'Regional Manager'),
('Dwight', 'Schrute', 'Sales', 'Assistant Regional Manager'),
('Jim', 'Halpert', 'Sales', 'Sales Representative'),
('Pam', 'Beesly', 'Reception', 'Receptionist'),
('Kelly', 'Kapoor', 'Product Oversight', 'Customer Service Representaive'),
('Angela', 'Martin', 'Accounting', 'Head of Accounting'),
('Roy', 'Anderson', 'Warehouse', 'Warehouse Staff'),
('Ryan', 'Howard', 'Reception', 'Temp');
--8
INSERT INTO romantic_relationships ( employee1_id, employee2_id)
VALUES(7, 4);
--10
INSERT INTO parties (budget, location, party_date)
VALUES(100.00, 'onsite', '2024-08-15');
--11
INSERT INTO performance_reviews(employee_id, score)
VALUES(2, 3.3);
--12
INSERT INTO performance_reviews(employee_id, score)
VALUES(3, 4.2);
--13
UPDATE performance_reviews SET score = 9.0 WHERE employee_id = 2;
--14
UPDATE performance_reviews SET score = 9.3 WHERE employee_id = 3;
--15
UPDATE employees SET role = 'Assistant Regional Manager' WHERE employee_id = 3;
--16
UPDATE employees SET department = 'Sales', role = 'Sales Representative' WHERE employee_id = 8;
--17
INSERT INTO parties (budget, location, party_date)
VALUES(200.00, 'onsite', '2024-08-25');
--18
INSERT INTO romantic_relationships (employee1_id, employee2_id)
VALUES(6, 2);
--19
INSERT INTO performance_reviews(employee_id, score)
VALUES(6, 6.2);
--20
INSERT INTO romantic_relationships (employee1_id, employee2_id)
VALUES(8, 5);
--21
INSERT INTO parties (budget, location, party_date)
VALUES(50.00, 'onsite', '2024-08-30');
--22

