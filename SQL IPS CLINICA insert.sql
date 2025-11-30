INSERT INTO Rol (ID_Rol, Nombre_Rol) VALUES
(1, 'Recursos Humanos'),
(2, 'Administrativo'),
(3, 'Soporte'),
(4, 'Enfermera'),
(5, 'Medico');

INSERT INTO Empleado (
    ID_Empleado, Nombre_Completo, Cedula, Correo_Electronico, Telefono, 
    Fecha_Nacimiento, Direccion, Nombre_Usuario, Contraseña, ID_Rol
) VALUES
(1, 'Laura Martínez', '1001234567', 'laura.martinez@ips.com', '3105671234', '1985-04-12', 'Calle 45 #23-10', 'lmartinez', 'Laura123*', 5),
(2, 'Andrés Pérez', '1012345678', 'andres.perez@ips.com', '3006547890', '1990-08-22', 'Carrera 50 #30-15', 'aperez', 'Andres123*', 4),
(3, 'María Gómez', '1023456789', 'maria.gomez@ips.com', '3205679876', '1988-11-01', 'Av 70 #12-25', 'mgomez', 'Maria123*', 2),
(4, 'Carlos Ruiz', '1034567890', 'carlos.ruiz@ips.com', '3123456789', '1980-02-15', 'Calle 80 #25-33', 'cruiz', 'Carlos123*', 1),
(5, 'Sandra López', '1045678901', 'sandra.lopez@ips.com', '3156789012', '1983-07-10', 'Carrera 20 #10-40', 'slopez', 'Sandra123*', 3);

INSERT INTO Paciente (ID_Paciente, Cedula, Nombre_Completo, Fecha_Nacimiento, Genero, Direccion, Telefono, Correo_Electronico)
VALUES
(1, '2001234567', 'Juan Pérez', '1980-01-15', 'Masculino', 'Calle 10 #20-30', '3001234567', 'juan.perez@mail.com'),
(2, '2002234567', 'Ana Torres', '1992-06-20', 'Femenino', 'Carrera 15 #10-25', '3204567890', 'ana.torres@mail.com'),
(3, '2003234567', 'Pedro López', '1985-03-05', 'Masculino', 'Av 30 #50-10', '3105678901', 'pedro.lopez@mail.com'),
(4, '2004234567', 'María García', '1990-12-09', 'Femenino', 'Calle 60 #12-50', '3156789012', 'maria.garcia@mail.com');

INSERT INTO Contacto_Emergencia (ID_Contacto, ID_Paciente, Nombre_Contacto, Relacion, Telefono_Contacto) VALUES
(1, 1, 'Sofía Pérez', 'Esposa', '3012345678'),
(2, 2, 'Carlos Torres', 'Hermano', '3023456789'),
(3, 3, 'Laura López', 'Madre', '3034567890'),
(4, 4, 'Andrés García', 'Padre', '3045678901');

INSERT INTO Compañia_Seguros (ID_Compañia, Nombre_Compañia) VALUES
(1, 'SURA'),
(2, 'Coomeva'),
(3, 'Sanitas');

INSERT INTO Seguro_Medico (ID_Seguro, ID_Paciente, ID_Compania, Numero_Poliza, Estado_Poliza, Vigencia_Poliza) VALUES
(1, 1, 1, 'POL123', 'Activa', '31/12/2025'),
(2, 2, 2, 'POL456', 'Activa', '30/11/2025'),
(3, 3, 3, 'POL789', 'Inactiva', '15/08/2024'),
(4, 4, 1, 'POL101', 'Activa', '31/12/2025');

INSERT INTO Factura (ID_Factura, ID_Paciente, ID_Seguro, ID_Medico, Fecha_Factura, Copago, Total) VALUES
(1, 1, 1, 1, '15/10/2025', 50000, 250000),
(2, 2, 2, 1, '20/10/2025', 50000, 320000),
(3, 3, 3, 1, '25/10/2025', 250000, 250000),
(4, 4, 4, 1, '27/10/2025', 0, 180000);

