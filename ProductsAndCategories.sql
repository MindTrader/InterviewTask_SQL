CREATE TABLE Products (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR(50)
);

INSERT INTO Products
VALUES
	('Рис'),
	('Греча'),
	('Тушёнка'),
	('Картофель'),
	('Фонарь'),
	('Батарейка'),
	('Брюки спортивные'),
	('Кроссовки'),
	('Рубашка'),
	('Джинсы женские');
	

CREATE TABLE Categories (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR(50)
);

INSERT INTO Categories
VALUES
	('Весовой товар'),
	('Крупы'),
	('Консервы'),
	('Овощи'),
	('Одежда'),
	('Брюки'),
	('Джинсы'),
	('Спортивный костюм');


CREATE TABLE ProductsAndCategories (
	ProductId INT NOT NULL FOREIGN KEY REFERENCES Products(Id),
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
);

INSERT INTO ProductsAndCategories
VALUES
	(1, 1),
	(1, 2),	
	(2, 1),
	(2, 2),
	(3, 3),
	(4, 1),
	(4, 4),
	(5, NULL),
	(6, NULL),
	(7, 5),
	(7, 6),
	(7, 8),
	(8, 8),
	(9, 5),
	(10, 5),
	(10, 7);

SELECT P.Name, C.Name
FROM Products P 
LEFT JOIN ProductsAndCategories PC ON P.Id = PC.ProductId 
LEFT JOIN Categories C ON PC.CategoryId = C.Id
ORDER BY P.Id;
