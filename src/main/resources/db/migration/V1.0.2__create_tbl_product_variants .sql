CREATE TABLE if not exists product_variants ( 
    id SERIAL PRIMARY KEY, 
    product_id INT REFERENCES products(id) ON DELETE CASCADE, 
    variant_name VARCHAR(50) NOT NULL, -- e.g., '1 Ekor', '1/2 Ekor', 'Toples 500g'
    price NUMERIC(12, 2) NOT NULL 
);