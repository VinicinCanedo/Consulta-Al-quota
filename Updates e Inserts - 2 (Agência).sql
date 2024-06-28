use Teste;
select * from Agencia;
select * from Banco;
select * from Cargo;
select * from Empresa;
select * from Funcionario;
select * from Tipo_Endereco;
select * from Endereco;
select * from Pais;
select * from Telefone_Funcionario;
select * from Cargo_Funcionario;
--------------------------
--Agência
alter table Agencia_Funcionario
add Conta_Corrente varchar(20);
-----
insert into Agencia_Funcionario values (4,1,'48107-6'),
(4,2,'1142257-2'),
(5,3,'0364182-1'),
(6,4,'96072-7'),
(5,5,'1709951-5'),
(4,6,'92039199-7'),
(5,7,'03797144-0'),
(6,8,'82832-7');

--Agencia e Banco (Relacionamento)

alter table Agencia
add fk_Banco_ID int;

Alter table Agencia
add constraint fk_Banco foreign key (fk_Banco_ID)
references Banco (ID);
----------------------
update Agencia
set fk_Banco_ID = 1
where ID = 1;

update Agencia
set fk_Banco_ID = 2
where ID = 2;

update Agencia
set fk_Banco_ID = 3
where ID = 3;
------------------------------------------------
alter table Cargo_Funcionario
drop constraint fk_Funcionario_Telefone;

alter table Telefone_Funcionario 
add constraint fk_Funcionario_Telefone foreign key (fk_Funcionario_ID)
references Funcionario (ID);
----------------------------------------------
--Telefone :
Alter table Telefone_Funcionario
add Numero bigint;

insert into Telefone_Funcionario
values (1,1,821063418),
(2,2,6624846114),
(3,3,8323488500),
(4,4,4423628432),
(5,5,8221504136),
(6,6,8227123361),
(7,7,9628529118),
(8,8,6729857645);
----------------
--Telefone Empresa
Alter table Telefone_Empresa
add Numero bigint;

insert into Telefone_Empresa
values (9,1,8136737231),
(10,2,6127205475),
(11,3,8929805871),
(12,4,8423366216),
(13,5,6221804753);                                   

----------------------------
alter table Pais_Endereco
add Nome_pais varchar(20);

alter table Pais_Endereco
add Moeda_Local char(3);

insert into Pais_Endereco values (1,6,'Reino Unido','£'),
(2,4,'Irlanda','€'),
(3,2,'França','€'),
(4,5,'Itália','€'),
(5,4,'Irlanda','€'),
(6,3,'Portugal','€'),
(7,1,'Espanha','€'),
(8,6,'Reino Unido','£'),
(9,2,'França','€'),
(10,1,'Espanha','€'),
(11,4,'Irlanda','€'),
(12,2,'França','€'),
(13,5,'Itália','€');
-----------------------------------
alter table Pais_Funcionario
add Pais_trabalho varchar(20);

insert into Pais_Funcionario values (1,1,'Espanha'),
(2,2,'França'),
(3,3,'Portugal'),
(4,4,'Irlanda'),
(5,5,'Itália'),
(6,6,'Reino Unido'),
(4,7,'Irlanda'),
(4,8,'Irlanda');
--------------------------------------------
--Update em Salarios

Update Cargo
set Salario = 18950
where ID = 1;

Update Cargo
set Salario = 15500
where ID = 2;

Update Cargo
set Salario = 17690
where ID = 3;

Update Cargo
set Salario = 53460
where ID = 4;

Update Cargo
set Salario = 54320
where ID = 5;

Update Cargo
set Salario = 23000
where ID = 6;

Update Cargo
set Salario = 87560
where ID= 7;

Update Cargo
set Salario = 158925
where ID = 8;