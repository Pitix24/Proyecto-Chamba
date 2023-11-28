-- drop database bd_autoland

create database bd_autoland
go
 
use bd_autoland
go

--tb_nacionalidad
create table tb_nacionalidad(
	codigo_nacionalidad char (5) not null,
	nacionalidad varchar(40))
go

alter table tb_nacionalidad
add constraint pk_nacionalidad primary key (codigo_nacionalidad)
go

insert into tb_nacionalidad values
('NA001','Peruana'),
('NA002','Argentina'),
('NA003','Chilena'),
('NA004','Boliviana'),
('NA005','Colombiana'),
('NA006','Ecuatoriana'),
('NA007','Venezolana'),
('NA008','Uruguaya'),
('NA009','Paraguaya'),
('NA010','Brasileña'),
('NA011','Mexicana'),
('NA012','Estadounidense'),
('NA013','Canadiense'),
('NA014','Española'),
('NA015','Italiana'),
('NA016','Francesa'),
('NA017','Alemana'),
('NA018','Inglesa'),
('NA019','Portuguesa'),
('NA020','Holandesa'),
('NA021','Belga'),
('NA022','Sueca'),
('NA023','Noruega'),
('NA024','Danesa'),
('NA025','Rusa'),
('NA026','China'),
('NA027','Japonesa'),
('NA028','Surcoreana'),
('NA029','India'),
('NA030','Norcoreana')
go

-- tb_departamento
create table tb_departamento (
	codigo_departamento char(5) not null,
	departamento varchar (30) not null)
go
 
alter table tb_departamento
add constraint pk_departamento
primary key (codigo_departamento)
go
 
insert into tb_departamento values
('DEP01', 'Amazonas'),
('DEP02', 'Áncash'),
('DEP03', 'Apurímac'),
('DEP04', 'Arequipa'),
('DEP05', 'Ayacucho'),
('DEP06', 'Cajamarca'),
('DEP07', 'Callao'),
('DEP08', 'Cusco'),
('DEP09', 'Huancavelica'),
('DEP10', 'Huánuco'),
('DEP11', 'Ica'),
('DEP12', 'Junín'),
('DEP13', 'La Libertad'),
('DEP14', 'Lambayeque'),
('DEP15', 'Lima'),
('DEP16', 'Loreto'),
('DEP17', 'Madre de Dios'),
('DEP18', 'Moquegua'),
('DEP19', 'Pasco'),
('DEP20', 'Piura'),
('DEP21', 'Puno'),
('DEP22', 'San Martín'),
('DEP23', 'Tacna'),
('DEP24', 'Tumbes'),
('DEP25', 'Ucayali')
go
 
-- tb_provincia
create table tb_provincia (
	codigo_provincia char(5) not null,
	provincia varchar(30) not null,
	provincia_codigo_departamento char(5) not null)
go
 
alter table tb_provincia
add constraint pk_provincia
primary key (codigo_provincia)
go
 
alter table tb_provincia
add constraint fk_provincia_departamento
foreign key (provincia_codigo_departamento)
references tb_departamento (codigo_departamento)
go
 
insert into tb_provincia values
('PR001', 'Chachapoyas', 'DEP01'),
('PR002', 'Bagua', 'DEP01'),
('PR003', 'Bongará', 'DEP01'),
('PR004', 'Huaraz', 'DEP02'),
('PR005', 'Casma', 'DEP02'),
('PR006', 'Huari', 'DEP02'),
('PR007', 'Abancay', 'DEP03'),
('PR008', 'Andahuaylas', 'DEP03'),
('PR009', 'Aymaraes', 'DEP03'),
('PR010', 'Arequipa', 'DEP04'),
('PR011', 'Camaná', 'DEP04'),
('PR012', 'Caylloma', 'DEP04'),
('PR013', 'Huamanga', 'DEP05'),
('PR014', 'Huanta', 'DEP05'),
('PR015', 'La Mar', 'DEP05'),
('PR016', 'Cajamarca', 'DEP06'),
('PR017', 'Cajabamba', 'DEP06'),
('PR018', 'Celendín', 'DEP06'),
('PR019', 'Callao', 'DEP07'),
('PR020', 'Cusco', 'DEP08'),
('PR021', 'Quispicanchi', 'DEP08'),
('PR022', 'Urubamba', 'DEP08'),
('PR023', 'Huancavelica', 'DEP09'),
('PR024', 'Tayacaja', 'DEP09'),
('PR025', 'Huaytará', 'DEP09'),
('PR026', 'Huánuco', 'DEP10'),
('PR027', 'Ambo', 'DEP10'),
('PR028', 'Dos de Mayo', 'DEP10'),
('PR029', 'Ica', 'DEP11'),
('PR030', 'Chincha', 'DEP11'),
('PR031', 'Nazca', 'DEP11'),
('PR032', 'Huancayo', 'DEP12'),
('PR033', 'Tarma', 'DEP12'),
('PR034', 'Jauja', 'DEP12'),
('PR035', 'Trujillo', 'DEP13'),
('PR036', 'Ascope', 'DEP13'),
('PR037', 'Virú', 'DEP13'),
('PR038', 'Chiclayo', 'DEP14'),
('PR039', 'Ferreñafe', 'DEP14'),
('PR040', 'Lambayeque', 'DEP14'),
('PR041', 'Lima', 'DEP15'),
('PR042', 'Cajatambo', 'DEP15'),
('PR043', 'Canta', 'DEP15'),
('PR044', 'Iquitos', 'DEP16'),
('PR045', 'Maynas', 'DEP16'),
('PR046', 'Alto Amazonas', 'DEP16'),
('PR047', 'Tambopata', 'DEP17'),
('PR048', 'Manu', 'DEP17'),
('PR049', 'Tahuamanu', 'DEP17'),
('PR050', 'Mariscal Nieto', 'DEP18'),
('PR051', 'Ilo', 'DEP18'),
('PR052', 'General Sánchez Cerro', 'DEP18'),
('PR053', 'Pasco', 'DEP19'),
('PR054', 'Daniel Alcides Carrión', 'DEP19'),
('PR055', 'Oxapampa', 'DEP19'),
('PR056', 'Piura', 'DEP20'),
('PR057', 'Sullana', 'DEP20'),
('PR058', 'Talara', 'DEP20'),
('PR059', 'Puno', 'DEP21'),
('PR060', 'Juliaca', 'DEP21'),
('PR061', 'San Román', 'DEP21'),
('PR062', 'Moyobamba', 'DEP22'),
('PR063', 'Tarapoto', 'DEP22'),
('PR064', 'Lamas', 'DEP22'),
('PR065', 'Tacna', 'DEP23'),
('PR066', 'Candarave', 'DEP23'),
('PR067', 'Jorge Basadre', 'DEP23'),
('PR068', 'Tumbes', 'DEP24'),
('PR069', 'Zarumilla', 'DEP24'),
('PR070', 'Contralmirante Villar', 'DEP24'),
('PR071', 'Coronel Portillo', 'DEP25'),
('PR072', 'Atalaya', 'DEP25'),
('PR073', 'Padre Abad', 'DEP25')
go
 
-- tb_distrito
create table tb_distrito (
	codigo_distrito char(5) not null,
	distrito varchar(30) not null,
	distrito_codigo_provincia char(5) not null)
go
 
alter table tb_distrito
add constraint pk_distrito
primary key (codigo_distrito)
go
 
alter table tb_distrito
add constraint fk_distrito_provincia
foreign key (distrito_codigo_provincia)
references tb_provincia (codigo_provincia)
go
 
insert into tb_distrito values
('D0001', 'Chachapoyas', 'PR001'),
('D0002', 'Leimebamba', 'PR001'),
('D0003', 'Huaraz', 'PR004'),
('D0004', 'Caraz', 'PR004'),
('D0005', 'Abancay', 'PR007'),
('D0006', 'Andahuaylas', 'PR007'),
('D0007', 'Arequipa', 'PR010'),
('D0008', 'Cayma', 'PR010'),
('D0009', 'Huamanga', 'PR013'),
('D0010', 'Huanta', 'PR013'),
('D0011', 'Cajamarca', 'PR016'),
('D0012', 'Cajabamba', 'PR016'),
('D0013', 'Callao', 'PR019'),
('D0014', 'Cusco', 'PR020'),
('D0015', 'San Jerónimo', 'PR020'),
('D0016', 'Huancavelica', 'PR023'),
('D0017', 'Acobamba', 'PR023'),
('D0018', 'Huánuco', 'PR026'),
('D0019', 'Amarilis', 'PR026'),
('D0020', 'Ica', 'PR029'),
('D0021', 'Chincha Alta', 'PR029'),
('D0022', 'Huancayo', 'PR032'),
('D0023', 'Chupaca', 'PR032'),
('D0024', 'Trujillo', 'PR035'),
('D0025', 'La Esperanza', 'PR035'),
('D0026', 'Chiclayo', 'PR038'),
('D0027', 'Lambayeque', 'PR038'),
('D0028', 'Lima', 'PR041'),
('D0029', 'San Isidro', 'PR041'),
('D0030', 'Independencia', 'PR041'),
('D0031', 'Iquitos', 'PR044'),
('D0032', 'Punchana', 'PR044'),
('D0033', 'Tambopata', 'PR047'),
('D0034', 'Inambari', 'PR047'),
('D0035', 'Moquegua', 'PR050'),
('D0036', 'Ilo', 'PR050'),
('D0037', 'Cerro de Pasco', 'PR053'),
('D0038', 'Yanahuanca', 'PR053'),
('D0039', 'Piura', 'PR056'),
('D0040', 'Sullana', 'PR056'),
('D0041', 'Puno', 'PR059'),
('D0042', 'Juliaca', 'PR059'),
('D0043', 'Moyobamba', 'PR062'),
('D0044', 'Tarapoto', 'PR062'),
('D0045', 'Tacna', 'PR065'),
('D0046', 'Candarave', 'PR065'),
('D0047', 'Tumbes', 'PR068'),
('D0048', 'Zarumilla', 'PR068'),
('D0049', 'Pucallpa', 'PR071'),
('D0050', 'Coronel Portillo', 'PR071')
go
 
-- tb_cliente
create table tb_cliente (
	codigo_cliente char(5) not null,
	cliente_codigo_distrito char(5) not null,
	nombre varchar(40) not null,
	ap_paterno varchar(30) not null,
	ap_materno varchar(30) not null,
	num_dni char(8) not null,
	fecha_nacimiento date,
    genero char(1) not null,
	direccion varchar(40) not null)
go
 
alter table tb_cliente
add constraint pk_cliente
primary key (codigo_cliente)
go
 
alter table tb_cliente 
add constraint fk_cliente_distrito
foreign key (cliente_codigo_distrito)
references tb_distrito (codigo_distrito)
go

insert into tb_cliente values
('C0001','D0001','Oscar Enrique','Salva','Contreras','41288139','1978-08-01','M','Jirón Junin 1183'),
('C0002','D0001','Luisa Alejandra','Lopez','García','44859635','1987-07-23','F','Jr. Sachapuyos 115'),
('C0003','D0003','Martín Roberto','Gomez','Fernandez','45875214','1989-03-15','M','Av. Gran Chavín 2110'),
('C0004','D0003','Maria Fernanda','Hernandez','Torres','49652535','1992-10-10','F','Jr. Los Jazmines 254'),
('C0005','D0005','Luis Miguel','Martinez','Alvarez','40152368','1975-02-28','M','Av. Los Amancaes 158'),
('C0006','D0006','Elena Judith','Rodriguez','Lopez','74917398','2000-05-15','F','Av. Malinas 900'),
('C0007','D0006','Oscar Javier','Ramirez','Gonzalez','47582653','1985-07-24','M','Jr. Los Girasoles 158'),
('C0008','D0008','Karla Mirella','Garcia','Fernandez','65896234','1995-09-11','F','Av. Héroes del Cenepa 365'),
('C0009','D0009','Pedro Iván','Mosquera','Lopez','44152369','1986-11-16','M','Calle Celis de la Neira 500'),
('C0010','D0010','Ana Rosa','Torres','Liñan','41102015','1975-01-15','F','Av. Centenario 395 Urb. Huanta'),
('C0011','D0010','José Angel','Sanchez','Perez','46032015','1979-12-01','M','Jr. Máximo Gómez 125'),
('C0012','D0012','Sandra Valeria','Perez','García','72596826','1999-06-20','F','Calle Celso Benigno Calderón 451'),
('C0013','D0013','Carlos Gabriel','Nacarino','Hernandez','69352012','1996-04-16','M','Av. Carlos Izaguirre 158'),
('C0014','D0014','Sofía Miranda','Gomez','Gomez','75896235','2002-05-30','F','Calle Carmen Quicllo 268'),
('C0015','D0015','Sergio Miguel','Garcia','Ramirez','42589637','1980-09-27','M','Av. Ramón Castilla 34'),
('C0016','D0015','Julia Yaleska','Garro','Espinoza','45124589','1985-09-15','F','Calle Velasco Astete 3527'),
('C0017','D0017','Anderson Daniel','Loayza','Fernandez','68596324','1999-10-26','M','Av. San Martin 9381'),
('C0018','D0018','Ana María','Candelario','Rojas','46329578','1988-11-11','F','Jirón Huallayco 221'),
('C0019','D0019','Jorge Mateo','Ipanaque','Mendoza','44775896','1987-12-02','M','Av. San Marcos 1100'),
('C0020','D0020','Lucía Mariela','Flores','Chávez','45562358','1996-09-30','F','Calle Huacachina 616'),
('C0021','D0021','Jhon Alejandro','Gonzales','Díaz','68362595','1998-04-29','M','Calle Antonio de Zela 117'),
('C0022','D0022','Marta Andrea','Ramos','Ramirez','48592610','1990-02-25','F','Jirón Tarapaca 766'),
('C0023','D0023','Diego Neil','Castillo','Herrera','73569665','2001-12-18','M','Calle Maria Miranda 498'),
('C0024','D0024','Laura Nicole','Barrera','Torres','49852145','1976-06-10','F','Av. Pedro Muñiz 569'),
('C0025','D0025','Andrés Mathew','Solís','Castro','72158963','2001-05-05','M','Av. Vista Hermosa 133'),
('C0026','D0026','Andrea Celestre','Paredes','Lagos','42589635','1980-10-25','F','Av. Manuel Arteaga 148'),
('C0027','D0027','Eliana María','Navarro','Campos','49562587','1993-04-30','M','Calle Federico Villarreal 1413'),
('C0028','D0028','Alessia Rosa','Rojas','Mendoza','71245968','2000-01-31','F','Jr. Manuel Telleria 155'),
('C0029','D0029','Carlos David','Vargas','León','48521020','1992-12-18','M','Av. Alvarez Calderón 1573'),
('C0030','D0029','Sara Geraldine','Huamán','Fernandez','70152368','2000-09-11','F','Pje. El Aromito 170'),
('C0031','D0030','Antonio Iam','Soto','Díaz','42453620','1981-10-24','M','Av. Las Almendras 151'),
('C0032','D0032','Juliana Rebeca','Liñan','Palacios','41458965','1976-06-05','F','Jr. Borja 122'),
('C0033','D0032','Ricardo Gerard','Cordova','Solano','45496524','1988-04-07','M','Jr. Panamá 968'),
('C0034','D0035','Lorena Pierinna','Rojas','Pineda','46239587','1990-11-23','F','Av. Huancavelica 1801'),
('C0035','D0035','Fernando Fabrizio','Cordova','Ordinola','43261587','1986-12-01','M','Calle Tacna 425'),
('C0036','D0036','Monica Nataly','Lozano','Sanchez','44758925','1987-09-20','F','Calle San Luis 186'),
('C0037','D0037','Enzo Valentino','Zambrano','Durán','43568998','1996-03-31','M','Av. Micaela Bastidas 1901'),
('C0038','D0037','Natalia Roselin','Montoya','Torres','48459624','1999-05-27','F','Calle Alfonso Rivera 94'),
('C0039','D0039','Hernan Walter','Ruiz','Rivas','72589635','2002-05-26','M','Av. Los Algarrobos 209'),
('C0040','D0039','Isabel Cielo','Martinez','Espinoza','46589110','1984-09-15','F','Av. Bello Horizonte 200'),
('C0041','D0040','Marcelo Florencio','Villanueva','Gomez','44768106','1987-02-01','M','Calle Jose de Lama 900'),
('C0042','D0042','Eva Selene','Quiroz','Palacios','49765100','1996-08-25','F','Jr. Mariano Melgas 211'),
('C0043','D0042','Adrian Alejando','Alvarado','Garro','71589635','2000-02-14','M','Calle Sandia 797'),
('C0044','D0044','Santiago Jefferson','Zapana','Samillán','43588995','1985-06-05','F','Jr. Manco Inca 218'),
('C0045','D0045','Emma Caeli','Silva','Aros','74589622','2003-01-15','F','Av. San Martin 990'),
('C0046','D0045','Javier Omar','Samaniego','Ramirez','45125124','1976-12-04','M','Calle Huáscar 155'),
('C0047','D0047','Karina Ariana','Lázaro','Figueroa','74917397','2003-10-24','F','Calle Diego de Almagro 240'),
('C0048','D0048','David Dante','Soto','Hidalgo','62358915','1997-06-19','M','Calle Maximiliano Moran 505'),
('C0049','D0049','Patricia Damitza','Tapia','Huamán','44465116','1984-10-17','F','Av. Play Wood 253'),
('C0050','D0049','Luis Wilver','Escobar','Molina','47756889','1989-06-29','M','Calle San Martín de Porras 264')
go

-- tb_telefono_cliente
create table tb_tecl (
	telefono_codigo_cliente char(5) not null,
	tipo char(1) not null,
	numero char(9) not null)
go
 
alter table tb_tecl
add constraint fk_telefono_cliente
foreign key (telefono_codigo_cliente)
references tb_cliente (codigo_cliente)
go

-- TIPO : P = personal, T = trabajo, C = casa
insert into tb_tecl values
('C0001','P','975413211'),
('C0001','C','016547890'), 
('C0002','P','954728109'),
('C0002','T','951234567'),
('C0002','C','016478902'),
('C0003','P','965837412'),
('C0004','P','978512345'),
('C0004','C','016732104'),
('C0004','T','952345678'),
('C0005','P','987623401'),
('C0005','C','016543219'),
('C0006','P','976541230'),
('C0006','T','956789012'),
('C0007','P','963210987'),
('C0008','P','954326789'),
('C0008','T','952345678'),
('C0008','C','016876543'),
('C0009','P','977845612'),
('C0009','C','016621090'),
('C0010','P','966234567'),
('C0011','P','985612345'),
('C0012','P','979876543'),
('C0012','T','954567890'),
('C0013','P','965432189'),
('C0014','P','964564321'),
('C0014','C','016543210'),
('C0014','T','950123456'),
('C0015','P','956789012'),
('C0016','P','943210987'),
('C0017','C','016498765'),
('C0018','P','958765432'),
('C0019','P','987654321'),
('C0020','P','956787654'),
('C0021','C','016765432'),
('C0022','P','973210987'),
('C0023','P','954321089'),
('C0024','T','953456789'),
('C0025','P','965432109'),
('C0026','T','954567890'),
('C0027','P','976543210'),
('C0028','P','987654321'),
('C0029','P','986662524'),
('C0030','C','016782109'),
('C0031','P','953684589'),
('C0032','T','947855123'),
('C0033','P','975411551'),
('C0034','P','968456932'),
('C0035','C','016709876');
go

-- tb_correo_cliente
create table tb_cocl (
	correo_codigo_cliente char(5) not null,
	tipo char(1) not null,
	correo char(50) not null)
go
 
alter table tb_cocl
add constraint fk_correo_cliente
foreign key (correo_codigo_cliente)
references tb_cliente (codigo_cliente)
go

-- TIPO : P = personal, T = trabajo
insert into tb_cocl values
('C0001', 'P', 'oscarsc@gmail.com'),
('C0002', 'P', 'luisita@gmail.com'),
('C0002', 'T', 'luisa.lopez@outlook.com'),
('C0003', 'P', 'martingz@gmail.com'),
('C0004', 'P', 'maria.hernandez@gmail.com'),
('C0005', 'P', 'lmartin@gmail.com'),
('C0005', 'T', 'luis.martinez@outlook.com'),
('C0006', 'P', 'elena.rodriguez@gmail.com'),
('C0007', 'P', 'oscar.ramirez@gmail.com'),
('C0008', 'P', 'karla.garcia@gmail.com'),
('C0009', 'P', 'pedrmsq@gmail.com'),
('C0009', 'T', 'pedro.mosquera@outlook.com'),
('C0010', 'P', 'ana.torres@gmail.com'),
('C0011', 'P', 'jose.sanchez@gmail.com'),
('C0012', 'P', 'sandra.perez@gmail.com'),
('C0013', 'P', 'carlos158@gmail.com'),
('C0013', 'T', 'carlos.nacarino@outlook.com'),
('C0014', 'P', 'sofia.gomez@gmail.com'),
('C0015', 'P', 'sergio.garcia@gmail.com'),
('C0016', 'P', 'julia.garro@gmail.com'),
('C0017', 'P', 'andersonxd@gmail.com'),
('C0017', 'T', 'anderson.loayza@gmail.com'),
('C0018', 'P', 'ana.candelario@gmail.com'),
('C0019', 'P', 'jorge.ipanaque@gmail.com'),
('C0020', 'P', 'lucia.flores@gmail.com'),
('C0021', 'P', 'jhon_ga@gmail.com'),
('C0021', 'T', 'jhon.gonzales@gmail.com'),
('C0022', 'P', 'marta.ramos@gmail.com'),
('C0023', 'P', 'diego.castillo@gmail.com'),
('C0024', 'P', 'laura.barrera@gmail.com'),
('C0025', 'P', 'andresss@gmail.com'),
('C0025', 'T', 'andres.solis@gmail.com'),
('C0026', 'P', 'andrea.paredes@gmail.com'),
('C0027', 'P', 'eliana.navarro@gmail.com'),
('C0028', 'P', 'alessia.rojas@gmail.com'),
('C0029', 'P', 'carlitoos@gmail.com'),
('C0029', 'T', 'carlos.vargas@gmail.com'),
('C0030', 'P', 'sara.huaman@gmail.com'),
('C0031', 'P', 'antonio.soto@gmail.com'),
('C0032', 'P', 'juliana.linan@gmail.com'),
('C0033', 'P', 'ricardocc@gmail.com'),
('C0033', 'T', 'ricardo.cordova@outlook.com'),
('C0034', 'P', 'lorena.rojas@gmail.com'),
('C0035', 'P', 'fernando.cordova@gmail.com'),
('C0036', 'P', 'monica.lozano@gmail.com'),
('C0037', 'P', 'enzozbn@gmail.com'),
('C0037', 'T', 'enzo.zambrano@gmail.com'),
('C0038', 'P', 'natalia.montoya@gmail.com'),
('C0039', 'P', 'hernan.ruiz@gmail.com'),
('C0040', 'P', 'isabel.martinez@gmail.com'),
('C0041', 'P', 'marcelovilla@gmail.com'),
('C0041', 'T', 'marcelo.villanueva@outlook.com'),
('C0042', 'P', 'eva.quiroz@gmail.com'),
('C0043', 'P', 'adrian.alvarado@gmail.com'),
('C0044', 'P', 'santiagoz@gmail.com'),
('C0044', 'T', 'santiago.zapana@gmail.com'),
('C0045', 'P', 'emma.silva@gmail.com'),
('C0046', 'P', 'javier.samaniego@gmail.com'),
('C0047', 'P', 'karina24@gmail.com'),
('C0047', 'T', 'karina.lazaro@gmail.com'),
('C0048', 'P', 'david.soto@gmail.com'),
('C0049', 'P', 'patriciaa201@gmail.com'),
('C0049', 'T', 'patriciatp@outlook.com'),
('C0050', 'P', 'luis.escobar@gmail.com');
go
 
-- tb_marca
create table tb_marca (
	codigo_marca char(5) not null,
	marca varchar(20) not null)
go
 
alter table tb_marca
add constraint pk_marca
primary key (codigo_marca)
go
 
insert into tb_marca values
('MA001', 'Ford'),
('MA002', 'Nissan'),
('MA003', 'Toyota'),
('MA004', 'Volkswagen'),
('MA005', 'Chevrolet'),
('MA006', 'Honda'),
('MA007', 'BMW'),
('MA008', 'Mercedes-Benz'),
('MA009', 'Ferrari'),
('MA010', 'Hyundai'),
('MA011', 'Kia'),
('MA012', 'Renault'),
('MA013', 'Mitsubishi'),
('MA014', 'Subaru'),
('MA015', 'Mazda'),
('MA016', 'Peugeot'),
('MA017', 'Volvo'),
('MA018', 'Land Rover'),
('MA019', 'Jaguar'),
('MA020', 'Jeep'),
('MA021', 'Audi'),
('MA022', 'Lexus'),
('MA023', 'Porsche'),
('MA024', 'Acura'),
('MA025', 'Infiniti'),
('MA026', 'Maserati'),
('MA027', 'Bentley'),
('MA028', 'Lamborghini'),
('MA029', 'Rolls-Royce'),
('MA030', 'Bugatti'),
('MA031', 'Alfa Romeo'),
('MA032', 'McLaren'),
('MA033', 'Aston Martin'),
('MA034', 'Lotus'),
('MA035', 'Tesla')
go
  
