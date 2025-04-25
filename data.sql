-- ========================================
-- E-Commerce Database Sample Data
-- ========================================

-- Brands
INSERT INTO brand (brand_name) VALUES ('Nike'), ('Adidas'), ('Apple'), ('Samsung');

-- Product Categories
INSERT INTO product_category (category_name) VALUES ('Clothing'), ('Electronics'), ('Footwear');

-- Colors
INSERT INTO color (color_name) VALUES ('Red'), ('Blue'), ('Black'), ('White');

-- Size Categories
INSERT INTO size_category (category_name) VALUES ('Clothing Sizes'), ('Shoe Sizes');

-- Size Options
INSERT INTO size_option (size_category_id, size_name) VALUES
(1, 'S'), (1, 'M'), (1, 'L'), (2, '42'), (2, '44');

-- Products
INSERT INTO product (name, brand_id, base_price, category_id) VALUES
('Air Max Sneakers', 1, 120.00, 3),
('iPhone 15', 3, 999.99, 2),
('Running T-shirt', 2, 45.00, 1);

-- Product Images
INSERT INTO product_image (product_id, image_url) VALUES
(1, 'https://example.com/images/airmax.jpg'),
(2, 'https://example.com/images/iphone15.jpg'),
(3, 'https://example.com/images/tshirt.jpg');

-- Product Variations
INSERT INTO product_variation (product_id, size_category_id, color_id) VALUES
(1, 2, 3),  -- Air Max Sneakers, Shoe Sizes, Black
(3, 1, 1);  -- Running T-shirt, Clothing Sizes, Red

-- Product Items
INSERT INTO product_item (product_id, price, quantity_in_stock) VALUES
(1, 130.00, 50),
(2, 1050.00, 30),
(3, 50.00, 100);

-- Attribute Categories
INSERT INTO attribute_category (category_name) VALUES ('Physical'), ('Technical');

-- Attribute Types
INSERT INTO attribute_type (type_name) VALUES ('Text'), ('Number'), ('Boolean');

-- Product Attributes
INSERT INTO product_attribute (product_id, attribute_category_id, attribute_type_id, attribute_value) VALUES
(1, 1, 2, '1.2'),       -- Weight 1.2kg
(2, 2, 1, 'iOS 17'),    -- OS
(3, 1, 1, 'Polyester'); -- Material
