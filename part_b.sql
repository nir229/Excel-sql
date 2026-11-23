CREATE TABLE televisions(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	catalog_number TEXT NOT NULL UNIQUE,
	brand TEXT NOT NULL CHECK (brand IN ('Samsung', 'LG', 'Sony')),
	model TEXT NOT NULL,
	screen_size REAL NOT NULL,
	resolution TEXT NOT NULL CHECK (resolution IN ('4K', '8K', 'Full HD')),
	price REAL NOT NULL,
	stock_quantity INTEGER NOT NULL DEFAULT 0,
	release_year INTEGER NOT NULL,
	smart_tv TEXT NOT NULL CHECK (smart_tv IN ('Yes', 'No')) ,
	os TEXT DEFAULT NULL,
	panel_type TEXT NOT NULL CHECK (panel_type IN ('OLED', 'QLED', 'LED'))
);

INSERT INTO televisions(catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type)
VALUES ('SW-22', 'Samsung', 'w55ed', 55, '4K', 4000.0, 3, 2024, 'Yes', 'dede', 'OLED'),
('SW-33', 'LG', 'w44ed', 59, '8K', 5700.0, 7, 2025, 'No', NULL, 'QLED'),
('SW-44', 'Sony', 'w66ed', 70, 'Full HD', 9050.0, 2, 2026, 'Yes', 'dse', 'LED');