-- tb_categoria
create table tb_categoria (
	codigo_categoria char(5) not null,
	categoria varchar(40) not null)
go
 
alter table tb_categoria
add constraint pk_categoria
primary key (codigo_Categoria)
go
 
insert into tb_categoria values
('CA001', 'Deportivo'),
('CA002', 'SUV'),
('CA003', 'Compacto'),
('CA004', 'Sedán'),
('CA005', 'Hatchback'),
('CA006', 'PickUp'),
('CA007', 'Convertible'),
('CA008', 'MiniVan'),
('CA009', 'Todoterreno'),
('CA010', 'Coupé'),
('CA011', 'Furgoneta'),
('CA012', 'Eléctrico'),
('CA013', 'Híbrido'),
('CA014', 'Lujo'),
('CA015', 'Económico'),
('CA016', 'Deportivo de lujo'),
('CA017', 'Familiar'),
('CA018', 'Subcompacto'),
('CA019', 'Deportivo compacto'),
('CA020', 'Descapotable'),
('CA021', 'Crossover'),
('CA022', 'Ejecutivo'),
('CA023', 'Turismo'),
('CA024', 'Familiar compacto'),
('CA025', 'Hatchback deportivo'),
('CA026', 'Monovolumen'),
('CA027', 'SUV compacto'),
('CA028', 'Compacto premium'),
('CA029', 'Subcompacto premium'),
('CA030', 'Lujo deportivo'),
('CA031', 'Berlina'),
('CA032', 'SUV de lujo'),
('CA033', 'PickUp compacta'),
('CA034', 'Deportivo subcompacto'),
('CA035', 'Turismo compacto'),
('CA036', 'Ejecutivo de lujo'),
('CA037', 'SUV deportivo'),
('CA038', 'Crossover de lujo'),
('CA039', 'Deportivo de alta gama'),
('CA040', 'Microcoche'),
('CA041', 'Off-road'),
('CA042', 'Gran turismo'),
('CA043', 'Familiar deportivo'),
('CA044', 'Camioneta'),
('CA045', 'SUV subcompacta'),
('CA046', 'Convertible de lujo'),
('CA047', 'Hatchback subcompacto premium'),
('CA048', 'Económico deportivo'),
('CA049', 'Familiar de lujo'),
('CA050', 'Coupé deportivo')
go
  
-- tb_modelo
create table tb_modelo (
	codigo_modelo char(5) not null,
	modelo varchar(40) not null,
	modelo_codigo_marca char(5) not null)
go
 
alter table tb_modelo
add constraint pk_modelo
primary key (codigo_modelo)
go
 
alter table tb_modelo
add constraint fk_modelo_marca
foreign key (modelo_codigo_marca)
references tb_marca (codigo_marca)
go
 
insert into tb_modelo values
('ML001', 'Mustang GT', 'MA001'),
('ML002', 'RAV4 HybridLE', 'MA002'),
('ML003', 'BMW 740i', 'MA003'),
('ML004', 'Nivus Line', 'MA004'),
('ML005', 'Chevrolet Camaro', 'MA005'),
('ML006', 'Kia Seltos', 'MA011'),
('ML007', 'Renault Duster', 'MA012'),
('ML008', 'Mitsubishi Outlander', 'MA013'),
('ML009', 'Subaru Impreza', 'MA014'),
('ML010', 'Mazda CX-5', 'MA015'),
('ML011', 'Peugeot 3008', 'MA016'),
('ML012', 'Volvo XC60', 'MA017'),
('ML013', 'Range Rover Sport', 'MA018'),
('ML014', 'Jaguar F-PACE', 'MA019'),
('ML015', 'Jeep Wrangler', 'MA020'),
('ML016', 'Nissan Qashqai', 'MA002'),
('ML017', 'Ford EcoSport', 'MA001'),
('ML018', 'Volkswagen Tiguan', 'MA004'),
('ML019', 'Chevrolet Equinox', 'MA005'),
('ML020', 'Honda Civic', 'MA006'),
('ML021', 'Toyota Corolla', 'MA003'),
('ML022', 'Volkswagen Gol', 'MA004'),
('ML023', 'Chevrolet Spark', 'MA005'),
('ML024', 'Honda CR-V', 'MA006'),
('ML025', 'BMW X5', 'MA007'),
('ML026', 'Mercedes-Benz C-Class', 'MA008'),
('ML027', 'Ferrari 488 GTB', 'MA009'),
('ML028', 'Hyundai Tucson', 'MA010'),
('ML029', 'Kia Rio', 'MA011'),
('ML030', 'Renault Clio', 'MA012'),
('ML031', 'Mitsubishi Mirage', 'MA013'),
('ML032', 'Subaru Crosstrek', 'MA014'),
('ML033', 'Mazda3', 'MA015'),
('ML034', 'Peugeot 208', 'MA016'),
('ML035', 'Volvo S60', 'MA017'),
('ML036', 'Range Rover Evoque', 'MA018'),
('ML037', 'Jaguar XE', 'MA019'),
('ML038', 'Jeep Grand Cherokee', 'MA020'),
('ML039', 'Nissan Sentra', 'MA002'),
('ML040', 'Ford Fiesta', 'MA001'),
('ML041', 'Volkswagen Polo', 'MA004'),
('ML042', 'Chevrolet Aveo', 'MA005'),
('ML043', 'Honda Fit', 'MA006'),
('ML044', 'BMW 3 Series', 'MA007'),
('ML045', 'Mercedes-Benz E-Class', 'MA008'),
('ML046', 'Ferrari Portofino', 'MA009'),
('ML047', 'Hyundai Santa Fe', 'MA010'),
('ML048', 'Kia Sportage', 'MA011'),
('ML049', 'Renault Megane', 'MA012'),
('ML050', 'Mitsubishi Lancer', 'MA013'),
('ML051', 'Subaru Outback', 'MA014'),
('ML052', 'Mazda CX-9', 'MA015'),
('ML053', 'Peugeot 508', 'MA016'),
('ML054', 'Volvo XC90', 'MA017'),
('ML055', 'Range Rover Velar', 'MA018'),
('ML056', 'Jaguar I-PACE', 'MA019'),
('ML057', 'Jeep Compass', 'MA020'),
('ML058', 'Audi A3', 'MA021'),
('ML059', 'Lexus RX', 'MA022'),
('ML060', 'Porsche 911', 'MA023'),
('ML061', 'Acura MDX', 'MA024'),
('ML062', 'Infiniti Q50', 'MA025'),
('ML063', 'Maserati Ghibli', 'MA026'),
('ML064', 'Bentley Continental GT', 'MA027'),
('ML065', 'Lamborghini Aventador', 'MA028'),
('ML066', 'Rolls-Royce Phantom', 'MA029'),
('ML067', 'Bugatti Chiron', 'MA030'),
('ML068', 'Alfa Romeo Giulia', 'MA031'),
('ML069', 'McLaren 720S', 'MA032'),
('ML070', 'Aston Martin Vantage', 'MA033'),
('ML071', 'Lotus Evora', 'MA034'),
('ML072', 'Tesla Model 3', 'MA035'),
('ML073', 'Ford Explorer', 'MA001'),
('ML074', 'Nissan Altima', 'MA002'),
('ML075', 'Toyota Highlander', 'MA003'),
('ML076', 'Volkswagen Passat', 'MA004'),
('ML077', 'Chevrolet Malibu', 'MA005'),
('ML078', 'Kia Soul', 'MA011'),
('ML079', 'Renault Koleos', 'MA012'),
('ML080', 'Mitsubishi Eclipse', 'MA013'),
('ML081', 'Subaru Legacy', 'MA014'),
('ML082', 'Mazda MX-5 Miata', 'MA015'),
('ML083', 'Peugeot 308', 'MA016'),
('ML084', 'Volvo V60', 'MA017'),
('ML085', 'Range Rover Discovery', 'MA018'),
('ML086', 'Jaguar XJ', 'MA019'),
('ML087', 'Jeep Cherokee', 'MA020'),
('ML088', 'Audi Q5', 'MA021'),
('ML089', 'Lexus NX', 'MA022'),
('ML090', 'Porsche Cayenne', 'MA023'),
('ML091', 'Acura NSX', 'MA024'),
('ML092', 'Infiniti QX60', 'MA025'),
('ML093', 'Maserati Levante', 'MA026'),
('ML094', 'Bentley Bentayga', 'MA027'),
('ML095', 'Lamborghini Huracán', 'MA028'),
('ML096', 'Rolls-Royce Cullinan', 'MA029'),
('ML097', 'Bugatti Veyron', 'MA030'),
('ML098', 'Alfa Romeo Stelvio', 'MA031'),
('ML099', 'McLaren 570S', 'MA032'),
('ML100', 'Aston Martin DB11', 'MA033'),
('ML101', 'Ford Fusion', 'MA001'),
('ML102', 'Nissan Rogue', 'MA002'),
('ML103', 'Toyota Camry', 'MA003'),
('ML104', 'Volkswagen Jetta', 'MA004'),
('ML105', 'Chevrolet Silverado', 'MA005'),
('ML106', 'Kia Optima', 'MA011'),
('ML107', 'Renault Logan', 'MA012'),
('ML108', 'Mitsubishi Pajero', 'MA013'),
('ML109', 'Subaru Forester', 'MA014'),
('ML110', 'Mazda6', 'MA015'),
('ML111', 'Peugeot 2008', 'MA016'),
('ML112', 'Volvo S90', 'MA017'),
('ML113', 'Range Rover Defender', 'MA018'),
('ML114', 'Jaguar E-PACE', 'MA019'),
('ML115', 'Jeep Compass', 'MA020'),
('ML116', 'Audi A4', 'MA021'),
('ML117', 'Lexus GS', 'MA022'),
('ML118', 'Porsche Panamera', 'MA023'),
('ML119', 'Acura RDX', 'MA024'),
('ML120', 'Infiniti QX80', 'MA025'),
('ML121', 'Maserati Quattroporte', 'MA026'),
('ML122', 'Bentley Flying Spur', 'MA027'),
('ML123', 'Lamborghini Urus', 'MA028'),
('ML124', 'Rolls-Royce Ghost', 'MA029'),
('ML125', 'Bugatti EB110', 'MA030'),
('ML126', 'Alfa Romeo 4C', 'MA031'),
('ML127', 'McLaren 650S', 'MA032'),
('ML128', 'Aston Martin DBS', 'MA033'),
('ML129', 'Lotus Elise', 'MA034'),
('ML130', 'Tesla Model Y', 'MA035'),
('ML131', 'Ford Edge', 'MA001'),
('ML132', 'Nissan Maxima', 'MA002'),
('ML133', 'Toyota Prius', 'MA003'),
('ML134', 'Volkswagen Golf', 'MA004'),
('ML135', 'Chevrolet Tahoe', 'MA005'),
('ML136', 'Kia Telluride', 'MA011'),
('ML137', 'Renault Twingo', 'MA012'),
('ML138', 'Mitsubishi Mirage G4', 'MA013'),
('ML139', 'Subaru XV', 'MA014'),
('ML140', 'Mazda CX-30', 'MA015'),
('ML141', 'Peugeot 3008', 'MA016'),
('ML142', 'Volvo XC40', 'MA017'),
('ML143', 'Range Rover Vogue', 'MA018'),
('ML144', 'Jaguar XK', 'MA019'),
('ML145', 'Jeep Renegade', 'MA020'),
('ML146', 'Audi Q3', 'MA021'),
('ML147', 'Lexus UX', 'MA022'),
('ML148', 'Porsche Macan', 'MA023'),
('ML149', 'Acura RLX', 'MA024'),
('ML150', 'Infiniti QX50', 'MA025')
 go

-- tb_cobertura
create table tb_cobertura (
	codigo_cobertura char(5) not null,
	cobertura varchar(100) not null)
go
 
alter table tb_cobertura
add constraint pk_cobertura
primary key (codigo_cobertura)
go
 
insert into tb_cobertura values
('CB001', 'Seguro contra Robo'),
('CB002', 'Cobertura Amplia'),
('CB003', 'Seguro de Colisión Total'),
('CB004', 'Seguro de Conductor Designado'),
('CB005', 'Cobertura para Flotas'),
('CB006', 'Cobertura de Choque de Aparcamiento'),
('CB007', 'Seguro de Auto de Alquiler'),
('CB008', 'Cobertura de Asistencia en Viajes para Automóviles'),
('CB009', 'Seguro de Auto Antiguo/Clásico'),
('CB010', 'Cobertura de Daños por Actos Vandalismo'),
('CB011', 'Seguro de Auto para Jóvenes Conductores'),
('CB012', 'Cobertura de Reemplazo de Llantas'),
('CB013', 'Seguro de Auto para Viajes por Carretera'),
('CB014', 'Cobertura de Pérdida de Uso de Vehículo'),
('CB015', 'Seguro de Auto para Transporte por Aplicación'),
('CB016', 'Cobertura de Daños por Caza y Fauna Salvaje'),
('CB017', 'Seguro de Auto para Vehículos Comerciales'),
('CB018', 'Cobertura de Accidentes de Pasajeros'),
('CB019', 'Seguro de Auto para Entrega a Domicilio'),
('CB020', 'Cobertura de Equipos y Accesorios Personalizados'),
('CB021', 'Seguro de Auto para Transporte de Mercancías'),
('CB022', 'Cobertura de Responsabilidad Civil de Conductores no Autorizados'),
('CB023', 'Seguro de Auto para Autos Eléctricos'),
('CB024', 'Cobertura de Robo de Partes del Vehículo'),
('CB025', 'Seguro de Auto para Camiones Pesados'),
('CB026', 'Cobertura de Pérdida Total por Accidente'),
('CB027', 'Seguro de Auto para Autos Clásicos'),
('CB028', 'Cobertura de Defensa Legal'),
('CB029', 'Seguro de Auto para Viajes Internacionales'),
('CB030', 'Cobertura de Daños por Fenómenos Naturales')
go
 
-- tb_compañia
create table tb_compañia  (
codigo_compañia char(5) not null,
compañia varchar (30) not null)
go
 
alter table tb_compañia
add constraint pk_compañia
primary key (codigo_compañia)
go

insert into tb_compañia values
('CM001', 'Rimac Seguros'),
('CM002', 'Pacífico Seguros'),
('CM003', 'La Positiva Seguros'),
('CM004', 'MAPFRE Seguros'),
('CM005', 'Interseguro'),
('CM006', 'HDI Seguros'),
('CM007', 'Chubb Seguros'),
('CM008', 'RCI Seguros'),
('CM009', 'Protecta Seguros'),
('CM010', 'Mapfre La Positiva'),
('CM011', 'BCP Seguros'),
('CM012', 'Scotiabank Seguros'),
('CM013', 'BBVA Seguros'),
('CM014', 'Saga Falabella Seguros'),
('CM015', 'Sura Seguros')
go

-- tb_vehiculo
create table tb_vehiculo (
	codigo_vehiculo char(5) not null,
	vehiculo_codigo_modelo char(5) not null,
	vehiculo_codigo_categoria char(5) not null,
	estado char(1) not null,
	año int,
	costo int)
go
 
alter table tb_vehiculo
add constraint pk_vehiculo
primary key (codigo_vehiculo)
go
 
alter table tb_vehiculo
add constraint fk_vehiculo_modelo
foreign key (vehiculo_codigo_modelo)
references tb_modelo (codigo_modelo)
go
 
alter table tb_vehiculo
add constraint fk_vehiculo_categoria
foreign key (vehiculo_codigo_categoria)
references tb_categoria (codigo_categoria)
go
 
insert into tb_vehiculo values
('A1001', 'ML001', 'CA001', 'N', 2022, 95000),
('A1002', 'ML002', 'CA002', 'N', 2020, 75000),
('A1003', 'ML003', 'CA003', 'U', 2013, 85000),
('A1004', 'ML004', 'CA004', 'N', 2022, 96000),
('A1005', 'ML005', 'CA005', 'U', 2015, 72000),
('A1006', 'ML006', 'CA006', 'N', 2022, 65000),
('A1007', 'ML007', 'CA007', 'S', 2017, 85000),
('A1008', 'ML008', 'CA008', 'U', 2010, 105000),
('A1009', 'ML009', 'CA009', 'N', 2021, 110000),
('A1010', 'ML010', 'CA010', 'U', 2011, 73000),
('A1011', 'ML011', 'CA011', 'N', 2022, 48000),
('A1012', 'ML012', 'CA012', 'S', 2018, 89000),
('A1013', 'ML013', 'CA013', 'S', 2018, 95000),
('A1014', 'ML014', 'CA014', 'N', 2021, 87000),
('A1015', 'ML015', 'CA015', 'N', 2023, 72000),
('A1016', 'ML016', 'CA016', 'U', 2015, 68000),
('A1017', 'ML017', 'CA017', 'N', 2023, 110000),
('A1018', 'ML018', 'CA018', 'U', 2014, 98000),
('A1019', 'ML019', 'CA019', 'U', 2014, 89000),
('A1020', 'ML020', 'CA020', 'N', 2023, 82000),
('A1021', 'ML001', 'CA021', 'U', 2012, 55000),
('A1022', 'ML002', 'CA022', 'S', 2018, 42000),
('A1023', 'ML003', 'CA023', 'S', 2016, 68000),
('A1024', 'ML004', 'CA024', 'U', 2015, 72000),
('A1025', 'ML005', 'CA025', 'U', 2014, 62000),
('A1026', 'ML006', 'CA026', 'U', 2013, 58000),
('A1027', 'ML007', 'CA027', 'U', 2011, 75000),
('A1028', 'ML008', 'CA028', 'S', 2017, 89000),
('A1029', 'ML009', 'CA029', 'U', 2010, 95000),
('A1030', 'ML010', 'CA030', 'U', 2012, 67000),
('A1031', 'ML011', 'CA031', 'N', 2022, 48000),
('A1032', 'ML012', 'CA032', 'N', 2021, 89000),
('A1033', 'ML013', 'CA033', 'N', 2020, 95000),
('A1034', 'ML014', 'CA034', 'S', 2019, 87000),
('A1035', 'ML015', 'CA035', 'N', 2020, 72000),
('A1036', 'ML016', 'CA036', 'N', 2021, 68000),
('A1037', 'ML017', 'CA037', 'N', 2022, 110000),
('A1038', 'ML018', 'CA038', 'S', 2017, 98000),
('A1039', 'ML019', 'CA039', 'S', 2018, 89000),
('A1040', 'ML020', 'CA040', 'U', 2013, 82000),
('A1041', 'ML021', 'CA041', 'U', 2010, 52000),
('A1042', 'ML022', 'CA042', 'U', 2014, 87000),
('A1043', 'ML023', 'CA043', 'U', 2015, 93000),
('A1044', 'ML024', 'CA044', 'N', 2023, 96000),
('A1045', 'ML025', 'CA045', 'S', 2017, 72000),
('A1046', 'ML026', 'CA046', 'S', 2017, 68000),
('A1047', 'ML027', 'CA047', 'N', 2022, 110000),
('A1048', 'ML028', 'CA048', 'N', 2021, 98000),
('A1049', 'ML029', 'CA049', 'N', 2022, 89000),
('A1050', 'ML030', 'CA050', 'U', 2015, 82000),
('A1051', 'ML031', 'CA001', 'N', 2022, 95000),
('A1052', 'ML032', 'CA002', 'N', 2020, 75000),
('A1053', 'ML033', 'CA003', 'U', 2013, 85000),
('A1054', 'ML034', 'CA004', 'N', 2022, 96000),
('A1055', 'ML035', 'CA005', 'U', 2015, 72000),
('A1056', 'ML036', 'CA006', 'N', 2022, 65000),
('A1057', 'ML037', 'CA007', 'S', 2017, 85000),
('A1058', 'ML038', 'CA008', 'U', 2010, 105000),
('A1059', 'ML039', 'CA009', 'N', 2021, 110000),
('A1060', 'ML040', 'CA010', 'U', 2011, 73000),
('A1061', 'ML041', 'CA011', 'N', 2022, 48000),
('A1062', 'ML042', 'CA012', 'S', 2018, 89000),
('A1063', 'ML043', 'CA013', 'S', 2018, 95000),
('A1064', 'ML044', 'CA014', 'N', 2021, 87000),
('A1065', 'ML045', 'CA015', 'N', 2023, 72000),
('A1066', 'ML046', 'CA016', 'U', 2015, 68000),
('A1067', 'ML047', 'CA017', 'N', 2023, 110000),
('A1068', 'ML048', 'CA018', 'U', 2014, 98000),
('A1069', 'ML049', 'CA019', 'U', 2014, 89000),
('A1070', 'ML050', 'CA020', 'N', 2023, 82000),
('A1071', 'ML051', 'CA021', 'U', 2012, 55000),
('A1072', 'ML052', 'CA022', 'S', 2018, 42000),
('A1073', 'ML053', 'CA023', 'S', 2016, 68000),
('A1074', 'ML054', 'CA024', 'U', 2015, 72000),
('A1075', 'ML055', 'CA025', 'U', 2014, 62000),
('A1076', 'ML056', 'CA026', 'U', 2013, 58000),
('A1077', 'ML057', 'CA027', 'U', 2011, 75000),
('A1078', 'ML058', 'CA028', 'S', 2017, 89000),
('A1079', 'ML059', 'CA029', 'U', 2010, 95000),
('A1080', 'ML060', 'CA030', 'U', 2012, 67000),
('A1081', 'ML061', 'CA031', 'N', 2022, 48000),
('A1082', 'ML062', 'CA032', 'N', 2021, 89000),
('A1083', 'ML063', 'CA033', 'N', 2020, 95000),
('A1084', 'ML064', 'CA034', 'S', 2019, 87000),
('A1085', 'ML065', 'CA035', 'N', 2020, 72000),
('A1086', 'ML066', 'CA036', 'N', 2021, 68000),
('A1087', 'ML067', 'CA037', 'N', 2022, 110000),
('A1088', 'ML068', 'CA038', 'S', 2017, 98000),
('A1089', 'ML069', 'CA039', 'S', 2018, 89000),
('A1090', 'ML070', 'CA040', 'U', 2013, 82000),
('A1091', 'ML071', 'CA041', 'U', 2010, 52000),
('A1092', 'ML072', 'CA042', 'U', 2014, 87000),
('A1093', 'ML073', 'CA043', 'U', 2015, 93000),
('A1094', 'ML074', 'CA044', 'N', 2023, 96000),
('A1095', 'ML075', 'CA045', 'S', 2017, 72000),
('A1096', 'ML076', 'CA046', 'S', 2017, 68000),
('A1097', 'ML077', 'CA047', 'N', 2022, 110000),
('A1098', 'ML078', 'CA048', 'N', 2021, 98000),
('A1099', 'ML079', 'CA049', 'N', 2022, 89000),
('A1100', 'ML080', 'CA050', 'U', 2015, 82000)
go

-- tb_seguro
create table tb_seguro (
	codigo_seguro char(5) not null,
	seguro_codigo_vehiculo char (5) not null,
	seguro_codigo_compañia char(5) not null,
	fecha_inicio date,
	fecha_vencimiento date,
	prima_seguro varchar(25) not null)
go
 
alter table tb_seguro
add constraint pk_seguro
primary key (codigo_seguro)
go
 
alter table tb_seguro
add constraint fk_seguro_vehiculo
foreign key (seguro_codigo_vehiculo)
references tb_vehiculo (codigo_vehiculo)
go
 
alter table tb_seguro
add constraint fk_seguro_compañia
foreign key (seguro_codigo_compañia)
references tb_compañia (codigo_compañia)
go
 
 set dateformat dmy
 go

