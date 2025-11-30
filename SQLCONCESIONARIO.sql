CREATE DATABASE Concesionario;
GO

USE Concesionario;
GO


CREATE TABLE Marca (
    ID_Marca INT PRIMARY KEY,
    Nombre_Marca VARCHAR(20)
);

CREATE TABLE Modelo (
    ID_Modelo INT PRIMARY KEY,
    ID_Marca INT,
    Nombre_Modelo VARCHAR(20),
    Categoria_Carro VARCHAR(10),
    Tipo_Carroceria VARCHAR(30),
    FOREIGN KEY (ID_Marca) REFERENCES Marca(ID_Marca)
);

CREATE TABLE Especificaciones (
    ID_Especificaciones INT PRIMARY KEY,
    Motor DECIMAL(4,2),
    Transmision VARCHAR(20),
    Combustible VARCHAR(20),
    Kilometraje DECIMAL(9,4),
    Numero_puertas INT,
    Numero_pasajeros INT
);

CREATE TABLE Nuevo_Autos (
    ID_Autos INT PRIMARY KEY,
    ID_Modelo INT,
    ID_Especificaciones INT,
    Año INT,
    Color VARCHAR(30),
    Precio_Base DECIMAL(12,2),
    FOREIGN KEY (ID_Modelo) REFERENCES Modelo(ID_Modelo),
    FOREIGN KEY (ID_Especificaciones) REFERENCES Especificaciones(ID_Especificaciones)
);

CREATE TABLE CLIENTE (
    ID_Cliente INT PRIMARY KEY,
    Nombre_Cliente VARCHAR(50),
    Tipo_Documento VARCHAR(10),
    Num_Documento VARCHAR(15),
    Direccion_Cliente VARCHAR(50),
    ID_Ubicacion INT
);

CREATE TABLE UBICACION_CLIENTE (
    ID_Ubicacion INT PRIMARY KEY,
    Ciudad VARCHAR(30),
    Departamento VARCHAR(30),
    Pais VARCHAR(30)
);

ALTER TABLE CLIENTE
ADD FOREIGN KEY (ID_Ubicacion) REFERENCES UBICACION_CLIENTE(ID_Ubicacion);

CREATE TABLE CONTACTO_CLIENTE (
    ID_Contacto INT PRIMARY KEY,
    ID_Cliente INT,
    Email VARCHAR(50),
    Telefono VARCHAR(20),
    FOREIGN KEY (ID_Cliente) REFERENCES CLIENTE(ID_Cliente)
);

CREATE TABLE Sucursal (
    ID_Sucursal INT PRIMARY KEY,
    Nombre_Sucursal VARCHAR(30),
    Ciudad_Sucursal VARCHAR(30)
);

CREATE TABLE Vendedor_Normalizado (
    ID_Vendedor INT PRIMARY KEY,
    Nombre_Vendedor VARCHAR (50),
    Email_Vendedor VARCHAR(50),
    Telefono_Vendedor VARCHAR (20),
    Comision_Vendedor DECIMAL (10,2),
    ID_Sucursal INT,
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursal(ID_Sucursal)
);

CREATE TABLE Metodo_De_Pago (
    ID_Metodo_Pago INT PRIMARY KEY,
    Metodo VARCHAR(30)
);

CREATE TABLE Financiamiento (
    ID_Financiamiento INT PRIMARY KEY,
    ID_Metodo_Pago INT,
    Cuotas INT,
    Entidad_Financiera VARCHAR(50),
    Tasa_Interes DECIMAL(5,2),
    FOREIGN KEY (ID_Metodo_Pago) REFERENCES Metodo_De_Pago(ID_Metodo_Pago)
);

CREATE TABLE Garantia_Normalizada (
    ID_Garantia INT PRIMARY KEY,
    Meses_Garantia INT
);

CREATE TABLE Seguro (
    ID_Seguro INT PRIMARY KEY,
    ID_Garantia INT,
    Aseguradora VARCHAR(50),
    Valor_Seguro DECIMAL(10,2),
    FOREIGN KEY (ID_Garantia) REFERENCES Garantia_Normalizada(ID_Garantia)
);

CREATE TABLE Test_Drive_Normalizado (
    ID_Test_Drive INT PRIMARY KEY,
    Realizado VARCHAR(4),
    Fecha_Test_Drive VARCHAR(20),
    Observaciones VARCHAR(100)
);

CREATE TABLE Transportadora (
    ID_Transportadora INT PRIMARY KEY,
    Nombre_Transportadora VARCHAR(50),
    Telefono VARCHAR(20)
);

CREATE TABLE Envio_Test_Drive (
    ID_Envio INT PRIMARY KEY,
    ID_Test_Drive INT,
    ID_Transportadora INT,
    FOREIGN KEY (ID_Test_Drive) REFERENCES Test_Drive_Normalizado(ID_Test_Drive),
    FOREIGN KEY (ID_Transportadora) REFERENCES Transportadora(ID_Transportadora)
);

