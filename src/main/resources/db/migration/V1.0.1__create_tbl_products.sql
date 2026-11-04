CREATE TABLE if not exists products ( 
    id SERIAL PRIMARY KEY, 
    category_id INT REFERENCES categories(id) ON DELETE RESTRICT, 
    name VARCHAR(100) NOT NULL, description TEXT, 
    base_price NUMERIC(12, 2) NOT NULL, 
    image_url VARCHAR(255), 
    is_active BOOLEAN DEFAULT TRUE, 
    is_preorder BOOLEAN DEFAULT FALSE, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);