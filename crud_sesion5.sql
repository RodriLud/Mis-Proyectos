use Negocios2024
go

/*Create table Insumos
(
idInsumo int primary key,
nomInsumo varchar (150) not null,
idProveedor int references tb_proveedores,
preUni decimal (10,2),
stock int
)
go*/


/*CREATE TABLE Proveedores (
	  IdProveedor int primary key,
  NomProveedor varchar(40) not null,
  DirProveedor varchar(60) not null,
  NomContacto varchar(80) not null,
  CargoContacto varchar(50) not null,
  idpais char(3) References paises,
  fonoProveedor varchar(15) not null,
  FaxProveedor varchar(15) not null
)
go

INSERT INTO Proveedores VALUES('1', 'Exotic Liquids', 'Charlotte Cooper', 'Gerente de compras', '49 Gilbert St.', '003', '(171) 555-2222', '')
INSERT INTO Proveedores VALUES('2', 'New Orleans Cajun Delights', 'Shelley Burke', 'Administrador de pedidos', 'P.O. Box 78934', '008','(100) 555-4822', '')
INSERT INTO Proveedores VALUES('3', 'Grandma Kellys Homestead', 'Regina Murphy', 'Representante de ventas', '707 Oxford Rd.', '001', '(313) 555-5735', '(313) 555-3349')
INSERT INTO Proveedores VALUES('4', 'Tokyo Traders', 'Yoshi Nagase', 'Gerente de marketing', '9-8 Sekimai\r\nMusashino-shi', '007', '(03) 3555-5011', '')
INSERT INTO Proveedores VALUES('5', 'Cooperativa de Quesos Las Cabras', 'Antonio del Valle Saavedra', 'Administrador de exportaciones', 'Calle del Rosal 4', '007', '(98) 598 76 54', '')
INSERT INTO Proveedores VALUES('6', 'Mayumis', 'Mayumi Ohno', 'Representante de marketing', '92 Setsuko\r\nChuo-ku', '004', '(06) 431-7877', '')
INSERT INTO Proveedores VALUES('7', 'Pavlova, Ltd.', 'Ian Devling', 'Gerente de marketing', '74 Rose St.\r\nMoonie Ponds', '008', '(03) 444-2343', '(03) 444-6588')
INSERT INTO Proveedores VALUES('8', 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Representante de ventas', '29 Kings Way', '003', '(161) 555-4448', '')
INSERT INTO Proveedores VALUES('9', 'PB Knäckebröd AB', 'Lars Peterson', 'Agente de ventas', 'Kaloadagatan 13', '009','031-987 65 43', '031-987 65 91')
INSERT INTO Proveedores VALUES('10', 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Gerente de marketing', 'Av. das Americanas 12.890', '003', '(11) 555 4640', '')
INSERT INTO Proveedores VALUES('11', 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Gerente de ventas', 'Tiergartenstraße 5', '002', '(010) 9984510', '')
INSERT INTO Proveedores VALUES('12', 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'Ger. marketing internacional', 'Bogenallee 51', '007', '(069) 992755', '')
INSERT INTO Proveedores VALUES('13', 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinador de mercados', 'Frahmredder 112a', '002', '(04721) 8714', '')
INSERT INTO Proveedores VALUES('14', 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Representante de ventas', 'Viale Dante, 75', '006', '(0544) 60323', '(0544) 60603')
INSERT INTO Proveedores VALUES('15', 'Norske Meierier', 'Beate Vileid', 'Gerente de marketing', 'Hatlevegen 5', '006', '(0)2-953010', '')
INSERT INTO Proveedores VALUES('16', 'Bigfoot Breweries', 'Cheryl Saylor', 'Repr. de cuentas regional', '3400 - 8th Avenue\r\nSuite 210', '009', '(503) 555-9931', '')
INSERT INTO Proveedores VALUES('17', 'Svensk Sjöföda AB', 'Michael Björn', 'Representante de ventas', 'Brovallavägen 231', '005', '08-123 45 67', '')
INSERT INTO Proveedores VALUES('18', 'Aux joyeux ecclesiastiques', 'Guylène Nodier', 'Gerente de ventas', '203, Rue des Francs-Bourgeois', '008', '(1) 03.83.00.68', '(1) 03.83.00.62')
INSERT INTO Proveedores VALUES('19', 'New England Seafood Cannery', 'Robb Merchant', 'Agente de cuentas al por mayor', 'Order Processing Dept.\r\n2100 Paul Revere Blvd.', '004',  '(617) 555-3267', '(617) 555-3389')
INSERT INTO Proveedores VALUES('20', 'Leka Trading', 'Chandra Leka', 'Propietario', '471 Serangoon Loop, Suite #402',  '001',  '555-8787', '')
INSERT INTO Proveedores VALUES('21', 'Lyngbysild', 'Niels Petersen', 'Gerente de ventas', 'Lyngbysild\r\nFiskebakken 10', '008', '43844108', '43844115')
INSERT INTO Proveedores VALUES('22', 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Gerente de contabilidad', 'Verkoop\r\nRijnweg 22', '008', '(12345) 1212', '(12345) 1210')
INSERT INTO Proveedores VALUES('23', 'Karkki Oy', 'Anne Heikkonen', 'Gerente de produccion', 'Valtakatu 12', '001',  '(953) 10956', '')
INSERT INTO Proveedores VALUES('24', 'Gday, Mate', 'Wendy Mackenzie', 'Representante de ventas', '170 Prince Edward Parade\r\nHunters Hill', '002',  '(02) 555-5914', '(02) 555-4873')
INSERT INTO Proveedores VALUES('25', 'Ma Maison', 'Jean-Guy Lauzon', 'Gerente de marketing', '2960 Rue St. Laurent', '004',  '(514) 555-9022', '')
INSERT INTO Proveedores VALUES('26', 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Administrador de pedidos', 'Via dei Gelsomini, 153', '008', '(089) 6547665', '(089) 6547667')
INSERT INTO Proveedores VALUES('27', 'Escargots Nouveaux', 'Marie Delamare', 'Gerente de ventas', '22, rue H. Voiron', '009',  '', '')
INSERT INTO Proveedores VALUES('28', 'Gai pâturage', 'Eliane Noz', 'Representante de ventas', 'Bat. B\r\n3, rue des Alpes', '007', '38.76.98.06', '38.76.98.58')
INSERT INTO Proveedores VALUES('29', 'Forêts derables', 'Chantal Goulet', 'Gerente de contabilidad', '148 rue Chasseur', '003', '(514) 555-2955', '(514) 555-2921')
go*/

create or alter proc usp_listar_Insumos
as
select * from Insumos
go

exec usp_listar_Insumos
go

create or alter proc usp_Cargar_Proveedores
as
select IdProveedor, NomProveedor
from Proveedores
go

create or alter proc usp_Insertar_Insumos
@idInsumo int,
@nomInsumo varchar (150),
@idProveedor int,
@preUni decimal (10,2),
@stock int
as
insert into Insumos
values (@idInsumo,@nomInsumo,@idProveedor,@preUni,@stock)
go

create or alter proc usp_Actualizar_Insumos
@idInsumo int,
@nomInsumo varchar (150),
@idProveedor int,
@preUni decimal (10,2),
@stock int
as
update Insumos
set nomInsumo=@nomInsumo, idProveedor=@idProveedor, preUni=@preUni,stock=@stock
where idInsumo=@idInsumo
go

create or alter proc usp_Eliminar_Insumos
@idInsumo int
as
delete Insumos
where idInsumo=@idInsumo
go