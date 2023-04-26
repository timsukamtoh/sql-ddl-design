CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    purchase_date date NOT NULL,
    note VARCHAR(50),
    customer_id INT REFERENCES customers
);

CREATE TABLE bikes (
    models_id TEXT PRIMARY KEY,
    price int NOT NULL
);

CREATE TABLE order_bikes (
    id SERIAL PRIMARY KEY,
    bike_model_id TEXT REFERENCES bikes,
    order_id INT REFERENCES orders,
    total_price int NOT NULL 
);

INSERT INTO bikes 
(models_id, price)
VALUES
    ('FLY', 500),
    ('HAUL', 600),
    ('SKIN', 700),
    ('BUD', 800);