insert into tb_seguro values
('SE001', 'A1001', 'CM001', '20/08/2023', '20/08/2024', 'S/ 560 mensuales'),
('SE002', 'A1002', 'CM002', '21/08/2023', '21/08/2024', 'S/ 2500 anuales'),
('SE003', 'A1003', 'CM003', '25/08/2023', '25/09/2024', 'S/ 660 mensuales'),
('SE004', 'A1004', 'CM004', '22/08/2023', '22/08/2024', 'S/ 4400 anuales'),
('SE005', 'A1005', 'CM005', '24/08/2023', '24/08/2024', 'S/ 3000 semestrales'),
('SE006', 'A1006', 'CM006', '25/08/2023', '25/09/2024', 'S/ 780 mensuales'),
('SE007', 'A1007', 'CM007', '27/08/2023', '27/08/2024', 'S/ 2100 anuales'),
('SE008', 'A1008', 'CM008', '27/08/2023', '27/08/2024', 'S/ 880 mensuales'),
('SE009', 'A1009', 'CM009', '06/09/2023', '06/09/2024', 'S/ 3900 anuales'),
('SE010', 'A1010', 'CM010', '15/09/2023', '15/09/2024', 'S/ 1500 semestrales'),
('SE011', 'A1011', 'CM011', '18/09/2023', '20/09/2024', 'S/ 720 mensuales'),
('SE012', 'A1012', 'CM012', '20/09/2023', '20/09/2024', 'S/ 3000 anuales'),
('SE013', 'A1013', 'CM013', '25/09/2023', '25/09/2024', 'S/ 850 mensuales'),
('SE014', 'A1014', 'CM014', '25/09/2023', '25/09/2024', 'S/ 2800 anuales'),
('SE015', 'A1015', 'CM015', '28/09/2023', '28/10/2024', 'S/ 1200 semestrales'),
('SE016', 'A1016', 'CM001', '01/10/2023', '01/10/2024', 'S/ 600 mensuales'),
('SE017', 'A1017', 'CM002', '03/10/2023', '03/10/2024', 'S/ 2600 anuales'),
('SE018', 'A1018', 'CM003', '05/10/2023', '05/10/2024', 'S/ 720 mensuales'),
('SE019', 'A1019', 'CM004', '05/10/2023', '05/10/2024', 'S/ 3100 anuales'),
('SE020', 'A1020', 'CM005', '10/10/2023', '10/10/2024', 'S/ 1500 semestrales'),
('SE021', 'A1021', 'CM006', '10/10/2023', '10/10/2024', 'S/ 690 mensuales'),
('SE022', 'A1022', 'CM007', '12/10/2023', '12/10/2024', 'S/ 2200 anuales'),
('SE023', 'A1023', 'CM008', '15/10/2023', '15/10/2024', 'S/ 920 mensuales'),
('SE024', 'A1024', 'CM009', '15/10/2023', '15/10/2024', 'S/ 4000 anuales'),
('SE025', 'A1025', 'CM010', '18/10/2023', '18/10/2024', 'S/ 1750 semestrales'),
('SE026', 'A1026', 'CM011', '15/10/2023', '15/10/2024', 'S/ 800 mensuales'),
('SE027', 'A1027', 'CM012', '20/10/2023', '20/10/2024', 'S/ 3500 anuales'),
('SE028', 'A1028', 'CM013', '20/10/2023', '20/10/2024', 'S/ 790 mensuales'),
('SE029', 'A1029', 'CM014', '29/10/2023', '29/10/2024', 'S/ 2800 anuales'),
('SE030', 'A1030', 'CM015', '01/11/2023', '01/11/2024', 'S/ 1300 semestrales'),
('SE031', 'A1031', 'CM001', '05/11/2023', '05/11/2024', 'S/ 580 mensuales'),
('SE032', 'A1032', 'CM002', '06/11/2023', '06/11/2024', 'S/ 2500 anuales'),
('SE033', 'A1033', 'CM003', '08/11/2023', '08/11/2024', 'S/ 660 mensuales'),
('SE034', 'A1034', 'CM004', '10/11/2023', '10/11/2024', 'S/ 4400 anuales'),
('SE035', 'A1035', 'CM005', '12/11/2023', '12/11/2024', 'S/ 3000 semestrales'),
('SE036', 'A1036', 'CM006', '15/11/2023', '15/11/2024', 'S/ 780 mensuales'),
('SE037', 'A1037', 'CM007', '15/11/2023', '15/11/2024', 'S/ 2100 anuales'),
('SE038', 'A1038', 'CM008', '15/11/2023', '20/11/2024', 'S/ 880 mensuales'),
('SE039', 'A1039', 'CM009', '20/11/2023', '20/11/2024', 'S/ 3900 anuales'),
('SE040', 'A1040', 'CM010', '20/11/2023', '25/11/2024', 'S/ 1500 semestrales')
go

--tb_seguro_cobertura
create table tb_seguro_cobertura(
	sccodigo_seguro char(5)not null,
	sccodigo_cobertura char(5) not null)
go

alter table tb_seguro_cobertura
add constraint sc_pkcodigo_seguro_cobertura primary key (sccodigo_seguro,sccodigo_cobertura)
go

alter table tb_seguro_cobertura
add constraint sc_fkcodigo_seguro foreign key (sccodigo_seguro)
references tb_seguro (codigo_seguro)
go

alter table tb_seguro_cobertura
add constraint sc_fkcodigo_cobertura foreign key (sccodigo_cobertura)
references tb_cobertura (codigo_cobertura)
go

insert into tb_seguro_cobertura values
('SE001', 'CB001'),
('SE002', 'CB002'),
('SE003', 'CB003'),
('SE004','CB004'),
('SE005', 'CB005'),
('SE006', 'CB006'),
('SE007', 'CB007'),
('SE008', 'CB008'),
('SE009','CB009'),
('SE010','CB010'),
('SE011','CB011'),
('SE012', 'CB012'),
('SE013','CB013'),
('SE014','CB014'),
('SE015','CB015'),
('SE016','CB016'),
('SE017','CB017'),
('SE018','CB018'),
('SE019','CB019'),
('SE020','CB020'),
('SE021','CB021'),
('SE022','CB022'),
('SE023','CB023'),
('SE024','CB024'),
('SE025','CB025'),
('SE026','CB026'),
('SE027','CB027'),
('SE028','CB028'),
('SE029','CB029'),
('SE030','CB030'),
('SE031','CB001'),
('SE032','CB002'),
('SE033','CB003'),
('SE034','CB004'),
('SE035','CB005'),
('SE036','CB006'),
('SE037','CB007'),
('SE038','CB008'),
('SE039','CB009'),
('SE040','CB010')
go

-- tb_proveedor
create table tb_proveedor (
	codigo_proveedor char(5) not null,
	empresa varchar(30) not null,
	direccion varchar(40) not null,
	telefono varchar(15) not null,
	pro_codigo_nacionalidad char (5) not null)
go
 
alter table tb_proveedor 
add constraint pk_proveedor
primary key (codigo_proveedor)
go

alter table tb_proveedor
add constraint fk_nacionalidad_proveedor foreign key (pro_codigo_nacionalidad)
references tb_nacionalidad (codigo_nacionalidad)
go

insert into tb_proveedor values
('P0001', 'Toyota', 'Av. Elmer Faucett 3548', '(01) 708-0900','NA027'),
('P0002', 'Hyundai', 'Av. Javier Prado Oeste', '(01) 615-3030', 'NA028'),
('P0003', 'Kia', 'Av. la Marina 3140', '980 453 134', 'NA030'),
('P0004', 'Volkswagen', 'Av. la Marina 3001', '(01) 617-5055', 'NA017'),
('P0005', 'Chevrolet', 'Av. Naranjal 2180', '(01) 617-3940', 'NA012'),
('P0006', 'Honda', 'Av. Industrial 3660', '941 523 767', 'NA027'),
('P0007', 'BMW', 'Av. San Isidro 2345', '(01) 610-3535', 'NA017'),
('P0008', 'Mercedes-Benz','Av. La Molina 2345', '(01) 712-2000', 'NA017'),
('P0009', 'Hyundai', 'Av. Argentina 1845 ', '(01) 617-9999', 'NA028'),
('P0010', 'Ford', 'Av. Argentina 2013', '(01) 617-3939', 'NA012'),
('P0011', 'Renault', 'Av. Arequipa 1878', '(01) 613-3001', 'NA016'),
('P0012', 'Mitsubishi', 'Av. Juliaca 1789', '(01) 630-7225', 'NA027'),
('P0013', 'Subaru', 'Av. San Miguel 40', '(01) 630-3025 ', 'NA027'),
('P0014', 'Mazda', 'Av. Defensores del Morro 28', '(01) 713-5000', 'NA027'),
('P0015', 'Peugeot', 'Av. Manuel Iturregui 708', '(01)  612-9292', 'NA016'),
('P0016', 'Volvo', 'Av. Molina 13', '(01) 619-7777', 'NA022'),
('P0017', 'Land Rover', 'Av. Javier Prado 5445', '(01) 612-0777', 'NA018'),
('P0018', 'Jaguar', 'Av. Javier Prado 5455', '(01) 612 7770', 'NA018'),
('P0019', 'Jeep', 'Av. Santiago de Surco 32', '(01) 372-7225 ', 'NA012'),
('P0020', 'Audi', 'Av. Domingo Orue 999', '(01) 618-5055', 'NA017'),
('P0021', 'Lexus', 'Av. Javier Prado Este 6038', '(01) 625-3434', 'NA027'),
('P0022', 'Porsche', 'Av. Domingo Orue 993', '(01) 611-5155', 'NA017'),
('P0023', 'Infiniti', 'Av. Javier Prado 784', '(01) 238-9501', 'NA027'),
('P0024', 'Maserati', 'Av. Republica de Panama 3358', '989 031 336', 'NA015'),
('P0025', 'Bentley', 'Av. Domingo Orue 973', '916 185 050 ', 'NA018'),
('P0026', 'CarGurus', 'Av. Santiago de Surco 18', '(01) 123-4567', 'NA001'),
('P0027', 'Aston Martin', 'Av. Santa Cruz 12', '(01) 127-9873', 'NA018'),
('P0028', 'NeoAutos', 'Av. Republica de Panama 1245', '(01) 789-1532','NA001'),
('P0029', 'McLaren', 'Av. San Martin ', '(01) 519-9100 ', 'NA018'),
('P0030', 'Lamborghini', 'Av. Domingo Orue 983', '(01) 978-1879', 'NA015')
go

--tb_detalle_vehiculo
create table tb_detalle_vehiculo(
	detalle_codigo_vehiculo char(5) not null,
	detavehi_codigo_proveedor char(5) not null,
	color varchar(20) not null,
	rueda char(1) not null,
	motor varchar(35) not null,
	transmision char(3) not null,
	capacidad int)
go

alter table tb_detalle_vehiculo
add constraint pk_detalle_vehiculo primary key (detalle_codigo_vehiculo)
go

alter table tb_detalle_vehiculo
add constraint fk_detalle_codigo_vehiculo foreign key (detalle_codigo_vehiculo)
references tb_vehiculo (codigo_vehiculo)
go

alter table tb_detalle_vehiculo
add constraint fk_detavehi_codigo_proveedor foreign key (detavehi_codigo_proveedor)
references tb_proveedor (codigo_proveedor)
go

insert into tb_detalle_vehiculo values
('A1001','P0001','Negro','P','V8 Coyote','MT',4),
('A1002', 'P0002','Rojo', 'P', 'V6 Theta', 'AT', 5),
('A1003', 'P0003', 'Blanco', 'A', 'V8 Hemi', 'AT', 7),
('A1004', 'P0004', 'Plateado', 'P', 'V8 TDI', 'MT', 4),
('A1005', 'P0005','Azul', 'A', 'V6 EcoBoost', 'AT', 5),
('A1006', 'P0006', 'Negro', 'P', 'V6 Pentastar', 'MT', 4),
('A1007', 'P0007', 'Gris', 'P', 'V6 TwinPower', 'AT', 7),
('A1008', 'P0008', 'Rojo', 'A', 'V8 AMG', 'AT', 5),
('A1009', 'P0009',  'Plateado', 'P', 'V6 Lambda', 'MT', 4),
('A1010', 'P0010','Azul', 'P', 'V8 Coyote', 'AT', 5),
('A1011', 'P0011', 'Negro', 'A', 'V6 Theta', 'MT', 4),
('A1012', 'P0012', 'Blanco', 'P', 'V8 Hemi', 'AT', 7),
('A1013', 'P0013', 'Plateado', 'A', 'V8 TDI', 'AT', 5),
('A1014', 'P0014', 'Gris', 'P', 'V6 EcoBoost', 'MT', 4),
('A1015', 'P0015', 'Rojo', 'P', 'V6 Pentastar', 'AT', 5),
('A1016', 'P0016', 'Azul', 'A', 'V6 TwinPower', 'MT', 7),
('A1017', 'P0017', 'Negro', 'P', 'V8 AMG', 'AT', 5),
('A1018', 'P0018','Blanco', 'P', 'V6 Lambda', 'MT', 4),
('A1019', 'P0019','Plateado', 'A', 'V8 Coyote', 'AT', 5),
('A1020', 'P0020', 'Gris', 'P', 'V6 Theta', 'AT', 7),
('A1021', 'P0021', 'Rojo', 'A', 'V8 Hemi', 'MT', 4),
('A1022', 'P0022', 'Azul', 'P', 'V8 TDI', 'AT', 5),
('A1023', 'P0023', 'Negro', 'P', 'V6 EcoBoost', 'AT', 5),
('A1024', 'P0024', 'Blanco', 'A', 'V6 Pentastar', 'MT', 4),
('A1025', 'P0025',  'Plateado', 'P', 'V6 TwinPower', 'AT', 7),
('A1026', 'P0026', 'Gris', 'P', 'V8 AMG', 'MT', 4),
('A1027', 'P0027',  'Rojo', 'A', 'V8 Lambda', 'AT', 5),
('A1028', 'P0028', 'Azul', 'P', 'V6 Theta', 'MT', 7),
('A1029', 'P0029',  'Negro', 'P', 'V8 Hemi', 'AT', 5),
('A1030', 'P0030',  'Blanco', 'A', 'V6 TDI', 'AT', 4),
('A1031', 'P0001',  'Plateado', 'P', 'V6 EcoBoost', 'MT', 5),
('A1032', 'P0002',  'Gris', 'P', 'V6 Pentastar', 'AT', 5),
('A1033', 'P0003',  'Rojo', 'A', 'V6 TwinPower', 'MT', 7),
('A1034', 'P0004',  'Azul', 'P', 'V8 AMG', 'AT', 5),
('A1035', 'P0005',  'Negro', 'P', 'V8 Lambda', 'MT', 4),
('A1036', 'P0006','Blanco', 'A', 'V6 Theta', 'AT', 5),
('A1037', 'P0007','Plateado', 'P', 'V8 Hemi', 'MT', 7),
('A1038', 'P0008','Gris', 'P', 'V6 TDI', 'AT', 5),
('A1039', 'P0009','Rojo', 'A', 'V6 EcoBoost', 'MT', 4),
('A1040', 'P0010','Azul', 'P', 'V6 Pentastar', 'AT', 5)
go

-- tb_horario
create table tb_horario (
	codigo_horario char(5) not null,
	descripcion varchar(30) not null,
	dias_aplicables varchar(7) not null,
	hora_atencion varchar(40) not null)
go
 
alter table tb_horario
add constraint pk_horario
primary key (codigo_horario)
go
 
insert into tb_horario values
('HR001', 'Todos los días', 'LMXJVSD', '09:00am - 19:00pm'),
('HR002', 'Días laborales', 'LMXJVS', '08:30am - 17:30pm'),
('HR003', 'Días selectos', 'LXV', '09:00am - 19:30pm'),
('HR004', 'Fines de semana', 'SD', '10:00am - 18:00pm'),
('HR005', 'Todos los días', 'LMXJVSD', '08:00am - 20:00pm'),
('HR006', 'Días laborales', 'LMXJVS', '09:30am - 18:30pm'),
('HR007', 'Fines de semana', 'SD', '11:00am - 19:00pm'),
('HR008', 'Días laborales', 'LMXJVS', '08:00am - 17:00pm'),
('HR009', 'Días selectos', 'MJS', '09:30am - 19:00pm'),
('HR010', 'Fines de semana', 'SD', '10:30am - 18:30pm'),
('HR011', 'Días laborales', 'LMXJVS', '08:30am - 17:30pm'),
('HR012', 'Fines de semana', 'SD', '09:00am - 17:30pm'),
('HR013', 'Días selectos', 'MJS', '08:45am - 16:30pm'),
('HR014', 'Días laborales', 'LMXJVS', '09:00am - 18:00pm'),
('HR015', 'Fines de semana', 'SD', '10:00am - 18:00pm')
go
 
-- tb_local
create table tb_local (
	codigo_local char(5) not null,
	local_codigo_distrito char(5) not null,
	direccion varchar(40) not null,
	local_codigo_horario char(5) not null,
	telefono char(12) not null,
	correo varchar(40) not null)
go
 
alter table tb_local
add constraint pk_local
primary key (codigo_local)
go
 
alter table tb_local
add constraint fk_local_distrito
foreign key (local_codigo_distrito)
references tb_distrito (codigo_distrito)
go
 
alter table tb_local
add constraint fk_local_horario
foreign key (local_codigo_horario)
references tb_horario (codigo_horario)
go
 
insert into tb_local values
('L0001', 'D0001', 'Av. Jamaica 857', 'HR002', '500-5444', 'autojamaica@gmail.com'),
('L0002', 'D0003', 'Av. Emancipación 214', 'HR003', '512-5879', 'autoeman@gmail.com'),
('L0003', 'D0005', 'Av. Canta Callao 378', 'HR004', '545-7895', 'autolandcanta@gmail.com'),
('L0004', 'D0007', 'Av. Tupac Amaru 781', 'HR002', '451-7854', 'autolandtupac@gmail.com'),
('L0005', 'D0009', 'Av. Argentina 213', 'HR001', '354-1254', 'autolandarge@gmail.com'),
('L0006', 'D0011', 'Av. Los Pinos 320', 'HR005', '689-2154', 'autolandlos@gmail.com'),
('L0007', 'D0012', 'Av. Miraflores 123', 'HR006', '745-1324', 'autolandmira@gmail.com'),
('L0008', 'D0008', 'Av. Industrial 542', 'HR015', '512-6743', 'autolandind@gmail.com'),
('L0009', 'D0009', 'Av. Lima 987', 'HR001', '620-1789', 'autolandlima@gmail.com'),
('L0010', 'D0010', 'Av. Amazonas 235', 'HR004', '514-3254', 'autolandamaz@gmail.com'),
('L0011', 'D0011', 'Av. Universitaria 654', 'HR002', '689-2145', 'autolanduni@gmail.com'),
('L0012', 'D0012', 'Av. Libertadores 879', 'HR005', '720-1852', 'autolandlibe@gmail.com'),
('L0013', 'D0013', 'Av. Las Flores 786', 'HR003', '612-5478', 'autolandflor@gmail.com'),
('L0014', 'D0014', 'Av. San Isidro 321', 'HR006', '732-9874', 'autolandsan@gmail.com'),
('L0015', 'D0016', 'Av. Los Alamos 123', 'HR005', '512-5421', 'autolandalam@gmail.com'),
('L0016', 'D0029', 'Av. El Sol 456', 'HR006', '698-1234', 'autolandsol@gmail.com'),
('L0017', 'D0020', 'Av. Miraflores 789', 'HR004', '720-6321', 'autolandmira2@gmail.com'),
('L0018', 'D0023', 'Av. Principal 456', 'HR002', '754-9821', 'autolandprin@gmail.com'),
('L0019', 'D0026', 'Av. Central 789', 'HR007', '620-9654', 'autolandcentr@gmail.com'),
('L0020', 'D0029', 'Av. Inca 321', 'HR008', '698-1452', 'autolandinca@gmail.com'),
('L0021', 'D0032', 'Av. Los Pinos 654', 'HR005', '732-5432', 'autolandpino@gmail.com'),
('L0022', 'D0035', 'Av. Los Laureles 321', 'HR010', '514-6324', 'autolandlaurel@gmail.com'),
('L0023', 'D0038', 'Av. El Bosque 789', 'HR013', '612-9821', 'autolandbosq@gmail.com'),
('L0024', 'D0041', 'Av. Pacifico 123', 'HR010', '620-1452', 'autolandpaci@gmail.com'),
('L0025', 'D0044', 'Av. Cerro Azul 456', 'HR009', '754-5432', 'autolandcerro@gmail.com'),
('L0026', 'D0047', 'Av. La Pradera 654', 'HR008', '698-6324', 'autolandprad@gmail.com'),
('L0027', 'D0030', 'Av. Los Pájaros 321', 'HR004', '732-9821', 'autolandpajar@gmail.com'),
('L0028', 'D0023', 'Av. La Cañada 789', 'HR007', '620-1452', 'autolandcana@gmail.com'),
('L0029', 'D0021', 'Av. Las Lomas 123', 'HR007', '514-5432', 'autolandloma@gmail.com'),
('L0030', 'D0041', 'Av. Los Puentes 321', 'HR013', '698-6324', 'autolandpuent@gmail.com'),
('L0031', 'D0030', 'Av. Las Palmas 456', 'HR011', '732-9821', 'autolandpalm@gmail.com'),
('L0032', 'D0030', 'Av. Santa María 789', 'HR009', '754-1452', 'autolandsanta@gmail.com'),
('L0033', 'D0045', 'Av. Los Pinos 123', 'HR011', '620-5432', 'autolandpino2@gmail.com'),
('L0034', 'D0021', 'Av. Los Alamos 456', 'HR014', '698-9821', 'autolandalamo@gmail.com'),
('L0035', 'D0031', 'Av. Los Laureles 321', 'HR015', '514-1452', 'autolandlaur@gmail.com')
go
 
-- tb_cargo
create table tb_cargo (
	codigo_cargo char(5) not null,
	cargo varchar(50) not null,
	sueldo float)
go
 
alter table tb_cargo
add constraint pk_cargo
primary key (codigo_cargo)
go
 
INSERT INTO tb_cargo VALUES
('CG001', 'Gerente Local',1000.90),
('CG002', 'Gerente Regional',1000),
('CG003', 'Técnico Vehicular',1100.80),
('CG004', 'Mantenimiento de Vehiculos',1003.20),
('CG005', 'Gerente de Limpieza',950.84),
('CG006', 'Conserje',970.50),
('CG007', 'Vendedor de Vehiculos',1005.97),
('CG008', 'Asesor de Ventas',978.99),
('CG009', 'Asesor de Seguros de Autos',970.50),
('CG010', 'Seguridad de Local',970.50),
('CG011', 'Seguridad de Vehiculos',950.80),
('CG012', 'Supervisor de Seguridad',880.90),
('CG013', 'Especialista en Finanzas',970.50),
('CG014', 'Ejecutivo de Ventas',1035),
('CG015', 'Supervisor de Ventas',1009),
('CG016', 'Asistente Médico',1012),
('CG017', 'Contador',1200),
('CG018', 'Especialista en Marketing',978.85),
('CG019', 'Coordinador de Logística',858.99),
('CG020', 'Mecánico',987),
('CG021', 'Gerente Mecánico',1200),
('CG022', 'Jefe de Mecánicos',1375.99),
('CG023', 'Administrador de Sistemas',978),
('CG024', 'Supervisor de Ventas',1015),
('CG025', 'Gerente de Administración',1109),
('CG026', 'Gerente de Contabilidad',840.99),
('CG027', 'Administrador Digital',969.99),
('CG028', 'Administrador Web',1009),
('CG029', 'Gerente de Contabilidad',1032),
('CG030', 'Tasador de Vehiculos',1120)
go

-- tb_trabajador
create table tb_trabajador (
	codigo_trabajador char(5) not null,
	trabajador_codigo_local char(5) not null,
	trabajador_codigo_distrito char(5) not null,
	trabajador_codigo_cargo char(5) not null,
	nombre varchar(40) not null,
	ap_paterno varchar(30) not null,
	ap_materno varchar(30) not null,
	fecha_nacimiento date,
	genero char(1),
	num_dni char(8) not null,
	direccion varchar(80) not null,
	fecha_contratacion date)
go
 
alter table tb_trabajador
add constraint pk_trabajador
primary key (codigo_trabajador)
go
 
alter table tb_trabajador 
add constraint fk_trabajador_local
foreign key (trabajador_codigo_local)
references tb_local (codigo_local)
go
 
alter table tb_trabajador 
add constraint fk_trabajador_distrito
foreign key (trabajador_codigo_distrito)
references tb_distrito (codigo_distrito)
go
 
alter table tb_trabajador 
add constraint fk_trabajador_cargo
foreign key (trabajador_codigo_cargo)
references tb_cargo (codigo_cargo)
go