CREATE TABLE Accesorio (
    ID_Accesorio INT PRIMARY KEY,
    Nombre_Accesorio VARCHAR(50)
);

CREATE TABLE Auto_Accesorio (
    ID_Auto INT,
    ID_Accesorio INT,
    PRIMARY KEY (ID_Auto, ID_Accesorio),
    FOREIGN KEY (ID_Auto) REFERENCES Nuevo_Autos(ID_Autos),
    FOREIGN KEY (ID_Accesorio) REFERENCES Accesorio(ID_Accesorio)
);

CREATE TABLE Venta (
    ID_Venta INT PRIMARY KEY,
    ID_Cliente INT,
    ID_Vendedor INT,
    ID_Auto INT,
    ID_Metodo_Pago INT,
    ID_Garantia INT,
    Fecha_Venta DATE,
    Precio_Base DECIMAL(12,2),
    Descuento DECIMAL(12,2),
    FOREIGN KEY (ID_Cliente) REFERENCES CLIENTE(ID_Cliente),
    FOREIGN KEY (ID_Vendedor) REFERENCES Vendedor_Normalizado(ID_Vendedor),
    FOREIGN KEY (ID_Auto) REFERENCES Nuevo_Autos(ID_Autos),
    FOREIGN KEY (ID_Metodo_Pago) REFERENCES Metodo_De_Pago(ID_Metodo_Pago),
    FOREIGN KEY (ID_Garantia) REFERENCES Garantia_Normalizada(ID_Garantia)
);

CREATE TABLE Pago (
    ID_Pago INT PRIMARY KEY,
    ID_Venta INT,
    ID_Metodo_Pago INT,
    ID_Financiamiento INT NULL,
    Monto DECIMAL(12,2),
    Fecha_Pago DATE,
    FOREIGN KEY (ID_Venta) REFERENCES Venta(ID_Venta),
    FOREIGN KEY (ID_Metodo_Pago) REFERENCES Metodo_De_Pago(ID_Metodo_Pago),
    FOREIGN KEY (ID_Financiamiento) REFERENCES Financiamiento(ID_Financiamiento)
);

ALTER TABLE Venta
ADD Num_Pedido VARCHAR(20);

ALTER TABLE Venta
ADD Fecha_Pedido DATE;

INSERT INTO Marca (ID_Marca, Nombre_Marca) VALUES
(1, 'Toyota'),
(2, 'Honda'),
(3, 'Mazda'),
(4, 'Chevrolet'),
(5, 'Nissan');

INSERT INTO Modelo (ID_Modelo, ID_Marca, Nombre_Modelo, Categoria_Carro, Tipo_Carroceria) VALUES
(1, 1, 'Corolla', 'Sedán', 'Sedán'),
(2, 2, 'Civic', 'Sedán', 'Sedán'),
(3, 3, 'Mazda 3', 'Sedán', 'Sedán'),
(4, 4, 'Spark', 'Hatchback', 'Hatchback'),
(5, 5, 'Sentra', 'Sedán', 'Sedán');

INSERT INTO Especificaciones (ID_Especificaciones, Motor, Transmision, Combustible, Kilometraje, Numero_puertas, Numero_pasajeros) VALUES
(1, 1.8, 'Automática', 'Gasolina', 0, 4, 5),
(2, 2.0, 'Manual', 'Gasolina', 0, 4, 5),
(3, 2.5, 'Automática', 'Gasolina', 5000, 4, 5),
(4, 1.4, 'Manual', 'Gasolina', 0, 5, 5),
(5, 1.8, 'CVT', 'Gasolina', 0, 4, 5);

INSERT INTO Nuevo_Autos (ID_Autos, ID_Modelo, ID_Especificaciones, Año, Color, Precio_Base) VALUES
(1, 1, 1, 2024, 'Blanco', 85000000),
(2, 2, 2, 2024, 'Negro', 95000000),
(3, 3, 3, 2023, 'Rojo', 90000000),
(4, 4, 4, 2023, 'Azul', 45000000),
(5, 5, 5, 2024, 'Plata', 88000000),
(6, 1, 1, 2024, 'Blanco', 85000000),
(7, 2, 2, 2024, 'Negro', 95000000),
(8, 3, 3, 2023, 'Rojo', 90000000),
(9, 4, 4, 2023, 'Azul', 45000000),
(10, 5, 5, 2024, 'Plata', 88000000);

INSERT INTO CLIENTE (ID_Cliente, Nombre_Cliente, Tipo_Documento, Num_Documento, Direccion_Cliente, ID_Ubicacion) VALUES
(1, 'Juan Pérez', 'CC', '1234567890', 'Calle 45 #23-10', 1),
(2, 'Ana García', 'CC', '9876543210', 'Carrera 70 #80-15', 2),
(3, 'Carlos López', 'CE', '1122334455', 'Avenida 6 #25-30', 3),
(4, 'María Rodríguez', 'CC', '5544332211', 'Calle 100 #15-20', 2),
(5, 'Pedro Sánchez', 'CC', '6677889900', 'Carrera 50 #45-30', 4);

