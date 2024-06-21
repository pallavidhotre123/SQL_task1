CREATE TABLE vegetables_shop (
    vegetable_id serial PRIMARY KEY,
    vegetable_name VARCHAR(50) NOT NULL,
    category VARCHAR(50),
    price int not null,
    stock_quantity INT,
    supplier VARCHAR(100)
)


select * from vegetables_shop

insert into vegetables_shop 
	(vegetable_name, category, price, stock_quantity, supplier) values 
    	('Carroot', 'Root Vegetable', 150, 150, 'Fresh Farms'),
    ('Tomato', 'Fruit Vegetable', 200, 200, 'Green Harvest'),
    ('Lettuce', 'Leafy Green', 180, 180, 'Organic Gardens'),
    ('Broccoli', 'Cruciferous', 120, 120, 'Farm Fresh Produce'),
    ('Bell Pepper', 'Fruit Vegetable', 180, 180, 'Sunny Valley Farms'),
    ('Spinach', 'Leafy Green', 160, 160, 'Nature''s Best'),
    ('Potato', 'Tuber Vegetable', 250, 250, 'Golden Fields'),
    ('Cucumber', 'Fruit Vegetable', 220, 220, 'Farm Fresh Produce'),
    ('Zucchini', 'Squash', 190, 190, 'Harvest Time Co.'),
    ('Onion', 'Bulb Vegetable', 200, 200, 'Fresh Farms')

copy vegetables_shop from 'D:\veg_shop.csv'  DELIMITER ',' CSV header

drop table vegetables_shop