INSERT INTO tb_trabajador VALUES
('TR001', 'L0001', 'D0001', 'CG002', 'Carlos', 'Samaniego', 'Calderon', '1973-09-15', 'M', '72846514','Av. Rosales 321 ', '2022-05-04'),
('TR002', 'L0002', 'D0003', 'CG002', 'Ana', 'González', 'López', '1975-03-20', 'F', '89451236','Jr. Lima 623', '2017-08-10'),
('TR003', 'L0003', 'D0005', 'CG001', 'Pedro', 'Guibel', 'Torres', '1968-07-12', 'M', '63524198', 'San Gabriel 3º cuadrada', '2021-02-28'),
('TR004', 'L0004', 'D0007', 'CG002', 'María', 'Rodríguez', 'Gómez', '1983-06-18', 'F', '75395128', 'Mz. Luis 423', '2018-09-22'),
('TR005', 'L0005', 'D0009', 'CG002', 'Luis', 'Herrera', 'Pérez', '1997-12-03', 'M', '48625793', 'Av. Venezuela 213', '2019-06-10'),
('TR006', 'L0006', 'D0011', 'CG001', 'Sofía', 'López', 'Quiñón', '1994-08-29', 'F', '91283746', 'Av. San Lazaro 215', '2017-10-15'),
('TR007', 'L0014', 'D0014', 'CG002', 'Pedro', 'Huarán', 'Cortez', '1996-04-25', 'M', '58741296', 'Jardines 823', '2019-03-05'),
('TR008', 'L0015', 'D0016', 'CG002', 'Laura', 'Hernández', 'García', '1992-11-05', 'F', '42158796', 'Juan Pablo II 742', '2019-11-15'),
('TR009', 'L0020', 'D0029', 'CG002', 'Eduardo', 'Pérez', 'Sánchez', '1999-02-10', 'M', '36985214', 'Jr. Union 302', '2020-08-20'),
('TR010', 'L0017', 'D0021', 'CG001', 'María', 'Costillán', 'Román', '1997-07-08', 'F', '78521496', 'San Miguel 554', '2018-12-12'),
('TR011', 'L0019', 'D0027', 'CG002', 'Andrés', 'López', 'Gómez', '1994-03-12', 'M', '96325874', 'Mateo Pumacahua 223', '2018-07-18'),
('TR012', 'L0023', 'D0037', 'CG001', 'Carol', 'De la Marca', 'Cátedra', '1998-09-25', 'F', '74185296', 'Asoc. Vecinal Las Mercedes 275', '2020-04-05'),
('TR013', 'L0030', 'D0041', 'CG002', 'Javier', 'Martínez', 'Sanchez', '1996-05-30', 'M', '52874196', 'Ciudad Del Pescador 113', '2019-09-10'),
('TR014', 'L0035', 'D0031', 'CG002', 'Sara', 'Herrera', 'Julca', '1993-12-15', 'F', '36987412', 'Chacaritas la 7º', '2018-11-28'),
('TR015', 'L0033', 'D0045', 'CG001', 'Diego', 'González', 'López', '1997-08-20', 'M', '78521496','Colon 524', '2019-12-05'),
('TR016', 'L0001', 'D0001', 'CG006', 'Valentina', 'Herrantes', 'Lázaro', '1992-04-05', 'F', '42158796', 'Av. Argentina 464', '2017-06-10'),
('TR017', 'L0004', 'D0007', 'CG006', 'Roberto', 'Gómez', 'Torres', '1999-01-18', 'M', '91283746', 'Chavin de Huantar 1º entrada', '2021-03-15'),
('TR018', 'L0020', 'D0028', 'CG006', 'Lucía', 'Hernández', 'Condo', '1995-06-22', 'F', '58741296', 'Magadalena 214', '2020-01-25'),
('TR019', 'L0014', 'D0015', 'CG006', 'Harry', 'Sánchez', 'Puentes', '1998-03-05', 'M', '75395128', 'San Judas 126', '2019-08-12'),
('TR020', 'L0023', 'D0037', 'CG006', 'María', 'Ramírez', 'González', '1996-10-10', 'F', '89451236', 'PIO II 923', '2018-10-01'),
('TR021', 'L0005', 'D0009', 'CG006', 'Laura', 'Moreno', 'Castro', '1990-07-05', 'F', '63524187', 'Urb. Las Carmelias 467', '2015-09-20'),
('TR022', 'L0023', 'D0038', 'CG006', 'Fernando', 'Díaz', 'Morales', '1994-02-28', 'M', '47859612', 'Av. España 122', '2017-12-12'),
('TR023', 'L0027', 'D0030', 'CG006', 'Patricia', 'Silva', 'Ortega', '1997-11-10', 'F', '85236974', 'Los Condores 435', '2019-05-08'),
('TR024', 'L0030', 'D0041', 'CG006', 'Ricardo', 'Mendoza', 'Vargas', '1993-09-15', 'M', '74125896', 'Av Malachowsky 614', '2018-08-02'),
('TR025', 'L0033', 'D0045', 'CG006', 'Elena', 'Jiménez', 'Ríos', '1996-06-20', 'F', '36987452','Jr. Salaverry 1513', '2017-11-18'),
('TR026', 'L0020', 'D0028', 'CG007', 'Mauricio', 'Cordero', 'Rivera', '1999-03-25', 'M', '58741296','Mariscal Castilla 1010-1028, La Perla 07016', '2021-01-05'),
('TR027', 'L0023', 'D0038', 'CG007', 'Ana', 'Ruiz', 'Barro', '1995-08-30', 'F', '75395128','Pje. Huánuco, Callao 07026', '2020-02-15'),
('TR028', 'L0014', 'D0014', 'CG007', 'Daniel', 'Aguilar', 'Navarro', '1998-05-04', 'M', '89451236','Jr.Horacio Urteaga 2904-2996, Lima 15103', '2019-07-01'),
('TR029', 'L0019', 'D0026', 'CG007', 'Isabel', 'León', 'Valdez', '1996-12-09', 'F', '41258796','Jirón Alhelí 783-707, Lima 15102', '2018-09-10'),
('TR030', 'L0027', 'D0030', 'CG007', 'Adrián', 'Espinoza', 'Delgado', '2002-10-14', 'M', '96325874','Pasaje José Olaya, Lima 15333', '2016-04-28'),
('TR031', 'L0034', 'D0021', 'CG008', 'Andrés', 'López', 'Gómez', '1994-03-12', 'M', '96325874','Los Olivos 15304', '2018-07-18'),
('TR032', 'L0020', 'D0030', 'CG008', 'Carolina', 'García', 'Hernández', '1998-09-25', 'F', '74185296','Pje. 15 de agosto, Lima 15311', '2020-04-05'),
('TR033', 'L0035', 'D0031', 'CG008', 'Javier', 'Martínez', 'Pérez', '1996-05-30', 'M', '52874196','Auxiliar Av. Los Alisos, Lima 15304', '2019-09-10'),
('TR034', 'L0021', 'D0032', 'CG008', 'Sara', 'Boggio', 'Campos', '1993-12-15', 'F', '36987412','Ca. 6 718, San Martín de Porres 15107', '2018-11-28'),
('TR035', 'L0009', 'D0009', 'CG008', 'Diego', 'González', 'López', '1988-08-20', 'M', '78521496','C. Napo 3871-3803, Lima 15311', '2019-12-05'),
('TR036', 'L0001', 'D0001', 'CG010', 'Karen', 'Marqués', 'Quispe', '1982-04-05', 'F', '42158796','2 de Mayo, Callao 07026', '2017-06-10'),
('TR037', 'L0002', 'D0003', 'CG011', 'Roberto', 'Gómez', 'Torres', '1999-01-18', 'M', '91283746','Jr. Víctor Navarro 599, Lima 15107', '2021-03-15'),
('TR038', 'L0003', 'D0005', 'CG012', 'Lucía', 'Honores', 'García', '1995-06-22', 'F', '58741296','Jr. Sao Paulo 2576, Lima 15101', '2020-01-25'),
('TR039', 'L0004', 'D0007', 'CG013', 'Gabriel', 'Sánchez', 'Pérez', '1998-03-05', 'M', '75395128','Jirón Huancavelica 3000, San Martín de Porres 15106', '2019-08-12'),
('TR040', 'L0005', 'D0009', 'CG014', 'María', 'Ramírez', 'González', '1996-10-10', 'F', '89451236','Jr. Pucallpa 315, Callao 07001', '2018-10-01'),
('TR041', 'L0006', 'D0011', 'CG015', 'Laura', 'Moreno', 'Castro', '1991-07-05', 'F', '63524187','Manuel Arispe 169, Callao 07001', '2015-09-20'),
('TR042', 'L0007', 'D0012', 'CG016', 'Fernan', 'Díaz', 'Morales', '1994-02-28', 'M', '47859612','Av. Juan Pablo Ⅱ, Bellavista 07011', '2017-12-12'),
('TR043', 'L0008', 'D0008', 'CG017', 'Patricia', 'Silva', 'Ortega', '1987-11-10', 'F', '85236974','Jr. Chachapoyas 228-330, Callao 07001', '2019-05-08'),
('TR044', 'L0009', 'D0009', 'CG018', 'Ricardo', 'Mendoza', 'Vargas', '1993-09-15', 'M', '74125896','Las Amatistas 118, Bellavista 07016', '2018-08-02'),
('TR045', 'L0010', 'D0010', 'CG019', 'Elena', 'Jiménez', 'Ríos', '1996-06-20', 'F', '36987452','Jr. 2 de Mayo 782-996, La Perla 07016', '2017-11-18'),
('TR046', 'L0011', 'D0011', 'CG020', 'Mauricio', 'Cordero', 'Rivera', '1999-03-25', 'M', '58741296','C. Granada 176, Lima 07016', '2021-01-05'),
('TR047', 'L0012', 'D0012', 'CG003', 'Ana', 'Ruiz', 'Castro', '1995-08-30', 'F', '75395128','Javier Heraud 110-168, Lima 15087', '2020-02-15'),
('TR048', 'L0013', 'D0013', 'CG004', 'Dayron', 'Aguilar', 'Navarro', '1998-05-04', 'M', '89451236','Calle Micaela Bastidas Mz I Lote 28, Lima 07001', '2019-07-01'),
('TR049', 'L0014', 'D0014', 'CG005', 'Isabel', 'León', 'Valdez', '1986-12-09', 'F', '41258796','Boyaca 150-158, Lima 15087', '2018-09-10'),
('TR050', 'L0015', 'D0016', 'CG009', 'Adrián', 'Espinoza', 'Delgado', '1972-10-14', 'M', '96325874','Manuel Estacio 279, Lima 15087', '2016-04-28'),
('TR051', 'L0016', 'D0029', 'CG010', 'Luis', 'Vargas', 'De Mantez', '1996-08-12', 'M', '52874196','Jirón Arica 945-925, San Miguel 15086', '2021-07-18'),
('TR052', 'L0017', 'D0020', 'CG011', 'María', 'Soto', 'Mora', '1998-03-25', 'F', '36987412','Jiron Gral. Felipe Santiago Salaverry 456, Magdalena del Mar 15086', '2020-02-05'),
('TR053', 'L0018', 'D0023', 'CG012', 'Juan Carlos', 'Vicente', 'Solano', '1995-07-30', 'M', '78521496','Av. del Ejército 320, Magdalena del Mar 15076', '2019-09-10'),
('TR054', 'L0019', 'D0026', 'CG013', 'Abigail', 'Hernández', 'Gómez', '1999-02-15', 'F', '42158796','Jr. Trujillo 149', '2021-11-28'),
('TR055', 'L0020', 'D0029', 'CG014', 'Carlos', 'González', 'Rojas', '1994-09-20', 'M', '91283746','Av. Gral. Juan Antonio Pezet', '2018-12-05'),
('TR056', 'L0021', 'D0032', 'CG015', 'Laura', 'Morales', 'Araya', '1997-05-05', 'F', '58741296','Av. Miguel Cervantes 626', '2019-06-10'),
('TR057', 'L0022', 'D0035', 'CG016', 'Andrés', 'Castro', 'Zamora', '1999-10-18', 'M', '75395128','Av. Gral. Juan Antonio Pezet 315', '2021-03-15'),
('TR058', 'L0023', 'D0038', 'CG017', 'Valeria', 'Gómez', 'Quesada', '1995-03-22', 'F', '89451236','Pje. El Aromito 170', '2020-01-25'),
('TR059', 'L0024', 'D0041', 'CG018', 'Gabriel', 'Pérez', 'Campos', '1998-10-05', 'M', '41258796','C. Tacna 801', '2019-08-12'),
('TR060', 'L0025', 'D0044', 'CG019', 'María', 'Ramírez', 'González', '1996-05-10', 'F', '96325874','Residencial San Pedro 212', '2018-10-01');
go

-- tb_telefono_trabajador
create table tb_tetr (
	tetr_codigo_trabajador char(5) not null,
	tipo char(1) not null,
	numero char(12) not null)
go
 
alter table tb_tetr 
add constraint fk_tetr_trabajador
foreign key (tetr_codigo_trabajador)
references tb_trabajador (codigo_trabajador)
go
 
insert into tb_tetr values
('TR001', 'P', '987-125-657'),
('TR001', 'T', '965-213-678'),
('TR001', 'C', '(01) 618-505'),
('TR002', 'T', '912-345-678'),
('TR003', 'P', '932-456-789'),
('TR003', 'C', '(01) 943-679'),
('TR004', 'P', '954-567-890'),
('TR005', 'T', '976-678-901'),
('TR006', 'P', '987-890-123'),
('TR006', 'T', '998-012-345'),
('TR007', 'P', '910-234-567'),
('TR008', 'T', '922-456-789'),
('TR008', 'C', '(01) 933-679'),
('TR009', 'P', '944-567-890'),
('TR010', 'T', '966-789-012'),
('TR011', 'P', '977-890-123'),
('TR012', 'T', '988-012-345'),
('TR013', 'P', '900-234-567'),
('TR013', 'T', '911-456-789'),
('TR014', 'P', '922-567-890'),
('TR015', 'P', '933-789-012'),
('TR015', 'C', '(01) 944-902'),
('TR016', 'T', '955-012-345'),
('TR017', 'P', '966-234-567'),
('TR018', 'P', '977-456-789'),
('TR019', 'T', '988-678-901'),
('TR019', 'C', '(01) 999-023'),
('TR020', 'P', '900-234-567'),
('TR021', 'P', '911-345-678'),
('TR022', 'T', '922-456-789'),
('TR023', 'P', '933-567-890'),
('TR024', 'P', '944-789-012'),
('TR024', 'T', '955-901-234'),
('TR025', 'T', '966-123-456'),
('TR026', 'P', '977-345-678'),
('TR027', 'P', '988-567-890'),
('TR028', 'T', '900-789-012'),
('TR029', 'P', '911-901-234'),
('TR030', 'P', '922-123-456'),
('TR030', 'C', '(01) 933-567'),
('TR031', 'P', '933-345-678'),
('TR032', 'T', '944-456-789'),
('TR033', 'P', '955-567-890'),
('TR034', 'P', '966-789-012'),
('TR034', 'T', '977-901-234'),
('TR035', 'T', '988-123-456'),
('TR036', 'P', '900-345-678'),
('TR037', 'P', '911-567-890'),
('TR038', 'T', '922-789-012'),
('TR039', 'P', '933-901-234'),
('TR040', 'P', '944-123-456'),
('TR040', 'C', '(01) 955-567'),
('TR041', 'P', '955-345-678'),
('TR042', 'T', '966-456-789'),
('TR043', 'P', '977-567-890'),
('TR044', 'P', '988-789-012'),
('TR044', 'T', '900-901-234'),
('TR045', 'T', '911-123-456'),
('TR046', 'P', '922-345-678'),
('TR047', 'P', '933-567-890'),
('TR048', 'T', '944-789-012'),
('TR049', 'P', '955-901-234'),
('TR050', 'P', '966-123-456'),
('TR050', 'C', '(01) 977-567'),
('TR051', 'P', '977-345-678'),
('TR052', 'T', '988-456-789'),
('TR053', 'P', '900-567-890'),
('TR054', 'P', '911-789-012'),
('TR054', 'T', '922-901-234'),
('TR055', 'T', '933-123-456'),
('TR056', 'P', '944-345-678'),
('TR057', 'P', '955-567-890'),
('TR058', 'T', '966-789-012'),
('TR059', 'P', '977-901-234'),
('TR060', 'P', '988-123-456'),
('TR060', 'C', '(01) 900-567');
go

-- tb_correo_trabajador
create table tb_cotr (
	cotr_codigo_trabajador char(5) not null,
	tipo char(1) not null,
	correo char(50) not null)
go
 
alter table tb_cotr 
add constraint fk_cotr_trabajador
foreign key (cotr_codigo_trabajador)
references tb_trabajador (codigo_trabajador)
go
 
insert into tb_cotr values
('TR001', 'P', 'carlos_sm@gmail.com'),
('TR002', 'T', 'a_gonzalezl@hotmail.com'),
('TR003', 'P', 'juan.martinez@gmail.com'),
('TR004', 'T', 'maria_rodriguez@hotmail.com'),
('TR005', 'P', 'luis_herrera@gmail.com'),
('TR006', 'T', 'sofia_lopez@hotmail.com'),
('TR007', 'P', 'pedro_garcia@gmail.com'),
('TR008', 'T', 'laura_hernandez@hotmail.com'),
('TR009', 'P', 'eduardo.perez@gmail.com'),
('TR010', 'T', 'maria.gonzalez@hotmail.com'),
('TR011', 'P', 'andres.lopez@gmail.com'),
('TR012', 'T', 'carolina.garcia@hotmail.com'),
('TR013', 'P', 'javier.martinez@gmail.com'),
('TR014', 'T', 'sara.herrera@hotmail.com'),
('TR015', 'P', 'diego.gonzalez@gmail.com'),
('TR016', 'T', 'valentina.perez@hotmail.com'),
('TR017', 'P', 'roberto.gomez@gmail.com'),
('TR018', 'T', 'lucia.hernandez@hotmail.com'),
('TR019', 'P', 'gabriel.sanchez@gmail.com'),
('TR020', 'T', 'maria.ramirez@hotmail.com'),
('TR021', 'P', 'laura.moreno@gmail.com'),
('TR022', 'T', 'fernando.diaz@hotmail.com'),
('TR023', 'P', 'patricia.silva@gmail.com'),
('TR024', 'T', 'ricardo.mendoza@hotmail.com'),
('TR025', 'P', 'elena.jimenez@gmail.com'),
('TR026', 'T', 'mauricio.cordero@hotmail.com'),
('TR027', 'P', 'ana.ruiz@gmail.com'),
('TR028', 'T', 'daniel.aguilar@hotmail.com'),
('TR029', 'P', 'isabel.leon@gmail.com'),
('TR030', 'T', 'adrian.espinoza@hotmail.com'),
('TR031', 'P', 'andres.lopez@gmail.com'),
('TR032', 'T', 'carolina.garcia@hotmail.com'),
('TR033', 'P', 'javier.martinez@gmail.com'),
('TR034', 'T', 'sara.herrera@hotmail.com'),
('TR035', 'P', 'diego.gonzalez@gmail.com'),
('TR036', 'T', 'valentina.perez@hotmail.com'),
('TR037', 'P', 'roberto.gomez@gmail.com'),
('TR038', 'T', 'lucia.hernandez@hotmail.com'),
('TR039', 'P', 'gabriel.sanchez@gmail.com'),
('TR040', 'T', 'maria.ramirez@hotmail.com'),
('TR041', 'P', 'laura.moreno@gmail.com'),
('TR042', 'T', 'fernando.diaz@hotmail.com'),
('TR043', 'P', 'patricia.silva@gmail.com'),
('TR044', 'T', 'ricardo.mendoza@hotmail.com'),
('TR045', 'P', 'elena.jimenez@gmail.com'),
('TR046', 'T', 'mauricio.cordero@hotmail.com'),
('TR047', 'P', 'ana.ruiz@gmail.com'),
('TR048', 'T', 'daniel.aguilar@hotmail.com'),
('TR049', 'P', 'isabel.leon@gmail.com'),
('TR050', 'T', 'adrian.espinoza@hotmail.com'),
('TR051', 'P', 'luis.vargas@gmail.com'),
('TR052', 'T', 'maria.soto@hotmail.com'),
('TR053', 'P', 'juan.campos@gmail.com'),
('TR054', 'T', 'valentina.hernandez@hotmail.com'),
('TR055', 'P', 'carlos.gonzalez@gmail.com'),
('TR056', 'T', 'laura.morales@hotmail.com'),
('TR057', 'P', 'andres.castro@gmail.com'),
('TR058', 'T', 'valeria.gomez@hotmail.com'),
('TR059', 'P', 'gabriel.perez@gmail.com'),
('TR060', 'T', 'maria.ramirez@hotmail.com');
GO

-- tb_historial_sueldo
create table tb_historial_sueldo (
	sueldo_codigo_trabajador char(5) not null,
	mes char(2) not null,
	horas_trabajadas int,
	pago_hora float,
	comision float)
go
 
alter table tb_historial_sueldo
add constraint fk_sueldo_trabajador
foreign key (sueldo_codigo_trabajador)
references tb_trabajador (codigo_trabajador)
go
 
