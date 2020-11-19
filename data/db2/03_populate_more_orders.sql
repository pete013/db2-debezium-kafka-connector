INSERT INTO orders (order_id, order_status_code) VALUES (5,'InTransit');
INSERT INTO orders (order_id, order_status_code) VALUES (6,'InTransit');
UPDATE orders SET order_status_code = 'Shipped', updated_on = CURRENT_TIMESTAMP WHERE order_id = 1;
UPDATE orders SET order_status_code = 'Delivered', updated_on = CURRENT_TIMESTAMP WHERE order_id = 2;