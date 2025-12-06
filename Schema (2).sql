- Customers table
CREATE TABLE customers (
    customer_id     INT PRIMARY KEY,
    first_name      VARCHAR(50) NOT NULL,
    last_name       VARCHAR(50) NOT NULL,
    email           VARCHAR(100) NOT NULL,
    country         VARCHAR(50),
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE UNIQUE INDEX ux_customers_email ON customers (email);
CREATE INDEX ix_customers_last_name ON customers (last_name);
 
-- Products table
CREATE TABLE products (
    product_id      INT PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    sku             VARCHAR(50) NOT NULL,
    category        VARCHAR(50),
    price           DECIMAL(10,2) NOT NULL,
    active          BOOLEAN DEFAULT TRUE
);
CREATE UNIQUE INDEX ux_products_sku ON products (sku);
CREATE INDEX ix_products_category ON products (category);
 
-- Orders table
CREATE TABLE orders (
    order_id        INT PRIMARY KEY,
    customer_id     INT NOT NULL,
    order_date      TIMESTAMP NOT NULL,
    status          VARCHAR(20) NOT NULL,
    total_amount    DECIMAL(12,2) NOT NULL,
    CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE INDEX ix_orders_customer_id ON orders (customer_id);
CREATE INDEX ix_orders_order_date ON orders (order_date);
 
-- Order items table
CREATE TABLE order_items (
    order_item_id   INT PRIMARY KEY,
    order_id        INT NOT NULL,
    product_id      INT NOT NULL,
    quantity        INT NOT NULL,
    unit_price      DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_order_items_order FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT fk_order_items_product FOREIGN KEY (product_id) REFERENCES products(product_id)
);
CREATE UNIQUE INDEX ux_order_items_order_product ON order_items (order_id, product_id);
CREATE INDEX ix_order_items_product_id ON order_items (product_id);