insert into tb_historial_sueldo values
('TR001', 'EN', 55, 75, 1100),
('TR001', 'FB', 55, 70.20, 1100),
('TR001', 'MR', 55, 70.50, 1100),
('TR001', 'AB', 45, 70.80, 900),
('TR001', 'MY', 55, 75, 1100),
('TR001', 'JN', 55, 75, 1100),
('TR001', 'JL', 50, 75, 1800),
('TR001', 'AG', 50, 75, 1100),
('TR001', 'SP', 50, 70.50, 1100),
('TR001', 'OC', 50, 75, 1100),
('TR002', 'EN', 40, 30.50, 1000),
('TR002', 'FB', 50, 40.10, 1200),
('TR002', 'MZ', 43, 30, 1050),
('TR002', 'AB', 40, 25, 800),
('TR002', 'MY', 48, 35, 1100),
('TR002', 'JN', 45, 30.10, 950),
('TR002', 'JL', 42, 25, 850),
('TR002', 'AG', 50, 35, 1200),
('TR002', 'SP', 55, 30, 1050),
('TR002', 'OC', 38, 25, 800),
('TR003', 'ER', 42, 30.20, 1100),
('TR003', 'FR', 53, 40, 1300),
('TR003', 'MZ', 49, 30, 1050),
('TR003', 'AB', 45, 25, 900),
('TR003', 'MY', 47, 35.20, 1200),
('TR003', 'JN', 50, 30, 1000),
('TR003', 'JL', 48, 25.50, 850),
('TR003', 'AG', 55, 35.60, 1300),
('TR003', 'SP', 52, 30.30, 1100),
('TR003', 'OC', 44, 25, 900),
('TR003', 'NV', 51, 35, 1200),
('TR003', 'DC', 46, 30, 1000),
('TR003', 'MR', 49, 25, 950),
('TR004', 'ER', 40, 30, 1000),
('TR004', 'FR', 50, 40, 1200.30),
('TR004', 'MZ', 51, 25, 950.20),
('TR004', 'AB', 45, 25, 900.20),
('TR004', 'MY', 48, 35, 1100),
('TR004', 'JN', 52, 30, 1000.30),
('TR004', 'JL', 46, 25, 850),
('TR004', 'AG', 53, 35, 1200),
('TR004', 'SP', 56, 30, 1050),
('TR004', 'OC', 42, 25.30, 900),
('TR004', 'NV', 49, 35.50, 1100),
('TR004', 'DC', 44, 30, 1000),
('TR005', 'ER', 42, 30, 1100),
('TR005', 'FR', 53, 40, 1300),
('TR005', 'MZ', 49, 25.50, 950),
('TR005', 'AB', 45, 25, 900),
('TR005', 'MY', 47, 35, 1200),
('TR005', 'JN', 50, 30, 1000),
('TR005', 'JL', 48, 25, 850),
('TR005', 'AG', 55, 35.50, 1300),
('TR005', 'SP', 52, 30.30, 1100.60),
('TR005', 'OC', 44, 25, 900.90),
('TR005', 'NV', 51, 35, 1200),
('TR005', 'DC', 46, 30, 1000),
('TR006', 'EN', 45, 75, 1500),
('TR006', 'FB', 45, 70.20, 1500),
('TR006', 'MR', 45, 70.50, 1500),
('TR006', 'AB', 55, 70.80, 2000),
('TR006', 'MY', 45, 75, 1500),
('TR006', 'JN', 45, 75, 1500),
('TR006', 'JL', 50, 75, 1800),
('TR006', 'AG', 50, 75, 1500),
('TR006', 'SP', 50, 70.50, 1500),
('TR006', 'OC', 50, 75, 1500),
('TR007', 'EN', 45, 75, 1500),
('TR007', 'FB', 45, 70.20, 1500),
('TR007', 'MR', 45, 70.50, 1500),
('TR007', 'AB', 55, 70.80, 2000),
('TR007', 'MY', 45, 75, 1500),
('TR007', 'JN', 45, 75, 1500),
('TR007', 'JL', 50, 75, 1800),
('TR007', 'AG', 50, 75, 1500),
('TR007', 'SP', 50, 70.50, 1500),
('TR007', 'OC', 50, 75, 1500),
('TR008', 'EN', 45, 75, 1500),
('TR008', 'FB', 45, 70.20, 1500),
('TR008', 'MR', 45, 70.50, 1500),
('TR008', 'AB', 55, 70.80, 2000),
('TR008', 'MY', 45, 75, 1500),
('TR008', 'JN', 45, 75, 1500),
('TR008', 'JL', 50, 75, 1800),
('TR008', 'AG', 50, 75, 1500),
('TR008', 'SP', 50, 70.50, 1500),
('TR008', 'OC', 50, 75, 1500),
('TR009', 'EN', 45, 75, 1500),
('TR009', 'FB', 45, 70.20, 1500),
('TR009', 'MR', 45, 70.50, 1500),
('TR009', 'AB', 55, 70.80, 2000),
('TR009', 'MY', 45, 75, 1500),
('TR009', 'JN', 45, 75, 1500),
('TR009', 'JL', 50, 75, 1800),
('TR009', 'AG', 50, 75, 1500),
('TR009', 'SP', 50, 70.50, 1500),
('TR009', 'OC', 50, 75, 1500),
('TR010', 'EN', 45, 75, 1500),
('TR010', 'FB', 45, 70.20, 1500),
('TR010', 'MR', 45, 70.50, 1500),
('TR010', 'AB', 55, 70.80, 2000),
('TR010', 'MY', 45, 75, 1500),
('TR010', 'JN', 45, 75, 1500),
('TR010', 'JL', 50, 75, 1800),
('TR010', 'AG', 50, 75, 1500),
('TR010', 'SP', 50, 70.50, 1500),
('TR010', 'OC', 50, 75, 1500),
('TR011', 'EN', 45, 75, 1500),
('TR011', 'FB', 45, 70.20, 1500),
('TR011', 'MR', 45, 70.50, 1500),
('TR011', 'AB', 55, 70.80, 2000),
('TR011', 'MY', 45, 75, 1500),
('TR011', 'JN', 45, 75, 1500),
('TR011', 'JL', 50, 75, 1800),
('TR011', 'AG', 50, 75, 1500),
('TR011', 'SP', 50, 70.50, 1500),
('TR011', 'OC', 50, 75, 1500),
('TR012', 'EN', 45, 75, 1500),
('TR012', 'FB', 45, 70.20, 1500),
('TR012', 'MR', 45, 70.50, 1500),
('TR012', 'AB', 55, 70.80, 2000),
('TR012', 'MY', 45, 75, 1500),
('TR012', 'JN', 45, 75, 1500),
('TR012', 'JL', 50, 75, 1800),
('TR012', 'AG', 50, 75, 1500),
('TR012', 'SP', 50, 70.50, 1500),
('TR012', 'OC', 50, 75, 1500),
('TR013', 'EN', 45, 75, 1500),
('TR013', 'FB', 45, 70.20, 1500),
('TR013', 'MR', 45, 70.50, 1500),
('TR013', 'AB', 55, 70.80, 2000),
('TR013', 'MY', 45, 75, 1500),
('TR013', 'JN', 45, 75, 1500),
('TR013', 'JL', 50, 75, 1800),
('TR013', 'AG', 50, 75, 1500),
('TR013', 'SP', 50, 70.50, 1500),
('TR013', 'OC', 50, 75, 1500),
('TR014', 'EN', 45, 75, 1500),
('TR014', 'FB', 45, 70.20, 1500),
('TR014', 'MR', 45, 70.50, 1500),
('TR014', 'AB', 55, 70.80, 2000),
('TR014', 'MY', 45, 75, 1500),
('TR014', 'JN', 45, 75, 1500),
('TR014', 'JL', 50, 75, 1800),
('TR014', 'AG', 50, 75, 1500),
('TR014', 'SP', 50, 70.50, 1500),
('TR014', 'OC', 50, 75, 1500),
('TR015', 'EN', 45, 75, 1500),
('TR015', 'FB', 45, 70.20, 1500),
('TR015', 'MR', 45, 70.50, 1500),
('TR015', 'AB', 55, 70.80, 2000),
('TR015', 'MY', 45, 75, 1500),
('TR015', 'JN', 45, 75, 1500),
('TR015', 'JL', 50, 75, 1800),
('TR015', 'AG', 50, 75, 1500),
('TR015', 'SP', 50, 70.50, 1500),
('TR015', 'OC', 50, 75, 1500),
('TR016', 'EN', 50, 80, 1600),
('TR016', 'FB', 50, 75, 1600),
('TR016', 'MR', 50, 75.50, 1600),
('TR016', 'AB', 60, 80.80, 2000),
('TR016', 'MY', 50, 80, 1600),
('TR016', 'JN', 50, 80, 1600),
('TR016', 'JL', 55, 80, 1800),
('TR016', 'AG', 55, 80, 1600),
('TR016', 'SP', 55, 75.50, 1600),
('TR016', 'OC', 55, 80, 1600),
('TR017', 'EN', 50, 80, 1600),
('TR017', 'FB', 50, 75, 1600),
('TR017', 'MR', 50, 75.50, 1600),
('TR017', 'AB', 60, 80.80, 2000),
('TR017', 'MY', 50, 80, 1600),
('TR017', 'JN', 50, 80, 1600),
('TR017', 'JL', 55, 80, 1800),
('TR017', 'AG', 55, 80, 1600),
('TR017', 'SP', 55, 75.50, 1600),
('TR017', 'OC', 55, 80, 1600),
('TR018', 'EN', 50, 80, 1600),
('TR018', 'FB', 50, 75, 1600),
('TR018', 'MR', 50, 75.50, 1600),
('TR018', 'AB', 60, 80.80, 2000),
('TR018', 'MY', 50, 80, 1600),
('TR018', 'JN', 50, 80, 1600),
('TR018', 'JL', 55, 80, 1800),
('TR018', 'AG', 55, 80, 1600),
('TR018', 'SP', 55, 75.50, 1600),
('TR018', 'OC', 55, 80, 1600),
('TR019', 'EN', 50, 80, 1600),
('TR019', 'FB', 50, 75, 1600),
('TR019', 'MR', 50, 75.50, 1600),
('TR019', 'AB', 60, 80.80, 2000),
('TR019', 'MY', 50, 80, 1600),
('TR019', 'JN', 50, 80, 1600),
('TR019', 'JL', 55, 80, 1800),
('TR019', 'AG', 55, 80, 1600),
('TR019', 'SP', 55, 75.50, 1600),
('TR019', 'OC', 55, 80, 1600),
('TR020', 'EN', 50, 80, 1600),
('TR020', 'FB', 50, 75, 1600),
('TR020', 'MR', 50, 75.50, 1600),
('TR020', 'AB', 60, 80.80, 2000),
('TR020', 'MY', 50, 80, 1600),
('TR020', 'JN', 50, 80, 1600),
('TR020', 'JL', 55, 80, 1800),
('TR020', 'AG', 55, 80, 1600),
('TR020', 'SP', 55, 75.50, 1600),
('TR020', 'OC', 55, 80, 1600),
('TR021', 'EN', 50, 80, 1600),
('TR021', 'FB', 50, 75, 1600),
('TR021', 'MR', 50, 75.50, 1600),
('TR021', 'AB', 60, 80.80, 2000),
('TR021', 'MY', 50, 80, 1600),
('TR021', 'JN', 50, 80, 1600),
('TR021', 'JL', 55, 80, 1800),
('TR021', 'AG', 55, 80, 1600),
('TR021', 'SP', 55, 75.50, 1600),
('TR021', 'OC', 55, 80, 1600),
('TR022', 'EN', 50, 80, 1600),
('TR022', 'FB', 50, 75, 1600),
('TR022', 'MR', 50, 75.50, 1600),
('TR022', 'AB', 60, 80.80, 2000),
('TR022', 'MY', 50, 80, 1600),
('TR022', 'JN', 50, 80, 1600),
('TR022', 'JL', 55, 80, 1800),
('TR022', 'AG', 55, 80, 1600),
('TR022', 'SP', 55, 75.50, 1600),
('TR022', 'OC', 55, 80, 1600),
('TR023', 'EN', 50, 80, 1600),
('TR023', 'FB', 50, 75, 1600),
('TR023', 'MR', 50, 75.50, 1600),
('TR023', 'AB', 60, 80.80, 2000),
('TR023', 'MY', 50, 80, 1600),
('TR023', 'JN', 50, 80, 1600),
('TR023', 'JL', 55, 80, 1800),
('TR023', 'AG', 55, 80, 1600),
('TR023', 'SP', 55, 75.50, 1600),
('TR023', 'OC', 55, 80, 1600),
('TR024', 'EN', 50, 80, 1600),
('TR024', 'FB', 50, 75, 1600),
('TR024', 'MR', 50, 75.50, 1600),
('TR024', 'AB', 60, 80.80, 2000),
('TR024', 'MY', 50, 80, 1600),
('TR024', 'JN', 50, 80, 1600),
('TR024', 'JL', 55, 80, 1800),
('TR024', 'AG', 55, 80, 1600),
('TR024', 'SP', 55, 75.50, 1600),
('TR024', 'OC', 55, 80, 1600),
('TR025', 'EN', 50, 80, 1600),
('TR025', 'FB', 50, 75, 1600),
('TR025', 'MR', 50, 75.50, 1600),
('TR025', 'AB', 60, 80.80, 2000),
('TR025', 'MY', 50, 80, 1600),
('TR025', 'JN', 50, 80, 1600),
('TR025', 'JL', 55, 80, 1800),
('TR025', 'AG', 55, 80, 1600),
('TR025', 'SP', 55, 75.50, 1600),
('TR025', 'OC', 55, 80, 1600),
('TR026', 'EN', 50, 80, 1600),
('TR026', 'FB', 50, 75, 1600),
('TR026', 'MR', 50, 75.50, 1600),
('TR026', 'AB', 60, 80.80, 2000),
('TR026', 'MY', 50, 80, 1600),
('TR026', 'JN', 50, 80, 1600),
('TR026', 'JL', 55, 80, 1800),
('TR026', 'AG', 55, 80, 1600),
('TR026', 'SP', 55, 75.50, 1600),
('TR026', 'OC', 55, 80, 1600),
('TR027', 'EN', 50, 80, 1600),
('TR027', 'FB', 50, 75, 1600),
('TR027', 'MR', 50, 75.50, 1600),
('TR027', 'AB', 60, 80.80, 2000),
('TR027', 'MY', 50, 80, 1600),
('TR027', 'JN', 50, 80, 1600),
('TR027', 'JL', 55, 80, 1800),
('TR027', 'AG', 55, 80, 1600),
('TR027', 'SP', 55, 75.50, 1600),
('TR027', 'OC', 55, 80, 1600),
('TR028', 'EN', 50, 80, 1600),
('TR028', 'FB', 50, 75, 1600),
('TR028', 'MR', 50, 75.50, 1600),
('TR028', 'AB', 60, 80.80, 2000),
('TR028', 'MY', 50, 80, 1600),
('TR028', 'JN', 50, 80, 1600),
('TR028', 'JL', 55, 80, 1800),
('TR028', 'AG', 55, 80, 1600),
('TR028', 'SP', 55, 75.50, 1600),
('TR028', 'OC', 55, 80, 1600),
('TR029', 'EN', 50, 80, 1600),
('TR029', 'FB', 50, 75, 1600),
('TR029', 'MR', 50, 75.50, 1600),
('TR029', 'AB', 60, 80.80, 2000),
('TR029', 'MY', 50, 80, 1600),
('TR029', 'JN', 50, 80, 1600),
('TR029', 'JL', 55, 80, 1800),
('TR029', 'AG', 55, 80, 1600),
('TR029', 'SP', 55, 75.50, 1600),
('TR029', 'OC', 55, 80, 1600),
('TR030', 'EN', 50, 80, 1600),
('TR030', 'FB', 50, 75, 1600),
('TR030', 'MR', 50, 75.50, 1600),
('TR030', 'AB', 60, 80.80, 2000),
('TR030', 'MY', 50, 80, 1600),
('TR030', 'JN', 50, 80, 1600),
('TR030', 'JL', 55, 80, 1800),
('TR030', 'AG', 55, 80, 1600),
('TR030', 'SP', 55, 75.50, 1600),
('TR030', 'OC', 55, 80, 1600),
('TR031', 'EN', 45, 45, 1000),
('TR031', 'FB', 45, 40.20, 1000),
('TR031', 'MR', 45, 40.50, 1000),
('TR031', 'AB', 40, 40.80, 900),
('TR031', 'MY', 45, 45, 1000),
('TR031', 'JN', 45, 45, 1000),
('TR031', 'JL', 40, 45, 1000),
('TR031', 'AG', 40, 45, 1000),
('TR031', 'SP', 40, 40.50, 900),
('TR031', 'OC', 40, 45, 1000),
('TR032', 'EN', 42, 35.50, 950),
('TR032', 'FB', 45, 38.10, 1050),
('TR032', 'MR', 43, 35, 1000),
('TR032', 'AB', 42, 30, 850),
('TR032', 'MY', 48, 35, 1100),
('TR032', 'JN', 45, 30.10, 950),
('TR032', 'JL', 42, 25, 800),
('TR032', 'AG', 50, 35, 1200),
('TR032', 'SP', 50, 30, 1000),
('TR032', 'OC', 38, 25, 800),
('TR033', 'EN', 40, 35, 900),
('TR033', 'FB', 42, 38.30, 950),
('TR033', 'MR', 41, 30.50, 900),
('TR033', 'AB', 38, 25, 800),
('TR033', 'MY', 45, 35.20, 1000),
('TR033', 'JN', 44, 30, 900),
('TR033', 'JL', 43, 26.50, 850),
('TR033', 'AG', 50, 36, 1200),
('TR033', 'SP', 47, 30.30, 1000),
('TR033', 'OC', 44, 25, 800),
('TR034', 'EN', 43, 35, 950),
('TR034', 'FB', 45, 38.20, 1050),
('TR034', 'MR', 44, 30, 950),
('TR034', 'AB', 40, 25, 850),
('TR034', 'MY', 47, 35, 1000),
('TR034', 'JN', 46, 30, 950),
('TR034', 'JL', 45, 26, 850),
('TR034', 'AG', 52, 36, 1200),
('TR034', 'SP', 49, 30.20, 1000),
('TR034', 'OC', 46, 25, 850),
('TR035', 'EN', 45, 35, 1000),
('TR035', 'FB', 45, 38.20, 1000),
('TR035', 'MR', 45, 38.50, 1000),
('TR035', 'AB', 42, 38.80, 950),
('TR035', 'MY', 45, 35.50, 1000),
('TR035', 'JN', 45, 35, 1000),
('TR035', 'JL', 45, 35, 1000),
('TR035', 'AG', 45, 35, 1000),
('TR035', 'SP', 45, 38.20, 950),
('TR035', 'OC', 45, 35, 1000),
('TR036', 'EN', 45, 35, 1000),
('TR036', 'FB', 45, 38.20, 1000),
('TR036', 'MR', 45, 38.50, 1000),
('TR036', 'AB', 42, 38.80, 950),
('TR036', 'MY', 45, 35.50, 1000),
('TR036', 'JN', 45, 35, 1000),
('TR036', 'JL', 45, 35, 1000),
('TR036', 'AG', 45, 35, 1000),
('TR036', 'SP', 45, 38.20, 950),
('TR036', 'OC', 45, 35, 1000),
('TR037', 'EN', 45, 35, 1000),
('TR037', 'FB', 45, 38.20, 1000),
('TR037', 'MR', 45, 38.50, 1000),
('TR037', 'AB', 42, 38.80, 950),
('TR037', 'MY', 45, 35.50, 1000),
('TR037', 'JN', 45, 35, 1000),
('TR037', 'JL', 45, 35, 1000),
('TR037', 'AG', 45, 35, 1000),
('TR037', 'SP', 45, 38.20, 950),
('TR037', 'OC', 45, 35, 1000),
('TR038', 'EN', 45, 35, 1000),
('TR038', 'FB', 45, 38.20, 1000),
('TR038', 'MR', 45, 38.50, 1000),
('TR038', 'AB', 42, 38.80, 950),
('TR038', 'MY', 45, 35.50, 1000),
('TR038', 'JN', 45, 35, 1000),
('TR038', 'JL', 45, 35, 1000),
('TR038', 'AG', 45, 35, 1000),
('TR038', 'SP', 45, 38.20, 950),
('TR038', 'OC', 45, 35, 1000),
('TR039', 'EN', 45, 35, 1000),
('TR039', 'FB', 45, 38.20, 1000),
('TR039', 'MR', 45, 38.50, 1000),
('TR039', 'AB', 42, 38.80, 950),
('TR039', 'MY', 45, 35.50, 1000),
('TR039', 'JN', 45, 35, 1000),
('TR039', 'JL', 45, 35, 1000),
('TR039', 'AG', 45, 35, 1000),
('TR039', 'SP', 45, 38.20, 950),
('TR039', 'OC', 45, 35, 1000),
('TR040', 'EN', 45, 35, 1000),
('TR040', 'FB', 45, 38.20, 1000),
('TR040', 'MR', 45, 38.50, 1000),
('TR040', 'AB', 42, 38.80, 950),
('TR040', 'MY', 45, 35.50, 1000),
('TR040', 'JN', 45, 35, 1000),
('TR040', 'JL', 45, 35, 1000),
('TR040', 'AG', 45, 35, 1000),
('TR040', 'SP', 45, 38.20, 950),
('TR040', 'OC', 45, 35, 1000),
('TR041', 'EN', 45, 35, 1000),
('TR041', 'FB', 45, 38.20, 1000),
('TR041', 'MR', 45, 38.50, 1000),
('TR041', 'AB', 42, 38.80, 950),
('TR041', 'MY', 45, 35.50, 1000),
('TR041', 'JN', 45, 35, 1000),
('TR041', 'JL', 45, 35, 1000),
('TR041', 'AG', 45, 35, 1000),
('TR041', 'SP', 45, 38.20, 950),
('TR041', 'OC', 45, 35, 1000),
('TR042', 'EN', 45, 35, 1000),
('TR042', 'FB', 45, 38.20, 1000),
('TR042', 'MR', 45, 38.50, 1000),
('TR042', 'AB', 42, 38.80, 950),
('TR042', 'MY', 45, 35.50, 1000),
('TR042', 'JN', 45, 35, 1000),
('TR042', 'JL', 45, 35, 1000),
('TR042', 'AG', 45, 35, 1000),
('TR042', 'SP', 45, 38.20, 950),
('TR042', 'OC', 45, 35, 1000),
('TR043', 'EN', 45, 35, 1000),
('TR043', 'FB', 45, 38.20, 1000),
('TR043', 'MR', 45, 38.50, 1000),
('TR043', 'AB', 42, 38.80, 950),
('TR043', 'MY', 45, 35.50, 1000),
('TR043', 'JN', 45, 35, 1000),
('TR043', 'JL', 45, 35, 1000),
('TR043', 'AG', 45, 35, 1000),
('TR043', 'SP', 45, 38.20, 950),
('TR043', 'OC', 45, 35, 1000),
('TR044', 'EN', 45, 35, 1000),
('TR044', 'FB', 45, 38.20, 1000),
('TR044', 'MR', 45, 38.50, 1000),
('TR044', 'AB', 42, 38.80, 950),
('TR044', 'MY', 45, 35.50, 1000),
('TR044', 'JN', 45, 35, 1000),
('TR044', 'JL', 45, 35, 1000),
('TR044', 'AG', 45, 35, 1000),
('TR044', 'SP', 45, 38.20, 950),
('TR044', 'OC', 45, 35, 1000),
('TR045', 'EN', 45, 35, 1000),
('TR045', 'FB', 45, 38.20, 1000),
('TR045', 'MR', 45, 38.50, 1000),
('TR045', 'AB', 42, 38.80, 950),
('TR045', 'MY', 45, 35.50, 1000),
('TR045', 'JN', 45, 35, 1000),
('TR045', 'JL', 45, 35, 1000),
('TR045', 'AG', 45, 35, 1000),
('TR045', 'SP', 45, 38.20, 950),
('TR045', 'OC', 45, 35, 1000),
('TR046', 'EN', 40, 35, 950),
('TR046', 'FB', 40, 38.20, 950),
('TR046', 'MR', 40, 38.50, 950),
('TR046', 'AB', 38, 38.80, 900),
('TR046', 'MY', 40, 35.50, 950),
('TR046', 'JN', 40, 35, 950),
('TR046', 'JL', 40, 35, 950),
('TR046', 'AG', 40, 35, 950),
('TR046', 'SP', 40, 38.20, 900),
('TR046', 'OC', 40, 35, 950),
('TR047', 'EN', 42, 35.50, 1000),
('TR047', 'FB', 45, 38.10, 1050),
('TR047', 'MR', 43, 35, 1000),
('TR047', 'AB', 42, 30, 900),
('TR047', 'MY', 48, 35, 1000),
('TR047', 'JN', 45, 30.10, 950),
('TR047', 'JL', 42, 25, 800),
('TR047', 'AG', 50, 35, 1100),
('TR047', 'SP', 50, 30, 950),
('TR047', 'OC', 38, 25, 800),
('TR048', 'EN', 42, 35.50, 1000),
('TR048', 'FB', 45, 38.10, 1050),
('TR048', 'MR', 43, 35, 1000),
('TR048', 'AB', 42, 30, 900),
('TR048', 'MY', 48, 35, 1000),
('TR048', 'JN', 45, 30.10, 950),
('TR048', 'JL', 42, 25, 800),
('TR048', 'AG', 50, 35, 1100),
('TR048', 'SP', 50, 30, 950),
('TR048', 'OC', 38, 25, 800),
('TR049', 'EN', 45, 35, 1000),
('TR049', 'FB', 45, 38.20, 1000),
('TR049', 'MR', 45, 38.50, 1000),
('TR049', 'AB', 42, 38.80, 950),
('TR049', 'MY', 45, 35.50, 1000),
('TR049', 'JN', 45, 35, 1000),
('TR049', 'JL', 45, 35, 1000),
('TR049', 'AG', 45, 35, 1000),
('TR049', 'SP', 45, 38.20, 950),
('TR049', 'OC', 45, 35, 1000),
('TR050', 'EN', 45, 35, 1000),
('TR050', 'FB', 45, 38.20, 1000),
('TR050', 'MR', 45, 38.50, 1000),
('TR050', 'AB', 42, 38.80, 950),
('TR050', 'MY', 45, 35.50, 1000),
('TR050', 'JN', 45, 35, 1000),
('TR050', 'JL', 45, 35, 1000),
('TR050', 'AG', 45, 35, 1000),
('TR050', 'SP', 45, 38.20, 950),
('TR050', 'OC', 45, 35, 1000),
('TR051', 'EN', 45, 35, 1000),
('TR051', 'FB', 45, 38.20, 1000),
('TR051', 'MR', 45, 38.50, 1000),
('TR051', 'AB', 42, 38.80, 950),
('TR051', 'MY', 45, 35.50, 1000),
('TR051', 'JN', 45, 35, 1000),
('TR051', 'JL', 45, 35, 1000),
('TR051', 'AG', 45, 35, 1000),
('TR051', 'SP', 45, 38.20, 950),
('TR051', 'OC', 45, 35, 1000),
('TR052', 'EN', 45, 35, 1000),
('TR052', 'FB', 45, 38.20, 1000),
('TR052', 'MR', 45, 38.50, 1000),
('TR052', 'AB', 42, 38.80, 950),
('TR052', 'MY', 45, 35.50, 1000),
('TR052', 'JN', 45, 35, 1000),
('TR052', 'JL', 45, 35, 1000),
('TR052', 'AG', 45, 35, 1000),
('TR052', 'SP', 45, 38.20, 950),
('TR052', 'OC', 45, 35, 1000),
('TR053', 'EN', 45, 35, 1000),
('TR053', 'FB', 45, 38.20, 1000),
('TR053', 'MR', 45, 38.50, 1000),
('TR053', 'AB', 42, 38.80, 950),
('TR053', 'MY', 45, 35.50, 1000),
('TR053', 'JN', 45, 35, 1000),
('TR053', 'JL', 45, 35, 1000),
('TR053', 'AG', 45, 35, 1000),
('TR053', 'SP', 45, 38.20, 950),
('TR053', 'OC', 45, 35, 1000),
('TR054', 'EN', 45, 35, 1000),
('TR054', 'FB', 45, 38.20, 1000),
('TR054', 'MR', 45, 38.50, 1000),
('TR054', 'AB', 42, 38.80, 950),
('TR054', 'MY', 45, 35.50, 1000),
('TR054', 'JN', 45, 35, 1000),
('TR054', 'JL', 45, 35, 1000),
('TR054', 'AG', 45, 35, 1000),
('TR054', 'SP', 45, 38.20, 950),
('TR054', 'OC', 45, 35, 1000),
('TR055', 'EN', 45, 35, 1000),
('TR055', 'FB', 45, 38.20, 1000),
('TR055', 'MR', 45, 38.50, 1000),
('TR055', 'AB', 42, 38.80, 950),
('TR055', 'MY', 45, 35.50, 1000),
('TR055', 'JN', 45, 35, 1000),
('TR055', 'JL', 45, 35, 1000),
('TR055', 'AG', 45, 35, 1000),
('TR055', 'SP', 45, 38.20, 950),
('TR055', 'OC', 45, 35, 1000),
('TR056', 'EN', 45, 35, 1000),
('TR056', 'FB', 45, 38.20, 1000),
('TR056', 'MR', 45, 38.50, 1000),
('TR056', 'AB', 42, 38.80, 950),
('TR056', 'MY', 45, 35.50, 1000),
('TR056', 'JN', 45, 35, 1000),
('TR056', 'JL', 45, 35, 1000),
('TR056', 'AG', 45, 35, 1000),
('TR056', 'SP', 45, 38.20, 950),
('TR056', 'OC', 45, 35, 1000),
('TR057', 'EN', 45, 35, 1000),
('TR057', 'FB', 45, 38.20, 1000),
('TR057', 'MR', 45, 38.50, 1000),
('TR057', 'AB', 42, 38.80, 950),
('TR057', 'MY', 45, 35.50, 1000),
('TR057', 'JN', 45, 35, 1000),
('TR057', 'JL', 45, 35, 1000),
('TR057', 'AG', 45, 35, 1000),
('TR057', 'SP', 45, 38.20, 950),
('TR057', 'OC', 45, 35, 1000),
('TR058', 'EN', 45, 35, 1000),
('TR058', 'FB', 45, 38.20, 1000),
('TR058', 'MR', 45, 38.50, 1000),
('TR058', 'AB', 42, 38.80, 950),
('TR058', 'MY', 45, 35.50, 1000),
('TR058', 'JN', 45, 35, 1000),
('TR058', 'JL', 45, 35, 1000),
('TR058', 'AG', 45, 35, 1000),
('TR058', 'SP', 45, 38.20, 950),
('TR058', 'OC', 45, 35, 1000),
('TR059', 'EN', 45, 35, 1000),
('TR059', 'JL', 45, 35, 1000),
('TR059', 'AG', 45, 35, 1000),
('TR059', 'SP', 45, 35, 1000),
('TR059', 'OC', 45, 35, 1000),
('TR060', 'EN', 40, 30, 900),
('TR060', 'FB', 45, 35.50, 950),
('TR060', 'MR', 43, 30, 900),
('TR060', 'AB', 42, 25, 800),
('TR060', 'MY', 48, 35, 1000),
('TR060', 'JN', 45, 30.10, 950),
('TR060', 'JL', 42, 25, 800),
('TR060', 'AG', 50, 35, 1100),
('TR060', 'SP', 50, 30, 950),
('TR060', 'OC', 38, 25, 800);
go

