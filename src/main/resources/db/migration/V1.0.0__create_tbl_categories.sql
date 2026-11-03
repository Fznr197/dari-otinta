CREATE TABLE if not exists categories ( 
    id SERIAL PRIMARY KEY, 
    name VARCHAR(50) NOT NULL, 
    slug VARCHAR(50) UNIQUE NOT NULL 
);