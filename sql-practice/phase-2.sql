-- Your code here
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS coffee_orders;

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(40) NOT NULL,
    phone NUMRIC(10) UNIQUE,
    email VARCHAR(255) UNIQUE,
    points INTEGER DEFAULT 5,
    created_at TIMESTAMP DEFAULT CURRENT_TIME
);

CREATE TABLE coffee_orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    is_redeemed BOOLEAN DEFAULT "not redeemed",
    ordered_at TIMESTAP DEFAULT CURRENT_TIME
);
