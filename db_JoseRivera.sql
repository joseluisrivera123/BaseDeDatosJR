
CREATE TABLE Cliente (
    idClient int NOT NULL COMMENT 'Este campo es el identificador de cada cliente registrado.',
    nomClient varchar(70) NULL COMMENT 'Contiene los nombres del cliente',
    apeClient varchar(100) NULL COMMENT 'Contiene los apellidos del cliente.',
    dniClient char(8) NULL COMMENT 'Contiene el numero de dni del cliente.',
    dirClient varchar(100) NOT NULL COMMENT 'Contiene la dirección del domicilio.







',
    telf_client char(9) NOT NULL,
    cor_client varchar(50) NOT NULL,
    CONSTRAINT Cliente_pk PRIMARY KEY (idClient)
) COMMENT 'Esta tabla contiene  toda la imformación de los clientes.';

CREATE TABLE Productos (
    idProd int NOT NULL COMMENT 'Contiene el identidentificador del producto
',
    descProd varchar(150) NULL COMMENT 'Contiene la descripcion del producto.',
    precunitProd decimal(6,2) NULL COMMENT 'Contiene el precio unitario en soles Peruanos.',
    CONSTRAINT Productos_pk PRIMARY KEY (idProd)
) COMMENT 'Contiene toda la imformacion de los productos que se van a vender.';


CREATE TABLE VENTA_DETALLE (
    idVentDet int NOT NULL COMMENT 'Contiene el identificador de cada producto vendido.',
    idProd int NOT NULL COMMENT 'Identificador del producto que se esta vendiendo.',
    Venta_idVen char(4) NOT NULL,
    cant_Orden numeric(6,2) NOT NULL COMMENT 'Numero de compras.',
    CONSTRAINT VENTA_DETALLE_pk PRIMARY KEY (idVentDet)
) COMMENT 'Detalle de productos vendidos a los clientes.';


CREATE TABLE Venta (
    idVen char(4) NOT NULL COMMENT 'Contiene el identificador de cada venta, teniendo en cuenta que el codigo esta conformado por una leta y tres numeros.por ejm:V001',
    fecVen date NULL COMMENT 'Contiene la fecha que se realizo la venta.',
    idClient int NOT NULL COMMENT 'Identificador del cliente que voy a vender al producto.',
    CONSTRAINT Venta_pk PRIMARY KEY (idVen)
) COMMENT 'Contiene los datos referentes al cliente y fecha de ventas.';

ALTER TABLE VENTA_DETALLE ADD CONSTRAINT VENTA_DETALLE_Productos FOREIGN KEY VENTA_DETALLE_Productos (idProd)
    REFERENCES Productos (idProd);
    
ALTER TABLE VENTA_DETALLE ADD CONSTRAINT VENTA_DETALLE_Venta FOREIGN KEY VENTA_DETALLE_Venta (Venta_idVen)
    REFERENCES Venta (idVen);


ALTER TABLE Venta ADD CONSTRAINT Venta_Cliente FOREIGN KEY Venta_Cliente (idClient)
    REFERENCES Cliente (idClient);