INSERT INTO Detalle_Factura (ID_Detalle, ID_Factura, Descripcion, Costo) VALUES
(1, 1, 'Consulta General', 100000),
(2, 1, 'Medicamento: Ibuprofeno', 150000),
(3, 2, 'Procedimiento: Curación', 320000),
(4, 3, 'Consulta sin seguro', 250000),
(5, 4, 'Chequeo médico general', 180000);

INSERT INTO Pago (ID_Pago, ID_Factura, Fecha_Pago, Monto, Metodo_Pago) VALUES
(1, 1, '16/10/2025', 50000, 'Efectivo'),
(2, 2, '21/10/2025', 50000, 'Tarjeta'),
(3, 3, '26/10/2025', 250000, 'Efectivo'),
(4, 4, '27/10/2025', 0, 'Seguro');

INSERT INTO Medicamento (ID_Medicamento, Nombre_Medicamento, Costo) VALUES
(1, 'Paracetamol', 10000),
(2, 'Amoxicilina', 15000),
(3, 'Ibuprofeno', 20000);

INSERT INTO Procedimiento (ID_Procedimiento, Nombre_Procedimiento, Costo) VALUES
(1, 'Curación', 100000),
(2, 'Sutura', 150000),
(3, 'Hospitalización', 500000);

INSERT INTO Especialidad (ID_Especialidad, Nombre_Especialidad) VALUES
(1, 'Cardiología'),
(2, 'Dermatología'),
(3, 'Medicina General');

INSERT INTO Ayuda_Diagnostica (ID_Ayuda, Nombre_Ayuda, Costo) VALUES
(1, 'Rayos X', 200000),
(2, 'Resonancia', 800000),
(3, 'Análisis de sangre', 100000);

INSERT INTO Orden (Numero_Orden, Cedula_Paciente, Cedula_Medico, Fecha_Creacion) VALUES
(1001, '2001234567', '1001234567', '14/10/2025'),
(1002, '2002234567', '1001234567', '19/10/2025'),
(1003, '2003234567', '1001234567', '24/10/2025');

INSERT INTO Orden_Medicamento (ID_Orden_Medicamento, Numero_Orden, Numero_Item, ID_Medicamento, Dosis, Duracion_Tratamiento, Costo) VALUES
(1, 1001, 1, 1, '500mg', '5 días', 10000),
(2, 1002, 1, 2, '250mg', '7 días', 15000),
(3, 1003, 1, 3, '400mg', '10 días', 20000);

INSERT INTO Orden_Procedimiento (ID_Orden_Procedimiento, Numero_Orden, Numero_Item, ID_Procedimiento, Repeticiones, Frecuencia, Costo, Requiere_Especialista, ID_Especialidad) VALUES
(1, 1001, 2, 1, 1, 'Única vez', 100000, 'No', 3),
(2, 1002, 2, 2, 1, 'Única vez', 150000, 'Sí', 2);

INSERT INTO Orden_Ayuda_Diagnostica (ID_Orden_Ayuda, Numero_Orden, Numero_Item, ID_Ayuda, Cantidad, Costo, Requiere_Especialista, ID_Especialidad) VALUES
(1, 1001, 3, 1, 1, 200000, 'No', 3),
(2, 1002, 3, 3, 1, 100000, 'Sí', 1);

INSERT INTO Signos_Vitales (ID_Signo, ID_Paciente, Presion_Arterial, Temperatura, Pulso, Nivel_Oxigeno) VALUES
(1, 1, '120/80', '36.5', '80', '98%'),
(2, 2, '115/75', '36.7', '82', '97%'),
(3, 3, '130/85', '37.0', '85', '96%'),
(4, 4, '118/78', '36.4', '78', '99%');

INSERT INTO Usuario (ID_Usuario, ID_Empleado, Nombre_Usuario, Contrasena)
VALUES
(1, 1, 'lmartinez', 'Laura123*'),
(2, 2, 'aperez', 'Andres123*'),
(3, 3, 'mgomez', 'Maria123*'),
(4, 4, 'cruiz', 'Carlos123*'),
(5, 5, 'slopez', 'Sandra123*');




