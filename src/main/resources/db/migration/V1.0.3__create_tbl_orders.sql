CREATE TABLE if not exists orders ( 
    id BIGSERIAL PRIMARY KEY,
    order_number VARCHAR(30) UNIQUE NOT NULL, 
    customer_name VARCHAR(100) NOT NULL,
    customer_phone VARCHAR(25) NOT NULL, 
    delivery_address TEXT NOT NULL, delivery_date DATE NOT NULL, 
    delivery_method VARCHAR(50) NOT NULL, 
    special_notes TEXT, total_amount NUMERIC(12, 2) NOT NULL, 
    status VARCHAR(30) DEFAULT 'PENDING', 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);