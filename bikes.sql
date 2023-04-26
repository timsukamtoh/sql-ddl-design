CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    purchase_date TIMESTAMP NOT NULL , --TODO: default current timestamp
    note VARCHAR(50),
    customer_id INT NOT NULL REFERENCES customers
);

CREATE TABLE bikes (
    models_id VARCHAR(5) PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    price int NOT NULL
);

CREATE TABLE order_bikes (
    id SERIAL PRIMARY KEY,
    bike_model_id VARCHAR(5) NOT NULL REFERENCES bikes,
    order_id INT NOT NULL REFERENCES orders,
    total_price NUMERIC(5,2) NOT NULL --TODO: Check numeric syntz
);

INSERT INTO bikes
(models_id, price)
VALUES
    ('FLY', 500),
    ('HAUL', 600),
    ('SKIN', 700),
    ('BUD', 800);