--tb_boleta_seguro
create table tb_boleta_seguro(
	codigo_boleta_seguro char(5) not null,
	boleta_codigo_seguro char(5) not null,
	boleta_codigo_cliente char(5) not null,
	boleta_codigo_trabajador char(5) not null,
	fecha_venta date,
	monto_pagado int)
go

alter table tb_boleta_seguro
add constraint pk_boleta_seguro primary key (codigo_boleta_seguro)
go

alter table tb_boleta_seguro
add constraint fk_bolese_codigo_seguro foreign key (boleta_codigo_seguro)
references tb_seguro (codigo_seguro)
go

alter table tb_boleta_seguro
add constraint fk_bolese_codigo_cliente foreign key (boleta_codigo_cliente)
references tb_cliente (codigo_cliente)
go

alter table tb_boleta_seguro
add constraint fk_bolese_codigo_trabajador foreign key (boleta_codigo_trabajador)
references tb_trabajador (codigo_trabajador)
go

 set dateformat dmy
 go

insert into tb_boleta_seguro values
('BS001', 'SE001', 'C0001', 'TR001', '2023-08-15', 95000),
('BS002', 'SE002', 'C0002', 'TR002', '2023-08-15', 82500),
('BS003', 'SE003', 'C0003', 'TR003', '2023-08-17', 72000),
('BS004', 'SE004', 'C0004', 'TR004', '2023-08-18', 61500),
('BS005', 'SE005', 'C0005', 'TR005', '2023-08-19', 52100),
('BS006', 'SE006', 'C0006', 'TR006', '2023-08-20', 45600),
('BS007', 'SE007', 'C0007', 'TR007', '2023-08-21', 39900),
('BS008', 'SE008', 'C0008', 'TR008', '2023-08-22', 35400),
('BS009', 'SE009', 'C0009', 'TR009', '2023-09-01', 30600),
('BS010', 'SE010', 'C0010', 'TR010', '2023-09-09', 25900),
('BS011', 'SE011', 'C0011', 'TR011', '2023-09-10', 21800),
('BS012', 'SE012', 'C0012', 'TR012', '2023-09-15', 18700),
('BS013', 'SE013', 'C0013', 'TR013', '2023-09-20', 16200),
('BS014', 'SE014', 'C0014', 'TR014', '2023-09-20', 13900),
('BS015', 'SE015', 'C0015', 'TR015', '2023-09-25', 11750),
('BS016', 'SE016', 'C0016', 'TR016', '2023-09-29', 9850),
('BS017', 'SE017', 'C0017', 'TR017', '2023-10-01', 8650),
('BS018', 'SE018', 'C0018', 'TR018', '2023-10-02', 7400),
('BS019', 'SE019', 'C0019', 'TR019', '2023-10-02', 6350),
('BS020', 'SE020', 'C0020', 'TR020', '2023-10-04', 5275),
('BS021', 'SE021', 'C0021', 'TR021', '2023-10-05', 4560),
('BS022', 'SE022', 'C0022', 'TR022', '2023-10-06', 3900),
('BS023', 'SE023', 'C0023', 'TR023', '2023-10-08', 3460),
('BS024', 'SE024', 'C0024', 'TR024', '2023-10-08', 2980),
('BS025', 'SE025', 'C0025', 'TR025', '2023-10-09', 2560),
('BS026', 'SE026', 'C0026', 'TR026', '2023-10-10', 2140),
('BS027', 'SE027', 'C0027', 'TR027', '2023-10-15', 1790),
('BS028', 'SE028', 'C0028', 'TR028', '2023-10-15', 1480),
('BS029', 'SE029', 'C0029', 'TR029', '2023-10-28', 1250),
('BS030', 'SE030', 'C0030', 'TR030', '2023-10-30', 1080),
('BS031', 'SE031', 'C0031', 'TR031', '2023-11-01', 970),
('BS032', 'SE032', 'C0032', 'TR032', '2023-11-02', 850),
('BS033', 'SE033', 'C0033', 'TR033', '2023-11-03', 750),
('BS034', 'SE034', 'C0034', 'TR034', '2023-11-04', 680),
('BS035', 'SE035', 'C0035', 'TR035', '2023-11-05', 600);
go

--tb_tipo_cita
create table tb_tipo_cita(
	codigo_tcita char(5) not null,
	tipo varchar(40) not null,
	descripcion varchar (200) not null)
go

alter table tb_tipo_cita
add constraint pk_codigo_tipo_cita primary key (codigo_tcita)
go

insert into tb_tipo_cita values
('TA001','Cotizamiento de automovil','El cliente vino a preguntar sobre la cotizacion sobre un vehiculo de su interes.'),
('TA002', 'Reporte de Fallas', 'El cliente necesita reparar un problema en su vehículo y reporta las fallas que ha experimentado.'),
('TA003', 'Mantenimiento Preventivo', 'El cliente programó una cita para realizar un mantenimiento preventivo en su automóvil.'),
('TA004', 'Prueba de Manejo', 'El cliente desea probar un vehículo antes de tomar una decisión de compra.'),
('TA005', 'Servicio de Pintura', 'Cita para pintar o retocar la pintura de un vehículo.'),
('TA006', 'Cambio de Aceite', 'El cliente necesita cambiar el aceite y realizar el mantenimiento del vehículo.'),
('TA007', 'Reparación de Carrocería', 'Cita para reparar la carrocería y chapa de un automóvil.'),
('TA008', 'Asesoría en Financiamiento', 'El cliente busca asesoramiento para obtener financiamiento para la compra de un vehículo.'),
('TA009', 'Venta de Accesorios', 'Cita para comprar accesorios o piezas adicionales para el automóvil.'),
('TA010', 'Prueba de Nuevos Modelos', 'El cliente desea probar los últimos modelos de vehículos disponibles.'),
('TA011', 'Asesoría en Garantía', 'Cita para recibir información sobre la garantía de un vehículo.'),
('TA012', 'Cambio de Neumáticos', 'El cliente necesita reemplazar los neumáticos de su vehículo.'),
('TA013', 'Servicio de Limpieza', 'Cita para realizar una limpieza o lavado completo del automóvil.'),
('TA014', 'Revisión de Frenos', 'El cliente necesita una revisión y posible reparación de los frenos de su vehículo.'),
('TA015', 'Asesoramiento Técnico', 'Cita para recibir asesoramiento técnico sobre el vehículo o sus componentes.'),
('TA016', 'Entrega de Documentos', 'El cliente debe entregar documentos relacionados con la compra o venta de un automóvil.'),
('TA017', 'Servicio de Electricidad', 'Cita para reparaciones eléctricas en el vehículo, como problemas con luces o sistemas electrónicos.'),
('TA018', 'Diagnóstico de Motor', 'El cliente busca un diagnóstico y reparación de problemas en el motor del vehículo.'),
('TA019', 'Transferencia de Propiedad', 'Cita para transferir la propiedad de un vehículo entre comprador y vendedor.'),
('TA020', 'Servicio de Aire Acondicionado', 'El cliente necesita reparar o mantener el sistema de aire acondicionado de su automóvil.'),
('TA021', 'Asesoría en Seguros', 'Cita para recibir asesoramiento sobre seguros de automóviles y cobertura.'),
('TA022', 'Inspección Precompra', 'El cliente solicita una inspección antes de comprar un vehículo usado.'),
('TA023', 'Registro de Garantía', 'Cita para registrar o activar la garantía de un vehículo nuevo.'),
('TA024', 'Instalación de Audio', 'Cita para instalar un sistema de audio o entretenimiento en el vehículo.'),
('TA025', 'Mantenimiento de la Transmisión', 'El cliente necesita mantenimiento o reparación en la transmisión del vehículo.'),
('TA026', 'Renovación de Placas', 'Cita para renovar las placas o documentos de registro de un vehículo.'),
('TA027', 'Instalación de GPS', 'Cita para instalar un sistema de navegación GPS en el automóvil.'),
('TA028', 'Traslado de Vehículo', 'El cliente necesita trasladar un vehículo a otro lugar.'),
('TA029', 'Reemplazo de Parabrisas', 'Cita para reemplazar o reparar el parabrisas del vehículo.'),
('TA030', 'Servicio de Llantas', 'El cliente busca servicios relacionados con neumáticos y llantas.'),
('TA031', 'Verificación Técnica Vehicular', 'Cita para realizar la verificación técnica obligatoria del vehículo.'),
('TA032', 'Recogida de Vehículo', 'El cliente programó la recogida de su vehículo después de un servicio o reparación.'),
('TA033', 'Mantenimiento de Suspensión', 'El cliente busca mantenimiento o reparación de la suspensión del vehículo.'),
('TA034', 'Alquiler de Automóviles', 'Cita para alquilar un automóvil por un período específico.'),
('TA035', 'Reemplazo de Batería', 'Cita para reemplazar o reparar la batería del vehículo.'),
('TA036', 'Ajuste de Motor', 'El cliente busca un ajuste o sintonización del motor de su vehículo.'),
('TA037', 'Venta de Vehículos Usados', 'Cita para ver y comprar vehículos usados disponibles para la venta.'),
('TA038', 'Servicio de Remolque', 'El cliente necesita un servicio de remolque para su vehículo.')
go

--tb_cita
create table tb_cita(
	codigo_cita char (5) not null,
	cita_codigo_trabajador char(5) not null,
	cita_codigo_cliente char(5) not null,
	cita_codigo_local char(5) not null,
	cita_codigo_tcita char(5) not null,
	horario varchar(10))
go

alter table tb_cita
add constraint pk_codigo_cita primary key (codigo_cita)
go

alter table tb_cita
add constraint fk_ct_codigo_trabajador foreign key (cita_codigo_trabajador)
references tb_trabajador (codigo_trabajador)
go

alter table tb_cita
add constraint fk_ct_codigo_cliente foreign key (cita_codigo_cliente)
references tb_cliente (codigo_cliente)
go

alter table tb_cita
add constraint fk_ct_codigo_local foreign key (cita_codigo_local)
references tb_local (codigo_local)
go

alter table tb_cita
add constraint fk_ct_codigo_tcita foreign key (cita_codigo_tcita)
references tb_tipo_cita (codigo_tcita)
go

insert into tb_cita values
('AP001','TR001','C0001','L0001','TA001','01:30PM'),
('AP002','TR002','C0002','L0002','TA002','10:20AM'),
('AP003','TR003','C0003','L0002','TA003','03:30PM'),
('AP004','TR004','C0004','L0004','TA004','08:45AM'),
('AP005','TR005','C0005','L0005','TA005','02:45PM'),
('AP006','TR006','C0006','L0006','TA006','08:15AM'),
('AP007','TR007','C0007','L0007','TA007','04:30PM'),
('AP008','TR008','C0008','L0007','TA008','05:00PM'),
('AP009','TR009','C0009','L0009','TA009','01:45PM'),
('AP010','TR010','C0010','L0010','TA010','11:20AM'),
('AP011','TR011','C0011','L0011','TA011','03:00PM'),
('AP012','TR012','C0012','L0012','TA012','03:30PM'),
('AP013','TR013','C0013','L0013','TA013','09:15AM'),
('AP014','TR014','C0014','L0014','TA014','02:30PM'),
('AP015','TR015','C0015','L0015','TA015','08:30AM'),
('AP016','TR016','C0016','L0016','TA016','01:00PM'),
('AP017','TR017','C0017','L0016','TA017','02:45PM'),
('AP018','TR018','C0018','L0018','TA018','08:15AM'),
('AP019','TR019','C0019','L0019','TA019','04:30PM'),
('AP020','TR020','C0020','L0020','TA020','04:00PM'),
('AP021','TR021','C0021','L0021','TA021','02:15PM'),
('AP022','TR022','C0022','L0022','TA022','03:30PM'),
('AP023','TR023','C0023','L0023','TA023','03:00PM'),
('AP024','TR024','C0024','L0024','TA024','10:45AM'),
('AP025','TR025','C0025','L0025','TA025','04:15PM'),
('AP026','TR026','C0026','L0026','TA026','05:15PM'),
('AP027','TR027','C0027','L0027','TA027','11:30AM'),
('AP028','TR028','C0028','L0028','TA028','02:15PM'),
('AP029','TR029','C0029','L0029','TA029','03:30PM'),
('AP030','TR030','C0030','L0030','TA030','08:45AM'),
('AP031','TR031','C0031','L0031','TA031','04:45PM'),
('AP032','TR032','C0032','L0032','TA032','10:15AM'),
('AP033','TR033','C0033','L0032','TA033','10:45AM'),
('AP034','TR034','C0034','L0034','TA034','01:15PM'),
('AP035','TR035','C0035','L0034','TA035','02:00PM'),
('AP036','TR036','C0035','L0035','TA036','09:30AM'),
('AP037','TR037','C0035','L0035','TA037','02:00PM'),
('AP038','TR038','C0035','L0025','TA038','12:00PM')
go

--tb_boleta
create table tb_boleta(
	codigo_boleta char(5) not null,
	boleta_codigo_cliente char(5) not null,
	boleta_codigo_trabajador char(5) not null,
	fecha_venta date,
	monto_pagado int)
go

alter table tb_boleta
add constraint pk_boleta primary key (codigo_boleta)
go

alter table tb_boleta
add constraint fk_bole_codigo_cliente foreign key (boleta_codigo_cliente)
references tb_cliente (codigo_cliente)
go

alter table tb_boleta
add constraint fk_bole_codigo_trabajador foreign key (boleta_codigo_trabajador)
references tb_trabajador(codigo_trabajador)
go

insert into tb_boleta values 
('B0001', 'C0001', 'TR001', '2023-01-27', 95000),
('B0002', 'C0002', 'TR002', '2023-02-28', 75000),
('B0003', 'C0003', 'TR003', '2023-02-27', 82000),
('B0004', 'C0004', 'TR004', '2023-03-10', 69000),
('B0005', 'C0005', 'TR004', '2023-03-01', 89000),
('B0006', 'C0006', 'TR006', '2023-05-10', 96000),
('B0007', 'C0007', 'TR007', '2023-05-13', 72000),
('B0008', 'C0008', 'TR008', '2023-05-25', 84000),
('B0009', 'C0009', 'TR008', '2023-06-05', 77000),
('B0010', 'C0010', 'TR010', '2023-06-08', 93000),
('B0011', 'C0011', 'TR011', '2023-07-17', 82000),
('B0012', 'C0012', 'TR012', '2023-07-08', 89000),
('B0013', 'C0013', 'TR013', '2023-07-10', 75000),
('B0014', 'C0014', 'TR013', '2023-07-12', 96000),
('B0015', 'C0015', 'TR015', '2023-08-16', 71000),
('B0016', 'C0016', 'TR016', '2023-08-22', 88000),
('B0017', 'C0017', 'TR017', '2023-08-28', 79000),
('B0018', 'C0018', 'TR018', '2023-08-29', 92000),
('B0019', 'C0019', 'TR019', '2023-08-30', 68000),
('B0020', 'C0020', 'TR020', '2023-08-30', 85000),
('B0021', 'C0021', 'TR020', '2023-09-17', 81000),
('B0022', 'C0022', 'TR022', '2023-09-18', 91000),
('B0023', 'C0023', 'TR023', '2023-10-19', 73000),
('B0024', 'C0024', 'TR024', '2023-09-20', 94000),
('B0025', 'C0025', 'TR025', '2023-10-21', 86000),
('B0026', 'C0026', 'TR025', '2023-10-22', 79000),
('B0027', 'C0027', 'TR027', '2023-08-23', 90000),
('B0028', 'C0028', 'TR028', '2023-10-24', 72000),
('B0029', 'C0029', 'TR029', '2023-09-09', 87000),
('B0030', 'C0030', 'TR030', '2023-09-26', 84000),
('B0031', 'C0031', 'TR030', '2023-09-30', 95000),
('B0032', 'C0032', 'TR032', '2023-10-10', 70000),
('B0033', 'C0033', 'TR033', '2023-10-19', 91000),
('B0034', 'C0034', 'TR034', '2023-10-20', 87000),
('B0035', 'C0035', 'TR034', '2023-10-28', 96000)
go

--tb_detalle_boleta
create table tb_detalle_boleta(
	codigo_detalle_boleta char(5) not null,
	detaboleta_codigo_vehiculo char(5) not null,
	cantidad int,
	costo int)
go

alter table tb_detalle_boleta
add constraint pk_detaboleta primary key (codigo_detalle_boleta)
go

alter table tb_detalle_boleta
add constraint fk_detaboleta foreign key (codigo_detalle_boleta)
references tb_boleta (codigo_boleta)
go

alter table tb_detalle_boleta
add constraint fk_detaboleta_codigo_vehiculo foreign key (detaboleta_codigo_vehiculo)
references tb_vehiculo(codigo_vehiculo)
go

insert into tb_detalle_boleta values
('B0001', 'A1001', 1, 95000),
('B0002', 'A1002', 2, 75000),
('B0003', 'A1003', 3, 85000),
('B0004', 'A1004', 4, 96000),
('B0005', 'A1005', 5, 72000),
('B0006', 'A1006', 1, 65000),
('B0007', 'A1007', 2, 85000),
('B0008', 'A1008', 3, 105000),
('B0009', 'A1009', 4, 110000),
('B0010', 'A1010', 5, 73000),
('B0011', 'A1011', 1, 48000),
('B0012', 'A1012', 2, 89000),
('B0013', 'A1013', 3, 95000),
('B0014', 'A1014', 4, 87000),
('B0015', 'A1015', 5, 72000),
('B0016', 'A1016', 1, 68000),
('B0017', 'A1017', 2, 110000),
('B0018', 'A1018', 3, 98000),
('B0019', 'A1019', 4, 89000),
('B0020', 'A1020', 5, 82000),
('B0021', 'A1001', 1, 95000),
('B0022', 'A1002', 2, 75000),
('B0023', 'A1003', 3, 85000),
('B0024', 'A1004', 4, 96000),
('B0025', 'A1005', 5, 72000),
('B0026', 'A1006', 1, 65000),
('B0027', 'A1007', 2, 85000),
('B0028', 'A1008', 3, 105000),
('B0029', 'A1009', 4, 110000),
('B0030', 'A1010', 5, 73000),
('B0031', 'A1011', 1, 48000),
('B0032', 'A1012', 2, 89000),
('B0033', 'A1013', 3, 95000),
('B0034', 'A1014', 4, 87000),
('B0035', 'A1015', 5, 72000)
go

-- CONSULTAS 

-- Consulta 1: Muestra los clientes que pertenencen a los siguientes departamentos
select codigo_cliente, cliente_codigo_distrito, concat_ws(' ',nombre, ap_paterno ,ap_materno) as 'Nombre Completo', num_dni 
from tb_cliente 
where cliente_codigo_distrito in (select codigo_distrito from tb_distrito
where distrito_codigo_provincia in( select codigo_provincia from tb_provincia 
where provincia_codigo_departamento in (select codigo_departamento from tb_departamento
where departamento in ('Amazonas','Arequipa','Callao','Lima'))))
go

-- Consulta 2: Muestra los clientes que están afiliados a las siguientes compañías
select tb1.codigo_cliente,concat_ws(' ',tb1.nombre,tb1.ap_paterno ,tb1.ap_materno) as 'Nombre Completo',
		tb1.genero, tb1.num_dni,tb2.monto_pagado, concat_ws(' / ',tb3.fecha_inicio,tb3.fecha_vencimiento) as 'Fecha de Inicio y Vencimiento'
		,tb3.prima_seguro,tb4.compañia
from tb_cliente tb1 join tb_boleta_seguro tb2
on (tb2.boleta_codigo_cliente = tb1.codigo_cliente) join tb_seguro tb3
on(tb2.boleta_codigo_seguro = tb3.codigo_seguro) join tb_compañia tb4
on(tb3.seguro_codigo_compañia = tb4.codigo_compañia)
where compañia in ('Rimac Seguros','La Positiva Seguros','BCP Seguros')
go

-- Consulta 3: Muestra los clientes que pertenecen a los siguientes distritos, con sus telefonos y correos
select tb4.codigo_distrito, tb4.distrito, concat_ws(' ',tb1.nombre, tb1.ap_paterno ,tb1.ap_materno) as 'Nombre Completo', 
		tb1.num_dni, tb1.genero, tb2.numero,tb3.correo
from tb_cliente tb1 join tb_tecl tb2
on(tb2.telefono_codigo_cliente = tb1.codigo_cliente) join tb_cocl tb3
on(tb3.correo_codigo_cliente = tb1.codigo_cliente) join tb_distrito tb4
on(tb1.cliente_codigo_distrito = tb4.codigo_distrito)
where distrito in ('Lima','Callao','Huaraz')
go

-- Consulta 4: Muestra a los clientes que cuentan con lo siguiente: codigo del trabajador que le atiende, el tipo de cita, la direccion del local y la hora de atención
select concat_ws(' | ',tb1.codigo_cliente,tb1.num_dni) as 'Cliente', tb2.cita_codigo_trabajador, tb3.tipo, tb4.direccion, tb5.hora_atencion
from tb_cliente tb1 join tb_cita tb2
on(tb2.cita_codigo_cliente = tb1.codigo_cliente) join tb_tipo_cita tb3
on(tb2.cita_codigo_tcita = tb3.codigo_tcita) join tb_local tb4
on(tb2.cita_codigo_local = tb4.codigo_local) join tb_horario tb5
on(tb4.local_codigo_horario = tb5.codigo_horario)
where codigo_horario in ('HR004','HR015','HR011','HR005')
go

-- Consulta 5: Muestra la marca y modelo de cada vehiculo adquirido
select tb1.codigo_vehiculo, tb2.modelo, tb3.marca, tb4.detaboleta_codigo_vehiculo
from tb_vehiculo tb1 INNER JOIN tb_modelo tb2
on(tb1.vehiculo_codigo_modelo = tb2.codigo_modelo) INNER JOIN tb_marca tb3
on(tb2.modelo_codigo_marca = tb3.codigo_marca) INNER JOIN tb_detalle_boleta tb4
on(tb4.detaboleta_codigo_vehiculo = tb1.codigo_vehiculo)
go

-- Consulta 6: Muestra la nacionalidad de cada Proveedor de los Vehiculos
SELECT tb1.codigo_vehiculo, tbm.modelo, tb3.empresa, tb4.nacionalidad
FROM tb_vehiculo tb1 INNER JOIN tb_detalle_vehiculo tb2
ON(tb2.detalle_codigo_vehiculo = tb1.codigo_vehiculo) INNER JOIN tb_modelo tbm
ON(tb1.vehiculo_codigo_modelo = tbm.codigo_modelo) INNER JOIN tb_proveedor tb3
ON(tb2.detavehi_codigo_proveedor = tb3.codigo_proveedor) INNER JOIN tb_nacionalidad tb4
ON(tb3.pro_codigo_nacionalidad = tb4.codigo_nacionalidad)
go

