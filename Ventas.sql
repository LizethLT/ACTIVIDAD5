CREATE DATABASE CLIENTEVENTA


CREATE TABLE Venta (
    IdVenta INT IDENTITY(1,1) NOT NULL,
    FechaVenta DATE NOT NULL,
    TotalVenta DECIMAL(10, 2)NOT NULL,
	PRIMARY KEY (IdVenta)
);

CREATE TABLE Producto (
    IDProducto INT IDENTITY(1,1) NOT NULL,
    NombreProducto NVARCHAR(100) NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (IDProducto)
);

CREATE TABLE DetalleVenta (
    IDDetalleVenta INT IDENTITY(1,1) NOT NULL,
    IDVenta INT NOT NULL,
    IDProducto INT NOT NULL,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
    TotalDetalle DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (IDDetalleVenta),
    FOREIGN KEY (IDVenta) REFERENCES Venta(IdVenta),
    FOREIGN KEY (IDProducto) REFERENCES Producto(IDProducto)
);

INSERT INTO Venta (FechaVenta, TotalVenta)
VALUES 
    ('2024-04-11', 160.00),
    ('2024-04-12', 220.50),
    ('2024-04-13', 185.25),
    ('2024-04-14', 230.75),
    ('2024-04-15', 310.00),
    ('2024-04-16', 190.50),
    ('2024-04-17', 260.75),
    ('2024-04-18', 205.00),
    ('2024-04-19', 220.25),
    ('2024-04-20', 285.50);

SELECT * FROM Venta

INSERT INTO Producto (NombreProducto, PrecioUnitario)
VALUES 
    ('Chaqueta', 30.00),
    ('Jeans', 40.50),
    ('Botas', 55.25),
    ('Correa', 20.75),
    ('Gafas de sol', 15.00),
    ('Cinturón', 25.50),
    ('Bufanda', 18.75),
    ('Guantes de cuero', 9.50),
    ('Gorra de béisbol', 23.25),
    ('Paraguas', 12.50);

SELECT * FROM Producto
	
INSERT INTO DetalleVenta (IDVenta, IDProducto, Cantidad, PrecioUnitario, TotalDetalle)
VALUES 
    (1, 11, 2, 30.00, 60.00),
    (1, 12, 1, 40.50, 40.50),
    (2, 13, 1, 55.25, 55.25),
    (2, 14, 3, 20.75, 62.25),
    (3, 15, 2, 15.00, 30.00),
    (3, 16, 1, 25.50, 25.50),
    (4, 17, 2, 18.75, 37.50),
    (4, 18, 4, 9.50, 38.00),
    (5, 19, 1, 23.25, 23.25),
    (5, 20, 3, 12.50, 37.50);

select * from DetalleVenta
