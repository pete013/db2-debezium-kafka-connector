DROP TABLE IF EXISTS orders;
CREATE TABLE orders (order_id INTEGER NOT NULL, order_status_code VARCHAR(20), created_on TIMESTAMP NOT NULL WITH DEFAULT, updated_on TIMESTAMP);
ALTER TABLE orders ADD CONSTRAINT orders_pk PRIMARY KEY(order_id);