-- Consulta 7: Mostrar al Encargado de Cada Boleta de Seguro Vehicular
SELECT tb1.codigo_vehiculo, tb2.codigo_seguro, CONCAT_WS(' ', tb4.nombre, tb4.ap_paterno, tb4.ap_materno) as trabajador
FROM tb_vehiculo tb1 INNER JOIN tb_seguro tb2
ON(tb2.seguro_codigo_vehiculo = tb1.codigo_vehiculo) INNER JOIN tb_boleta_seguro tb3
ON(tb3.boleta_codigo_seguro = tb2.codigo_seguro) INNER JOIN tb_trabajador tb4
ON(tb3.boleta_codigo_trabajador = tb4.codigo_trabajador)
go

-- Consulta 8: Mostrar los Tipos de Seguro de Cada Vehiculo y la Empresa Aseguradora
SELECT tb1.codigo_vehiculo, tbm.modelo, tb4.cobertura, tb5.compañia
FROM tb_vehiculo tb1 INNER JOIN tb_seguro tb2
ON(tb2.seguro_codigo_vehiculo = tb1.codigo_vehiculo) INNER JOIN tb_modelo tbm
ON(tb1.vehiculo_codigo_modelo = tbm.codigo_modelo) INNER JOIN tb_seguro_cobertura tb3
ON(tb2.codigo_seguro = tb3.sccodigo_seguro) INNER JOIN tb_cobertura tb4
ON(tb4.codigo_cobertura = tb3.sccodigo_cobertura) INNER JOIN tb_compañia tb5
ON(tb2.seguro_codigo_compañia = tb5.codigo_compañia)
go

-- Consulta 9: Muestra el nombre del trabajador, el departamento del local, codigo_seguro, la cobertura que vendió y a qué cliente
select tb2.codigo_trabajador, concat_ws(' ', tb2.nombre, tb2.ap_paterno, tb2.ap_materno) as 'nombre',
tb6.departamento, tb7.codigo_seguro, tb9.cobertura, concat_ws(' ', tb10.nombre, tb10.ap_paterno, tb10.ap_materno) as 'cliente'
from tb_boleta_seguro tb1 inner join tb_trabajador tb2
on (tb1.boleta_codigo_trabajador = tb2.codigo_trabajador) inner join tb_local tb3
on (tb2.trabajador_codigo_local = tb3.codigo_local) inner join tb_distrito tb4 
on (tb3.local_codigo_distrito = tb4.codigo_distrito) inner join tb_provincia tb5
on (tb4.distrito_codigo_provincia = tb5.codigo_provincia) inner join tb_departamento tb6
on (tb5.provincia_codigo_departamento = tb6.codigo_departamento) inner join tb_seguro tb7 
on (tb1.boleta_codigo_seguro = tb7.codigo_seguro) inner join tb_seguro_cobertura tb8
on (tb8.sccodigo_seguro = tb7.codigo_seguro) inner join tb_cobertura tb9
on (tb8.sccodigo_cobertura = tb9.codigo_cobertura) inner join tb_cliente tb10
on (tb1.boleta_codigo_cliente = tb10.codigo_cliente)
where tb6.departamento in ('Amazonas', 'Ica') and tb9.cobertura = 'Seguro contra Robo'
go

-- Consulta 10: Muestra de un trabajador: codigo, nombre completo, distrito del local, cargo y comisión
select tb1.codigo_trabajador, concat_ws(' ', tb1.nombre, tb1.ap_paterno, tb1.ap_materno) as 'nombre',
tb3.distrito as 'distrito_local', tb4.cargo, tb5.mes,  tb5.comision
from tb_trabajador tb1 inner join tb_local tb2
on (tb1.trabajador_codigo_local = tb2.codigo_local) inner join tb_distrito tb3
on (tb2.local_codigo_distrito = tb3.codigo_distrito) inner join tb_cargo tb4
on (tb1.trabajador_codigo_cargo = tb4.codigo_cargo) inner join tb_historial_sueldo tb5
on (tb5.sueldo_codigo_trabajador = tb1.codigo_trabajador)
where tb1.codigo_trabajador in ('TR001', 'TR015', 'TR030') and tb5.mes = 'OC'
go

-- Consulta 11: Muestra de los trabajadores: codigo, nombre completo, codigo_seguro que vendió, cobertura del seguro, compañia
select tb2.codigo_trabajador, concat_ws(' ', tb2.nombre, tb2.ap_paterno, tb2.ap_materno) as 'nombre', 
tb4.codigo_seguro, tb5.cobertura, tb6.compañia
from tb_boleta_seguro tb1 inner join tb_trabajador tb2
on (tb1.boleta_codigo_trabajador = tb2.codigo_trabajador) inner join tb_seguro_cobertura tb3
on (tb3.sccodigo_seguro = tb1.boleta_codigo_seguro) inner join tb_seguro tb4
on (tb3.sccodigo_seguro = tb4.codigo_seguro) inner join tb_cobertura tb5
on (tb3.sccodigo_cobertura = tb5.codigo_cobertura) inner join tb_compañia tb6
on (tb4.seguro_codigo_compañia = tb6.codigo_compañia)
where tb6.compañia = 'Rimac Seguros'
go

-- Consulta 12: Muestra el nombre completo del trabajador, el cargo, el tipo de cita programada, el horario de la cita y el distrito del local 
select tb2.codigo_trabajador, concat_ws(' ', tb2.nombre, tb2.ap_paterno, tb2.ap_materno) as 'nombre',
tb3.cargo, tb4.tipo as 'tipo_cita', tb1.horario, tb6.distrito as 'distrito_local'
from tb_cita tb1 inner join tb_trabajador tb2
on (tb1.cita_codigo_trabajador = tb2.codigo_trabajador) inner join tb_cargo tb3
on (tb2.trabajador_codigo_cargo = tb3.codigo_cargo) inner join tb_tipo_cita tb4
on (tb1.cita_codigo_tcita = tb4.codigo_tcita) inner join tb_local tb5
on (tb1.cita_codigo_local = tb5.codigo_local) inner join tb_distrito tb6
on (tb5.local_codigo_distrito = tb6.codigo_distrito)
where tb6.distrito in ('Independencia', 'San Isidro')
go

-- Consulta 13: Mostrar los datos de la boleta, el modelo y la marca del vehículo
select tbb.codigo_boleta,CONCAT(tbt.nombre,' ',tbt.ap_paterno,' ', tbt.ap_materno) as Trabajador,
	CONCAT(tbc.nombre,' ',tbc.ap_paterno,'', tbc.ap_materno) as Cliente,  tbb.fecha_venta, tbm.modelo, tbma.marca,tbb.monto_pagado
from tb_detalle_boleta tbdb inner join tb_boleta tbb 
on(tbdb.codigo_detalle_boleta = tbb.codigo_boleta) join tb_cliente tbc
on(tbb.boleta_codigo_cliente = tbc.codigo_cliente) join tb_trabajador tbt
on (tbb.boleta_codigo_trabajador = tbt.codigo_trabajador) join tb_vehiculo tbv
on(tbdb.detaboleta_codigo_vehiculo = tbv.codigo_vehiculo) join tb_modelo tbm
on (tbv.vehiculo_codigo_modelo = tbm.codigo_modelo) join tb_marca tbma
on(tbm.modelo_codigo_marca =tbma.codigo_marca)
go

-- Consulta 14: Mostrar el tipo de cobertura y la compañía correspondiente 
select CONCAT(tbt.nombre,' ',tbt.ap_paterno,' ', tbt.ap_materno) as Trabajador,
	CONCAT(tbcl.nombre,' ',tbcl.ap_paterno,'', tbcl.ap_materno) as Cliente, tbs.fecha_inicio, 
	tbs.fecha_vencimiento, tbco.cobertura, tbc.compañia, tbse.monto_pagado
from tb_boleta_seguro tbse inner join tb_seguro tbs
on(tbse.boleta_codigo_seguro = tbs.codigo_seguro) join tb_compañia tbc
on(tbs.seguro_codigo_compañia = tbc.codigo_compañia) join tb_seguro_cobertura tbsc
on(tbsc.sccodigo_seguro = tbs.codigo_seguro) join tb_cobertura tbco
on(tbsc.sccodigo_cobertura = tbco.codigo_cobertura) join tb_cliente tbcl
on(tbse.boleta_codigo_cliente = tbcl.codigo_cliente) join tb_trabajador tbt
on(tbse.boleta_codigo_trabajador = tbt.codigo_trabajador)
go

-- Consulta 15: Consultar por dirección del local de la venta
select tbb.codigo_boleta,CONCAT(tbt.nombre,' ',tbt.ap_paterno,' ', tbt.ap_materno) as Trabajador,
	CONCAT(tbc.nombre,' ',tbc.ap_paterno,'', tbc.ap_materno) as Cliente,  tbmo.modelo, tbma.marca,tbb.monto_pagado, tbb.fecha_venta, tbl.direccion
from tb_boleta tbb inner join tb_trabajador tbt
on(tbb.boleta_codigo_trabajador = tbt.codigo_trabajador) join tb_cliente tbc
on(tbb.boleta_codigo_cliente = tbc.codigo_cliente) join tb_local tbl
on(tbt.trabajador_codigo_local = tbl.codigo_local) join tb_detalle_boleta tbdb
on (tbdb.codigo_detalle_boleta = tbb.codigo_boleta) join tb_vehiculo tbv
on(tbdb.detaboleta_codigo_vehiculo = tbv.codigo_vehiculo) join tb_modelo tbmo
on (tbv.vehiculo_codigo_modelo = tbmo.codigo_modelo) join tb_marca tbma
on(tbmo.modelo_codigo_marca =tbma.codigo_marca)
go

-- Consulta 16: Consultar por proovedor y color del vehiculo
select tbb.codigo_boleta,CONCAT(tbt.nombre,' ',tbt.ap_paterno,' ', tbt.ap_materno) as Trabajador,
	CONCAT(tbc.nombre,' ',tbc.ap_paterno,'', tbc.ap_materno) as Cliente,  tbm.modelo, 
	tbma.marca,tbb.monto_pagado,tbp.empresa, tbdv.color, tbb.fecha_venta 
from tb_detalle_boleta tbdb inner join tb_boleta tbb 
on (tbdb.codigo_detalle_boleta = tbb.codigo_boleta) join  tb_trabajador tbt
on(tbb.boleta_codigo_trabajador = tbt.codigo_trabajador) join tb_cliente tbc
on(tbb.boleta_codigo_cliente = tbc.codigo_cliente) join tb_vehiculo tbv
on (tbdb.detaboleta_codigo_vehiculo = tbv.codigo_vehiculo) join tb_modelo tbm 
on(tbv.vehiculo_codigo_modelo =tbm.codigo_modelo ) join tb_marca tbma
on(tbm.modelo_codigo_marca = tbma.codigo_marca) join tb_detalle_vehiculo tbdv
on(tbdv.detalle_codigo_vehiculo = tbv.codigo_vehiculo) join tb_proveedor tbp
on(tbdv.detavehi_codigo_proveedor = tbp.codigo_proveedor)
go

-- Consulta 17: Mostrar los locales que se encuentren en el departamento de Lima, el distrito al que pertenecen, sus direcciones y sus métodos de contacto
select tbl.codigo_local, tbdi.distrito, tbl.direccion, tbl.correo, tbl.telefono
from tb_local tbl join tb_distrito tbdi
on (tbl.local_codigo_distrito = tbdi.codigo_distrito) join tb_provincia tbp
on (tbdi.distrito_codigo_provincia = tbp.codigo_provincia) join tb_departamento tbde
on (tbp.provincia_codigo_departamento = tbde.codigo_departamento)
where departamento = 'Lima'
go

-- Consulta 18: Mostrar los trabajadores que pertenecen a los siguientes distritos
select concat_ws(' ', tb2.nombre, tb2.ap_paterno, tb2.ap_materno) as 'trabajador(a)', tb1.codigo_local, tb3.hora_atencion
from tb_local tb1 join tb_trabajador tb2 
on (tb1.codigo_local = tb2.trabajador_codigo_local) join tb_horario tb3
on (tb1.local_codigo_horario = tb3.codigo_horario)
where tb1.codigo_local in (select codigo_local from tb_local 
where local_codigo_distrito in (select codigo_distrito from tb_distrito 
where distrito in ('Lima', 'San Isidro', 'Independencia')))
go

-- Consulta 19: Mostrar las provincias donde no hayan locales de Autoland
SELECT tb1.provincia, tb2.distrito
FROM tb_provincia tb1 join tb_distrito tb2
ON (tb1.codigo_provincia = tb2.distrito_codigo_provincia)
WHERE tb2.codigo_distrito NOT IN (SELECT DISTINCT local_codigo_distrito FROM tb_local)
GO

-- Consulta 20: Mostrar las boletas realizadas en los siguientes locales: 
select tb.codigo_boleta,
(select concat_ws (' ', nombre, ap_paterno, ap_materno) from tb_trabajador where codigo_trabajador = tb.boleta_codigo_trabajador) as 'trabajador(a)',
tb.fecha_venta,tbd.cantidad, tbd.costo, tb.monto_pagado
from tb_boleta tb join tb_detalle_boleta tbd
on (tb.codigo_boleta = tbd.codigo_detalle_boleta)
where tb.boleta_codigo_trabajador in (select codigo_trabajador from tb_trabajador 
where trabajador_codigo_local in (select codigo_local from tb_local
where codigo_local in ('L0001', 'L0015', 'L0026')))
go

-------------------------------------------------------------------------------------------------------------------------
--  STORED PROCEDURE

-- Procedure 1: Vehiculos que vendimos a Clientes Limeños
CREATE PROCEDURE sp_vehiculo_por_departamento_cliente
@departamento VARCHAR(35)
AS
BEGIN
	SELECT tb1.codigo_vehiculo, tb5.distrito, tb6.provincia, tb7.departamento
	FROM tb_vehiculo tb1 INNER JOIN tb_detalle_boleta tb2
	ON(tb1.codigo_vehiculo = tb2.detaboleta_codigo_vehiculo) INNER JOIN tb_boleta tb3
	ON(tb2.codigo_detalle_boleta = tb3.codigo_boleta) INNER JOIN tb_modelo tbm
	ON(tb1.vehiculo_codigo_modelo = tbm.codigo_modelo) INNER JOIN tb_cliente tb4
	ON(tb3.boleta_codigo_cliente = tb4.codigo_cliente) INNER JOIN tb_distrito tb5
	ON(tb4.cliente_codigo_distrito = tb5.codigo_distrito) INNER JOIN tb_provincia tb6
	ON(tb5.distrito_codigo_provincia = tb6.codigo_provincia) INNER JOIN tb_departamento tb7
	ON(tb6.provincia_codigo_departamento = tb7.codigo_departamento)
	WHERE tb7.departamento = @departamento
END
GO

--drop procedure sp_vehiculo_por_departamento_cliente 
--go

EXECUTE sp_vehiculo_por_departamento_cliente 'Lima'
GO

-- Procedure 2: Mostrar los Modelos y Detalles de acuerdo de los Vehiculos Nuevos
CREATE PROCEDURE sp_vehiculo_por_estado
@estado CHAR(1)
AS
BEGIN
	SELECT tb1.codigo_vehiculo, tb2.modelo, tb3.marca, tb4.color, tb4.rueda, tb4.motor, tb4.transmision, tb4.capacidad
	FROM tb_vehiculo tb1 INNER JOIN tb_modelo tb2
	ON(tb1.vehiculo_codigo_modelo = tb2.codigo_modelo) INNER JOIN tb_marca tb3
	ON(tb2.modelo_codigo_marca = tb3.codigo_marca) INNER JOIN tb_detalle_vehiculo tb4
	ON(tb4.detalle_codigo_vehiculo = tb1.codigo_vehiculo)
	WHERE tb1.estado = estado
END
GO

--drop procedure sp_vehiculo_por_estado 
--go

EXECUTE sp_vehiculo_por_estado 'N'
GO

--Procedure 3: Clientes que adquirieron un Vehiculo Ford
CREATE PROCEDURE sp_datos_clientes_vehiculo
@marca VARCHAR(30)
AS
BEGIN
	SELECT tb1.codigo_vehiculo, tb5.modelo, CONCAT_WS(' ', tb4.nombre, tb4.ap_paterno, tb4.ap_materno) 'cliente'
	FROM tb_vehiculo tb1 INNER JOIN tb_detalle_boleta tb2
	ON(tb1.codigo_vehiculo = tb2.detaboleta_codigo_vehiculo) INNER JOIN tb_boleta tb3
	ON(tb2.codigo_detalle_boleta = tb3.codigo_boleta) INNER JOIN tb_cliente tb4
	ON(tb3.boleta_codigo_cliente = tb4.codigo_cliente) INNER JOIN tb_modelo tb5
	ON(tb1.vehiculo_codigo_modelo = tb5.codigo_modelo) INNER JOIN tb_marca tb6
	ON(tb5.modelo_codigo_marca = tb6.codigo_marca) 
	WHERE tb6.marca = @marca
END
GO

--drop procedure sp_datos_clientes_vehiculo 
--go

EXECUTE sp_datos_clientes_vehiculo 'Ford'
GO

--Procedure 4: Mostrar los Vehiculos asegurados por Pacífico Seguros
CREATE PROCEDURE sp_vehiculo_por_empresa_seguro
@compañia VARCHAR(30)
AS
BEGIN
	SELECT tb1.codigo_vehiculo, tbm.modelo, tb4.cobertura
	FROM tb_vehiculo tb1 INNER JOIN tb_seguro tb2
	ON(tb2.seguro_codigo_vehiculo = tb1.codigo_vehiculo) INNER JOIN tb_modelo tbm
	ON(tb1.vehiculo_codigo_modelo = tbm.codigo_modelo) INNER JOIN tb_seguro_cobertura tb3
	ON(tb2.codigo_seguro = tb3.sccodigo_seguro) INNER JOIN tb_cobertura tb4
	ON(tb4.codigo_cobertura = tb3.sccodigo_cobertura) INNER JOIN tb_compañia tb5
	ON(tb2.seguro_codigo_compañia = tb5.codigo_compañia)
	WHERE compañia = @compañia
END
GO

--drop procedure sp_datos_clientes_vehiculo 
--go

EXECUTE sp_vehiculo_por_empresa_seguro 'Pacífico Seguros'
GO

--Procedure 5: Vehiculos vendidos en Locales del Cuzco
CREATE PROCEDURE sp_vehiculo_por_trabajador_provincia
@local VARCHAR(35)
AS
BEGIN
	SELECT tb1.codigo_vehiculo, CONCAT_WS(' ', tb4.nombre, tb4.ap_paterno, tb4.ap_materno) as Trabajador, tb5.cargo, tb6.direccion
	FROM tb_vehiculo tb1 INNER JOIN tb_detalle_boleta tb2
	ON(tb2.detaboleta_codigo_vehiculo  = tb1.codigo_vehiculo) INNER JOIN tb_boleta tb3
	ON(tb2.codigo_detalle_boleta = tb3.codigo_boleta) INNER JOIN tb_trabajador tb4
	ON(tb3.boleta_codigo_trabajador = tb4.codigo_trabajador) INNER JOIN tb_cargo tb5
	ON(tb4.trabajador_codigo_cargo = tb5.codigo_cargo) INNER JOIN tb_local tb6
	ON(tb4.trabajador_codigo_local = tb6.codigo_local) INNER JOIN tb_distrito tb7
	ON(tb6.local_codigo_distrito = tb7.codigo_distrito) INNER JOIN tb_provincia tb8
	ON(tb7.distrito_codigo_provincia = tb8.codigo_provincia)
	WHERE tb8.provincia = @local
END
GO

--drop procedure sp_vehiculo_por_trabajador_provincia 
--go

EXECUTE sp_vehiculo_por_trabajador_provincia 'Cusco'
GO

--Procedure 6: Vehiculos adquiridos por Clientes, de la Categoria Sedán
CREATE PROCEDURE sp_vehiculos_por_categoria
@cate VARCHAR(30)
AS
BEGIN
	SELECT tb1.codigo_vehiculo, tb5.modelo, CONCAT_WS(' ', tb4.nombre, tb4.ap_paterno, tb4.ap_materno) 'cliente'
	FROM tb_vehiculo tb1 INNER JOIN tb_detalle_boleta tb2
	ON(tb1.codigo_vehiculo = tb2.detaboleta_codigo_vehiculo) INNER JOIN tb_boleta tb3
	ON(tb2.codigo_detalle_boleta = tb3.codigo_boleta) INNER JOIN tb_cliente tb4
	ON(tb3.boleta_codigo_cliente = tb4.codigo_cliente) INNER JOIN tb_modelo tb5
	ON(tb1.vehiculo_codigo_modelo = tb5.codigo_modelo) INNER JOIN tb_marca tb6
	ON(tb5.modelo_codigo_marca = tb6.codigo_marca) INNER JOIN tb_categoria tb7
	ON(tb1.vehiculo_codigo_categoria = tb7.codigo_categoria)
	WHERE tb7.categoria = @cate
END
GO

--drop procedure sp_vehiculos_por_categoria 
--go

EXECUTE sp_vehiculos_por_categoria 'Sedán'
GO

--Procedure 7: Muestra por categoria: el nombre completo del cliente, el codigo de boleta, el codigo de seguro, el estado del vehiculo
--el año del vehiculo y su categoria.
create procedure sp_listar_cliente_por_categoria
@categoria varchar (40)
as
begin
	select concat_ws(' ',tb1.nombre,tb1.ap_paterno,tb1.ap_materno) as 'Nombre Completo', tb2.boleta_codigo_cliente,tb3.codigo_seguro,
		'estado' = case tb4.estado
				when 'N' then 'Nuevo'
				when 'S' then 'SemiNuevo'
				when 'U' then 'Usado'end, tb4.año,tb5.categoria
	from tb_cliente tb1 join tb_boleta_seguro tb2
	on (tb2.boleta_codigo_cliente = tb1.codigo_cliente) join tb_seguro tb3
	on(tb2.boleta_codigo_seguro = tb3.codigo_seguro) join tb_vehiculo tb4
	on(tb3.seguro_codigo_vehiculo = tb4.codigo_vehiculo) join tb_categoria tb5
	on(tb4.vehiculo_codigo_categoria = tb5.codigo_categoria)
	where tb5.categoria = @categoria
end
go

--drop procedure sp_listar_cliente_por_categoria
--go

execute sp_listar_cliente_por_categoria 'Deportivo'
go

--Procedure 8: Muestra por codigo provincia, los clientes que pertenence a distrito,provincia, su nombre completo, el numero de dni, el tipo de telefono, 
--el numero de telefono, el tipo de correo y el correo.
create procedure sp_listar_cliente_por_codigo_provincia
@codigo_provincia char (5)
as
begin
	select tb4.codigo_distrito, tb4.distrito,tb5.provincia,concat_ws(' ',tb1.nombre, tb1.ap_paterno ,tb1.ap_materno) as 'Nombre Completo', 
			tb1.num_dni,'tipo'=case tb2.tipo            
										when 'C' then 'Casa'
										when 'P' then 'Personal'
										when 'T' then 'Trabajo' end,
			tb2.numero,'tipo'= case tb3.tipo
							when 'P' then'Personal'
							when 'T' then 'Trabajo'end,tb3.correo
	from tb_cliente tb1 join tb_tecl tb2
	on(tb2.telefono_codigo_cliente = tb1.codigo_cliente) join tb_cocl tb3
	on(tb3.correo_codigo_cliente = tb1.codigo_cliente) join tb_distrito tb4
	on(tb1.cliente_codigo_distrito = tb4.codigo_distrito) join tb_provincia tb5
	on(tb4.distrito_codigo_provincia = tb5.codigo_provincia)
	where codigo_provincia = @codigo_provincia
end
go

--drop procedure sp_listar_cliente_por_codigo_provincia
--go

execute sp_listar_cliente_por_codigo_provincia 'PR001'
go

--Procedure 9: Muestra por codigo de distrito, el cliente con su codigo, nombres y numero de dni, tambien su genero, el codigo del trabajador de la cita,
--la descripcion de la cita solicitada, la direccion, el distrito y la hora de atencion.
create procedure sp_listar_cliente_por_codigo_distrito 
@codigo_distrito char(5)
as
begin
	select concat_ws(' | ',tb1.codigo_cliente,tb1.nombre,tb1.num_dni) as 'Cliente',
				iif(genero = 'F','Femenino','Masculino') 'género' ,tb2.cita_codigo_trabajador, tb3.descripcion, tb4.direccion,tb6.distrito, tb5.hora_atencion
	from tb_cliente tb1 join tb_cita tb2
	on(tb2.cita_codigo_cliente = tb1.codigo_cliente) join tb_tipo_cita tb3
	on(tb2.cita_codigo_tcita = tb3.codigo_tcita) join tb_local tb4
	on(tb2.cita_codigo_local = tb4.codigo_local) join tb_horario tb5
	on(tb4.local_codigo_horario = tb5.codigo_horario) join tb_distrito tb6
	on(tb4.local_codigo_distrito = tb6.codigo_distrito)
	where codigo_distrito = @codigo_distrito
