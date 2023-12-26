create database LaJulia
use LaJulia
Create table TipoCliente(
TipoCleinte_TC int primary key,
Descripcion_TC varchar(50)

)
Create table Clientes
(id_CL int primary key,
dni_CL int unique,
nombre_CL varchar(40),
apellido_cl varchar(40),
direccion_CL varchar(60),
TipoCliente_TC_CL int,
EstadoCliente bit,
Foreign key(TipoCliente_TC_CL) references TipoCliente(TipoCleinte_TC)
)

Create table Animales(
CodAnimal_A int primary key,
Descripcion_A varchar(50)
)
Create table Carnes (
codCarne_C int primary key,
descripcion_C varchar(50),
CodAnimal_A_C int,
Foreign key (CodAnimal_A_C) references Animales(CodAnimal_A)
)
Create Table FormasPago(
CodFormaPago_FP  int  primary key,
Descripcion_FP varchar(50)


)
Create Table Ventas(
NumVenta_V  int identity(1,1) primary key,
ID_CL_V int,
FechaVenta_V date,
FormaPago_FP_V int,
totalVenta money,
Foreign Key (ID_CL_V) references Clientes(id_CL),
Foreign Key (FormaPago_FP_V) references FormasPago(CodFormaPago_FP)
)
Create Table DetalleVentas(
NumVenta_V_DV int  ,
CodCarne_A_DV int  ,
Cantidad int,
PrecioUnitario money,
PRIMARY key(NumVenta_V_DV,CodCarne_A_DV),
Foreign Key (NumVenta_V_DV) references Ventas(NumVenta_V),
Foreign Key (CodCarne_A_DV) references Carnes(codCarne_C)

)
