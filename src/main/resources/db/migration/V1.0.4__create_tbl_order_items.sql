CREATE TABLE if not exists order_items ( 
    id BIGSERIAL PRIMARY KEY, 
    order_id BIGINT REFERENCES orders(id) ON DELETE CASCADE, 
    product_variant_id INT REFERENCES product_variants(id), 
    product_name VARCHAR(100) NOT NULL, 
    variant_name VARCHAR(50) NOT NULL,
    unit_price NUMERIC(12, 2) NOT NULL, 
    quantity INT NOT NULL, 
    subtotal NUMERIC(12, 2) NOT NULL
);