end
go

--drop procedure sp_listar_cliente_por_codigo_distrito 
--go

execute  sp_listar_cliente_por_codigo_distrito 'D0009'
go

--Procedure 10: Muestra por codigo de vehiculo, el codigo del cliente, el cliente en si,el codigo de boleta, la cantidad de vehiculos que compro
--el año de fabricacion del vehiculo, el modelo y la marca que pertenece.
create procedure sp_listar_cliente_por_codigo_vehiculo
@codigo_vehiculo char(5)
as
begin
	select tb4.codigo_vehiculo,tb1.codigo_cliente, concat_ws(' ',tb1.nombre,tb1.ap_paterno,tb1.ap_materno) as 'Cliente',
	tb2.codigo_boleta,tb3.cantidad,tb4.año,tb5.modelo,tb6.marca
	from tb_cliente tb1 join tb_boleta tb2
	on(tb2.boleta_codigo_cliente = tb1.codigo_cliente) join tb_detalle_boleta tb3
	on(tb3.codigo_detalle_boleta = tb2.codigo_boleta) join tb_vehiculo tb4
	on(tb3.detaboleta_codigo_vehiculo = tb4.codigo_vehiculo) join tb_modelo tb5
	on(tb4.vehiculo_codigo_modelo = tb5.codigo_modelo) join tb_marca tb6
	on(tb5.modelo_codigo_marca = tb6.codigo_marca)
	where codigo_vehiculo = @codigo_vehiculo
end
go

--drop procedure sp_listar_cliente_por_codigo_vehiculo
--go

execute sp_listar_cliente_por_codigo_vehiculo 'A1002'
go

--Procedure 11: Muestra por departamento: el codigo del cliente, la provincia y departamento que pertenece, su nombre completo,
--el codigo de la cita y el horario.
create procedure sp_listar_cliente_por_departamento
@departamento varchar(30)
as
begin
select tb1.codigo_cliente, tb3.provincia,tb4.departamento, concat_ws(' ',tb1.nombre, tb1.ap_paterno ,tb1.ap_materno) as 'Nombre Completo', 
		tb5.codigo_cita, tb5.horario
from tb_cliente tb1 join tb_distrito tb2
on(tb1.cliente_codigo_distrito = tb2.codigo_distrito) join tb_provincia tb3
on(tb2.distrito_codigo_provincia = tb3.codigo_provincia) join tb_departamento tb4
on(tb3.provincia_codigo_departamento = tb4.codigo_departamento) join tb_cita tb5
on(tb5.cita_codigo_cliente = tb1.codigo_cliente)
where departamento = @departamento
end
go

--drop procedure sp_listar_cliente_por_departamento
--go

execute sp_listar_cliente_por_departamento 'Lima'
go

--Procedure 12: Muestra por codigo de cobertura: el nombre completo del cliente, su fecha de nacimiento, la fecha de la venta, 
--el codigo del seguro y la cobertura.
create procedure sp_listar_cliente_por_codigo_cobertura
@codigo_cobertura char (5)
as
begin
	select concat_ws(' ',tb1.nombre, tb1.ap_paterno ,tb1.ap_materno) as 'Cliente', tb1.fecha_nacimiento, tb2.fecha_venta,tb3.codigo_seguro,
	tb5.cobertura
	from tb_cliente tb1 join tb_boleta_seguro tb2
	on(tb2.boleta_codigo_cliente = tb1.codigo_cliente) join tb_seguro tb3
	on(tb2.boleta_codigo_seguro = tb3.codigo_seguro) join tb_seguro_cobertura tb4
	on(tb4.sccodigo_seguro = tb3.codigo_seguro) join tb_cobertura tb5
	on(tb4.sccodigo_cobertura = tb5.codigo_cobertura)
	where codigo_cobertura = @codigo_cobertura
end
go

--drop procedure sp_listar_cliente_por_codigo_cobertura
--go

execute sp_listar_cliente_por_codigo_cobertura 'CB003'
go

--Procedure 13: Listar vehiculo vendido por el provedoor
create proc sp_listar_vehiculo_por_proveedor
@proveedor varchar(30)
as
begin
	select tbb.codigo_boleta,CONCAT(tbt.nombre,' ',tbt.ap_paterno,' ', tbt.ap_materno) as Trabajador,
	CONCAT(tbc.nombre,' ',tbc.ap_paterno,'', tbc.ap_materno) as Cliente,  tbb.fecha_venta, tbm.modelo,tbb.monto_pagado,tbm.modelo, 
	tbma.marca ,tbp.direccion, tbp.telefono, tbn.nacionalidad
	from tb_detalle_boleta tbdb inner join tb_boleta tbb
	on(tbdb.codigo_detalle_boleta = tbb.codigo_boleta) join tb_cliente tbc
	on(tbb.boleta_codigo_cliente = tbc.codigo_cliente) join tb_trabajador tbt
	on (tbb.boleta_codigo_trabajador = tbt.codigo_trabajador)join tb_vehiculo tbv 
	on(tbdb.detaboleta_codigo_vehiculo = tbv.codigo_vehiculo) join tb_modelo tbm 
	on(tbv.vehiculo_codigo_modelo = tbm.codigo_modelo ) join tb_detalle_vehiculo tbdv
	on(tbdv.detalle_codigo_vehiculo = tbv.codigo_vehiculo) join tb_proveedor tbp
	on(tbdv.detavehi_codigo_proveedor = tbp.codigo_proveedor) join tb_nacionalidad tbn
	on(tbp.pro_codigo_nacionalidad = tbn.codigo_nacionalidad) join tb_marca tbma
	on (tbm.modelo_codigo_marca = tbma.codigo_marca)
	where empresa = @proveedor
end
go

--drop procedure sp_listar_vehiculo_por_proveedor 
--go

exec sp_listar_vehiculo_por_proveedor 'Toyota'
go

--Procedure 14: Mostrar la cantidad de autos por vendedor
create proc sp_cant_de_autos_vendidos_por_vendedor
@cod_trabajador varchar(5)
as
begin 
	select  CONCAT(tbt.nombre,' ',tbt.ap_paterno,' ', tbt.ap_materno) as trabajador, tbb.fecha_venta, tbb.monto_pagado,
	CONCAT(tbc.nombre,' ',tbc.ap_paterno,' ', tbc.ap_materno) as cliente, tbdb.cantidad, tbdb.costo, tbm.modelo
	from tb_detalle_boleta tbdb inner join tb_boleta tbb
	on(tbdb.codigo_detalle_boleta = tbb.codigo_boleta) join tb_trabajador tbt
	on(tbb.boleta_codigo_trabajador = tbt.codigo_trabajador) join tb_cliente tbc
	on(tbb.boleta_codigo_cliente = tbc.codigo_cliente) join tb_vehiculo tbv
	on(tbdb.detaboleta_codigo_vehiculo = tbv.codigo_vehiculo) join tb_modelo tbm
	on (tbv.vehiculo_codigo_modelo = tbm.codigo_modelo)
	where codigo_trabajador = @cod_trabajador
end
go

--drop procedure sp_cant_de_autos_vendidos_por_vendedor 
--go

exec sp_cant_de_autos_vendidos_por_vendedor 'TR001'
go

--Procedure 15: Listar boleta por empresa del seguro
create proc sp_listar_boleta_por_seguro
@seguro varchar(30)
as
begin
	select tbbs.fecha_venta, tbbs.monto_pagado, tbs.prima_seguro, tbs.fecha_inicio, tbs.fecha_vencimiento, tbm.modelo, tbc.compañia
	from tb_boleta_seguro tbbs inner join tb_seguro tbs
	on(tbbs.boleta_codigo_seguro = tbs.codigo_seguro) join tb_compañia tbc
	on(tbs.seguro_codigo_compañia = tbc.codigo_compañia) join tb_vehiculo tbv
	on(tbs.seguro_codigo_vehiculo = tbv.codigo_vehiculo) join tb_modelo tbm 
	on(tbv.vehiculo_codigo_modelo = tbm.codigo_modelo)
	where compañia = @seguro
end
go

--drop procedure sp_listar_boleta_por_seguro 
--go

exec sp_listar_boleta_por_seguro 'Interseguro'
go

--Procedure 16: Listar trabajador por cargo
create proc sp_listar_trabajador_por_cargo
@cargo varchar(50)
as
begin
		select tbt.nombre, CONCAT(tbt.ap_paterno,' ', tbt.ap_materno) as apellido, tbc.cargo, tbt.num_dni, tbd.distrito
		from tb_trabajador tbt inner join tb_cargo tbc
		on(tbt.trabajador_codigo_cargo = tbc.codigo_cargo) join tb_distrito tbd
		on(tbt.trabajador_codigo_distrito = tbd.codigo_distrito) join tb_provincia tbp
		on(tbd.distrito_codigo_provincia = tbp.codigo_provincia) join  tb_departamento tbdp
		on(tbp.provincia_codigo_departamento = tbdp.codigo_departamento)
		where cargo = @cargo
end
go

--drop procedure sp_listar_trabajador_por_cargo 
--go

exec sp_listar_trabajador_por_cargo 'Gerente Local'
go

--Procedure 17: Listar boleta por fecha de venta
create proc sp_listar_boleta_por_fecha_de_venta
@fecha_1 date,
@fecha_2 date
as
begin 
	select tbb.codigo_boleta, CONCAT(tbt.nombre,' ',tbt.ap_paterno,' ', tbt.ap_materno) as Trabajador,
	CONCAT(tbc.nombre,' ',tbc.ap_paterno,' ', tbc.ap_materno) as Cliente, tbdb.costo, tbdb.cantidad,
	tbm.modelo, tbma.marca, tbb.fecha_venta
	from tb_boleta tbb inner join tb_trabajador tbt
	on(tbb.boleta_codigo_trabajador = tbt.codigo_trabajador) join tb_cliente tbc
	on(tbb.boleta_codigo_cliente = tbc.codigo_cliente) join tb_detalle_boleta tbdb
	on(tbdb.codigo_detalle_boleta = tbb.codigo_boleta) join tb_vehiculo tbv
	on(tbdb.detaboleta_codigo_vehiculo = tbv.codigo_vehiculo) join tb_modelo tbm
	on (tbv.vehiculo_codigo_modelo = tbm.codigo_modelo) join tb_marca tbma
	on(tbm.modelo_codigo_marca =tbma.codigo_marca)
	where fecha_venta >= @fecha_1 and fecha_venta <=@fecha_2
end
go

--drop procedure sp_listar_boleta_por_fecha_de_venta 
--go

exec sp_listar_boleta_por_fecha_de_venta '2023-01-27', '2023-07-27'
go

--Procedure 18: Listar boleta por local
create proc sp_listar_boleta_por_local_distrito
@Distrito varchar(30)
as
begin 
	select tbbs.codigo_boleta_seguro, CONCAT(tbt.nombre,' ',tbt.ap_paterno,' ', tbt.ap_materno) as Trabajador,
	CONCAT(tbcl.nombre,' ',tbcl.ap_paterno,'', tbcl.ap_materno) as Cliente, tbbs.monto_pagado, tbbs.fecha_venta, 
	tbc.compañia, tbl.direccion, tbd.distrito
	from tb_boleta_seguro tbbs inner join tb_trabajador tbt
	on (tbbs.boleta_codigo_trabajador = tbt.codigo_trabajador) join tb_cliente tbcl
	on(tbbs.boleta_codigo_cliente = tbcl.codigo_cliente)join tb_local tbl
	on (tbt.trabajador_codigo_local = tbl.codigo_local) join tb_distrito tbd
	on(tbl.local_codigo_distrito = tbd.codigo_distrito)join tb_seguro tbs
	on(tbbs.boleta_codigo_seguro = tbs.codigo_seguro) join tb_compañia tbc
	on(tbs.seguro_codigo_compañia = tbc.codigo_compañia)
	where distrito = @Distrito
end
go

--drop procedure sp_listar_boleta_por_local_distrito 
--go

exec sp_listar_boleta_por_local_distrito 'Huaraz'
go

--Procedure 19: Mostrar la lista de locales donde contenga: codigo_local, distrito, dirección, dias_aplicables, hora de atención y teléfono 
create procedure sp_listar_local
	@horario varchar(30)
as
begin
	select tb2.codigo_local, tb3.distrito, tb2.direccion,
	'días_aplicables' = case tb1.dias_aplicables
			   when 'LMXJVSD' then 'Lunes, Martes, Miércoles, Jueves, Viernes, Sábado, Domingo'
			   when 'LMXJVS' then 'Lunes, Martes, Miércoles, Jueves, Viernes, Sábado'
			   when 'LXV' then 'Lunes, Miércoles, Viernes'
			   when 'MJS' then 'Martes, Jueves, Sábado'
			   when 'SD' then 'Sábado, Domingo' 
			   else 'Desconocido' end, tb1.hora_atencion, tb2.telefono
	from tb_horario tb1 join tb_local tb2
	on (tb1.codigo_horario = tb2.local_codigo_horario) join tb_distrito tb3
	on (tb2.local_codigo_distrito = tb3.codigo_distrito)
	where descripcion = @horario
end 
go

--drop procedure sp_listar_local
--go

execute sp_listar_local 'Días Selectos'
go

--Procedure 20: Mostrar la lista de trabajadores que se encuentren en cada local (por código de local)
create procedure sp_listar_trabajador_por_local
	@local char(5)
as
begin
	select concat_ws(' ', tb2.nombre, tb2.ap_paterno, tb2.ap_materno) as 'trabajador(a)', 
	iif(genero = 'F','Femenino','Masculino') 'género', tb2.fecha_contratacion, 
	tb3.cargo, tb3.sueldo, tb4.hora_atencion as 'horario'
	from tb_local tb1 join tb_trabajador tb2
	on (tb1.codigo_local = tb2.trabajador_codigo_local) join tb_cargo tb3
	on (tb2.trabajador_codigo_cargo = tb3.codigo_cargo) join tb_horario tb4
	on (tb1.local_codigo_horario = tb4.codigo_horario)
	where codigo_local = @local
end 
go

--drop procedure sp_listar_trabajador_por_local
--go

execute sp_listar_trabajador_por_local 'L0023'
go

--Procedure 21: Mostrar la lista de citas reservadas que se encuentran en un local
create procedure sp_listar_cita_por_local
	@local char(5)
as
begin
	select tb3.codigo_cita, tb3.cita_codigo_cliente, tb4.tipo, tb1.codigo_local, tb2.distrito, tb3.horario
	from tb_local tb1 join tb_distrito tb2
	on (tb1.local_codigo_distrito =  tb2.codigo_distrito) join tb_cita tb3
	on (tb1.codigo_local = tb3.cita_codigo_local) join tb_tipo_cita tb4
	on (tb3.cita_codigo_tcita = tb4.codigo_tcita)
	where codigo_local = @local
end 
go

--drop procedure sp_listar_cita_por_local
--go

execute sp_listar_cita_por_local 'L0035'
go

--Procedure 22: Mostrar la lista de los clientes que realizaron compras en cada local
create procedure sp_listar_clientes_por_local
	@lugar_compra char(5)
as
begin
	select concat_ws(' ', tb1.nombre, tb1.ap_paterno, tb1.ap_materno) as 'cliente', 
	iif(tb1.genero = 'F','Femenino','Masculino') 'género', tb2.fecha_venta, tb6.provincia, tb4.direccion
	from tb_cliente tb1 join tb_boleta tb2
	on (tb1.codigo_cliente = tb2.boleta_codigo_cliente) join tb_trabajador tb3
	on (tb2.boleta_codigo_trabajador = tb3.codigo_trabajador) join tb_local tb4
	on (tb3.trabajador_codigo_local = tb4.codigo_local) join tb_distrito tb5
	on (tb4.local_codigo_distrito = tb5.codigo_distrito) join tb_provincia tb6
	on (tb5.distrito_codigo_provincia = tb6.codigo_provincia)
	where codigo_local = @lugar_compra
end 
go

--drop procedure sp_listar_clientes_por_local
--go

execute sp_listar_clientes_por_local 'L0015'
go

--Procedure 23: Listar los datos que tiene un trabajador según el código de trabajador
create procedure sp_listar_datos_trabajador
	@trabajador char (5)
as
begin
	select concat_ws(' ',tb1.nombre, tb1.ap_paterno ,tb1.ap_materno) as 'Nombre Completo', tb4.distrito, tb1.num_dni,
			'tipo_numero'=case tb2.tipo            
						when 'C' then 'Casa'
						when 'P' then 'Personal'
						when 'T' then 'Trabajo' end,
			tb2.numero,'tipo_correo'= case tb3.tipo
							when 'P' then'Personal'
							when 'T' then 'Trabajo'end,tb3.correo
	from tb_trabajador tb1 join tb_tetr tb2
	on(tb2.tetr_codigo_trabajador = tb1.codigo_trabajador) join tb_cotr tb3
	on(tb3.cotr_codigo_trabajador = tb1.codigo_trabajador) join tb_distrito tb4
	on(tb1.trabajador_codigo_distrito = tb4.codigo_distrito)
	where codigo_trabajador = @trabajador
end
go

--drop procedure sp_listar_datos_trabajador
--go

execute sp_listar_datos_trabajador 'TR001'
go

--Procedure 24: Listar el sueldo que obtuvo un trabajador en cierto periodo de tiempo
create procedure sp_listar_sueldo_trabajador
	@cod_trabajador char (5)
as
begin
	select concat_ws(' ',tbt.nombre, tbt.ap_paterno ,tbt.ap_materno) as 'trabajador(a)', tbc.cargo, tbd.distrito as 'distrito_local',
			'mes'= case tbhs.mes            
						when 'EN' then 'Enero'
						when 'FB' then 'Febrero'
						when 'MR' then 'Marzo'
						when 'AB' then 'Abril'
						when 'MY' then 'Mayo'
						when 'JN' then 'Junio'
						when 'JL' then 'Julio'
						when 'AG' then 'Agosto'
						when 'SP' then 'Septiembre'
						when 'OC' then 'Octubre'
						when 'NV' then 'Noviembre'
						when 'DC' then 'Diciembre' end, tbc.sueldo, tbhs.horas_trabajadas, tbhs.pago_hora
	from tb_trabajador tbt join tb_historial_sueldo tbhs
	on (tbt.codigo_trabajador = tbhs.sueldo_codigo_trabajador) join tb_distrito tbd 
	on (tbt.trabajador_codigo_distrito = tbd.codigo_distrito) join tb_cargo tbc
	on (tbt.trabajador_codigo_cargo = tbc.codigo_cargo)
	where codigo_trabajador = @cod_trabajador
end
go
--drop procedure sp_listar_sueldo_trabajador
--go
execute sp_listar_sueldo_trabajador 'TR001'
go

--Procedure 25: Listar los trabajador por sueldo
create procedure sp_listar_por_sueldo
 @sueldo_min int,
 @sueldo_max int
as
begin
	select tbt.nombre,CONCAT(tbt.ap_paterno,' ', tbt.ap_materno) as apellidos, tbd.distrito,
	iif(genero = 'M', 'Masculino', 'Femenino') 'género', sueldo = tbs.horas_trabajadas * tbs.pago_hora
	from tb_historial_sueldo tbs inner join tb_trabajador tbt
	on(tbs.sueldo_codigo_trabajador = tbt.codigo_trabajador) join tb_distrito tbd
	on(tbt.trabajador_codigo_distrito = tbd.codigo_distrito)
	where horas_trabajadas * pago_hora >=@sueldo_min and  horas_trabajadas * tbs.pago_hora <=@sueldo_max
end
go

-- drop procedure sp_listar_por_sueldo
-- go

execute sp_listar_por_sueldo 1200, 1500
go

--Procedure 26: Obtener la comisión del trabajador por mes
create procedure sp_obtener_comision_por_mes
    @codigo_trabajador char(5),
    @mes char(2)
as
begin
    select tb1.codigo_trabajador, concat_ws(' ', tb1.nombre, tb1.ap_paterno, tb1.ap_materno) as 'nombre',
    tb2.cargo, tb3.mes, tb3.comision
    from tb_trabajador tb1 inner join tb_cargo tb2
    on (tb1.trabajador_codigo_cargo = tb2.codigo_cargo) inner join tb_historial_sueldo tb3
    on (tb3.sueldo_codigo_trabajador = tb1.codigo_trabajador)
    where codigo_trabajador = @codigo_trabajador
    and mes = @mes
end
go

-- drop procedure sp_obtener_comision_por_mes
-- go

execute sp_obtener_comision_por_mes 'TR035', 'MR'
go

--Procedure 27: Obtendremos al trabajador que atendió a los clientes dependiendo el monto que pagaron 
create procedure sp_obtener_trabajador_por_monto_pago
    @monto_pagado int
as
begin
    select tb2.codigo_trabajador, concat_ws(' ', tb2.nombre, tb2.ap_paterno, tb2.ap_materno) as 'nombre_trabajador',
    tb3.nombre as 'cliente', tb1.monto_pagado, tb5.distrito
    from tb_boleta tb1 inner join tb_trabajador tb2
    on (tb1.boleta_codigo_trabajador = tb2.codigo_trabajador) inner join tb_cliente tb3
    on (tb1.boleta_codigo_cliente = tb3.codigo_cliente) inner join tb_local tb4
    on (tb2.trabajador_codigo_local = tb4.codigo_local) inner join tb_distrito tb5
    on (tb4.local_codigo_distrito = tb5.codigo_distrito)
    where monto_pagado = @monto_pagado
end
go

-- drop procedure sp_obtener_trabajador_por_monto_pago
-- go

execute sp_obtener_trabajador_por_monto_pago 94000
go

--Procedure 28: Obtenemos la información de la cobertura del seguro comprado por el cliente
create procedure sp_obtener_cobertura_por_cliente
    @codigo_cliente char(5)
as
begin
    select tb3.codigo_cliente, concat_ws(' ',tb3.nombre, tb3.ap_paterno, tb3.ap_materno) as 'cliente',
    tb2.codigo_seguro, tb5.cobertura
    from tb_boleta_seguro tb1 inner join tb_seguro tb2
    on (tb1.boleta_codigo_seguro= tb2.codigo_seguro) inner join tb_cliente tb3
    on (tb1.boleta_codigo_cliente= tb3.codigo_cliente) inner join tb_seguro_cobertura tb4
    on (tb4.sccodigo_seguro = tb2.codigo_seguro) inner join tb_cobertura tb5
    on (tb4.sccodigo_cobertura = tb5.codigo_cobertura)
    where codigo_cliente = @codigo_cliente
end
go

-- drop procedure sp_obtener_cobertura_por_cliente
-- go

execute sp_obtener_cobertura_por_cliente 'C0001'
go

--Procedure 29: Muestra el trabajador que atendió dicha cita, codigo_trabajador, nombre completo, codiog_cita, cliente, horario
create procedure sp_listar_trabajador_por_citas
    @codigo_cita char(5)
as
begin
    select tb1.codigo_trabajador, concat_ws(' ', tb1.nombre, tb1.ap_paterno, tb1.ap_materno) as 'nombre_trabajador',
           tb2.codigo_cita,  
           concat_ws(' ', tb3.nombre, tb3.ap_paterno, tb3.ap_materno) as 'cliente', tb2.horario
    from tb_trabajador tb1 inner join tb_cita tb2 
    on (tb2.cita_codigo_trabajador = tb1.codigo_trabajador) inner join tb_cliente tb3 
    on (tb2.cita_codigo_cliente = tb3.codigo_cliente) inner join tb_boleta_seguro tb4 
    on (tb4.boleta_codigo_cliente = tb3.codigo_cliente) 
    where codigo_cita = @codigo_cita
end
go

-- drop procedure sp_listar_trabajador_por_citas
-- go

execute sp_listar_trabajador_por_citas 'AP001'
go

-- Procedure 30: Obtendremos la compañia, la cobertura, seguro y el trabajador que lo vendió
create procedure sp_obtener_compañia_de_cobertura_de_seguro
    @compañia varchar(30)
as
begin
    select tb2.codigo_trabajador, concat_ws(' ', tb2.nombre, tb2.ap_paterno, tb2.ap_materno) as 'nombre',
    tb3.codigo_seguro, tb5.cobertura, tb6.compañia
    from tb_boleta_seguro tb1 inner join tb_trabajador tb2 
    on (tb1.boleta_codigo_trabajador = tb2.codigo_trabajador) inner join tb_seguro tb3 
    on (tb1.boleta_codigo_seguro = tb3.codigo_seguro)inner join tb_seguro_cobertura tb4
    on (tb4.sccodigo_seguro = tb3.codigo_seguro) inner join tb_cobertura tb5
    on (tb4.sccodigo_cobertura = tb5.codigo_cobertura) inner join tb_compañia tb6
    on (tb3.seguro_codigo_compañia = tb6.codigo_compañia) 
    where compañia = @compañia
end
go

-- drop procedure sp_obtener_compañia_de_cobertura_de_seguro
-- go

execute sp_obtener_compañia_de_cobertura_de_seguro 'Rimac Seguros'
go
