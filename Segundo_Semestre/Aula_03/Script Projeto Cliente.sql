CREATE TABLE Clientes
 ( IdCliente   NUMERIC (10), 
   Nome        VARCHAR(60) NOT NULL,
   SexoCliente CHAR(01)  NOT NULL,
   email       VARCHAR(60) NOT NULL,

   CONSTRAINT PK_Cliente PRIMARY KEY (IdCliente), 
   CONSTRAINT CH_Cliente CHECK (SexoCliente IN ('F', 'M'))
  )

CREATE TABLE Documentos
 ( IdDocumento     NUMERIC (10), 
   IdCliente       NUMERIC (10),
   TipoDocumento   VARCHAR(25)  NOT NULL,
   NumeroDocumento VARCHAR(15) NOT NULL,

   CONSTRAINT PK_Documento PRIMARY KEY (IdDocumento), 
   CONSTRAINT FK_IdCliente FOREIGN KEY (IdCliente) REFERENCES Clientes (IdCliente)
  )

INSERT INTO Clientes VALUES(1, 'Jimi Hendrix', 'M', 'jimi@fiap.com.br')
INSERT INTO Clientes VALUES(2, 'Robert Plant', 'M', 'plant@fiap.com.br')
INSERT INTO Clientes VALUES(3, 'Amy Lee', 'F', 'amylee@fiap.com.br')

INSERT INTO Documentos VALUES(1, 1, 'RG', '44.888.123.4')
INSERT INTO Documentos VALUES(2, 2, 'CPF', '111.900.543-00')
INSERT INTO Documentos VALUES(3, 3, 'RG', '55.777.321.0')
