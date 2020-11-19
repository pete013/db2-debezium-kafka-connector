-- ORDERS
INSERT INTO orders (order_id, order_status_code) VALUES (5,'InTransit');
INSERT INTO orders (order_id, order_status_code) VALUES (6,'InTransit');
UPDATE orders SET order_status_code = 'Shipped', updated_on = CURRENT_TIMESTAMP WHERE order_id = 1;
UPDATE orders SET order_status_code = 'Delivered', updated_on = CURRENT_TIMESTAMP WHERE order_id = 2;
INSERT INTO orders (order_id, order_status_code) VALUES (7,'InTransit');
INSERT INTO orders (order_id, order_status_code) VALUES (8,'InTransit');
UPDATE orders SET order_status_code = 'Shipped', updated_on = CURRENT_TIMESTAMP WHERE order_id = 7;
UPDATE orders SET order_status_code = 'Delivered', updated_on = CURRENT_TIMESTAMP WHERE order_id = 8;