INSERT INTO UBICACION_CLIENTE (ID_Ubicacion, Ciudad, Departamento, Pais) VALUES
(1, 'Medellín', 'Antioquia', 'Colombia'),
(2, 'Bogotá', 'Cundinamarca', 'Colombia'),
(3, 'Cali', 'Valle del Cauca', 'Colombia'),
(4, 'Barranquilla', 'Atlántico', 'Colombia');

INSERT INTO CONTACTO_CLIENTE (ID_Contacto, ID_Cliente, Email, Telefono) VALUES
(1, 1, 'juan.perez@email.com', '3001234567'),
(2, 2, 'ana.garcia@email.com', '3009876543'),
(3, 3, 'carlos.lopez@email.com', '3112345678'),
(4, 4, 'maria.rod@email.com', '3156789012'),
(5, 5, 'pedro.sanchez@email.com', '3201239876');

INSERT INTO Sucursal (ID_Sucursal, Nombre_Sucursal, Ciudad_Sucursal) VALUES
(1, 'Medellín Centro', 'Medellín'),
(2, 'Bogotá Norte', 'Bogotá'),
(3, 'Cali Sur', 'Cali');

INSERT INTO Vendedor_Normalizado (ID_Vendedor, Nombre_Vendedor, Email_Vendedor, Telefono_Vendedor, Comision_Vendedor, ID_Sucursal) VALUES
(1, 'María López', 'maria.lopez@carros.com', '3107654321', 5, 1),
(2, 'Carlos Ruiz', 'carlos.ruiz@carros.com', '3156789012', 5, 2),
(3, 'Laura Martínez', 'laura.martinez@carros.com', '3201234567', 5, 3);

INSERT INTO Metodo_De_Pago (ID_Metodo_Pago, Metodo) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta de Crédito'),
(3, 'Financiación'),
(4, 'Cheque');

INSERT INTO Financiamiento (ID_Financiamiento, ID_Metodo_Pago, Cuotas, Entidad_Financiera, Tasa_Interes) VALUES
(1, 3, 36, 'Bancolombia', 11),
(2, 3, 48, 'Davivienda', 12);

INSERT INTO Garantia_Normalizada (ID_Garantia, Meses_Garantia) VALUES
(1, 12);

INSERT INTO Seguro (ID_Seguro, ID_Garantia, Aseguradora, Valor_Seguro)
VALUES 
(1, 1, 'Seguros Bolivar', 2500000),  
(2, 1, 'Seguros Bolivar', 2500000),  
(3, 1, 'Seguros Bolivar', 2500000); 

INSERT INTO Test_Drive_Normalizado (ID_Test_Drive, Realizado, Fecha_Test_Drive, Observaciones) VALUES
(1, 'Sí', '25/01/2025', 'Test drive realizado con éxito'),
(2, 'No', 'N/A', 'No se realizó test drive');

INSERT INTO Transportadora (ID_Transportadora, Nombre_Transportadora, Telefono) VALUES
(1, 'Servientrega', '3001234567'),
(2, 'Coordinadora', '3107654321'),
(3, 'TCC', '3201234567'),
(4, 'Deprisa', '3301234567');

INSERT INTO Envio_Test_Drive (ID_Envio, ID_Test_Drive, ID_Transportadora) VALUES
(1, 1, 1),
(2, 2, 2);

INSERT INTO Accesorio (ID_Accesorio, Nombre_Accesorio) VALUES
(1, 'Alarma'),
(2, 'Vidrios Polarizados');

INSERT INTO Auto_Accesorio (ID_Auto, ID_Accesorio) VALUES
(1, 1),
(1, 2),
(3, 1),
(3, 2),
(6, 1),
(6, 2),
(9, 1),
(9, 2);

INSERT INTO Venta (ID_Venta, ID_Cliente, ID_Vendedor, ID_Auto, ID_Metodo_Pago, ID_Garantia, Fecha_Venta, Precio_Base, Descuento, Num_Pedido, Fecha_Pedido) VALUES
(1, 1, 1, 1, 1, 1, '2025-01-15', 85000000, 18000000, 'PED0001', '2025-01-15'),
(2, 2, 2, 2, 2, 1, '2025-01-16', 95000000, 0, 'PED0002', '2025-01-16'),
(3, 3, 3, 3, 3, 1, '2025-01-17', 45000000, 4500000, 'PED0003', '2025-01-17'),
(4, 4, 1, 4, 1, 1, '2025-01-18', 88000000, 0, 'PED0004', '2025-01-18'),
(5, 1, 2, 5, 2, 1, '2025-01-19', 90000000, 0, 'PED0005', '2025-01-19');

INSERT INTO Pago (ID_Pago, ID_Venta, ID_Metodo_Pago, ID_Financiamiento, Monto, Fecha_Pago) VALUES
(1, 1, 1, NULL, 85000000, '2025-01-18'),
(2, 2, 2, 1, 95000000, '2025-01-19'),
(3, 3, 3, 2, 45000000, '2025-01-20');



















