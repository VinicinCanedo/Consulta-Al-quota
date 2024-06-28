use Teste;

CREATE TABLE Funcionario (
    ID int PRIMARY KEY,
    Nome VARCHAR(20),
    CPF VARCHAR(14) UNIQUE,
    RG VARCHAR(10),
    Data_Nascimento date
); 


CREATE TABLE Telefone (
    ID int PRIMARY KEY,
	Numero bigint
);

CREATE TABLE Pais (
    ID int PRIMARY KEY,
    Nome VARCHAR(20),
    Sigla CHAR(3),
    Moeda CHAR(3)
);

CREATE TABLE Cargo (
    ID int PRIMARY KEY,
    Nome VARCHAR(80),
    Salario float
);

CREATE TABLE Agencia (
    ID int PRIMARY KEY,
    Endereco VARCHAR(100),
    Nome VARCHAR(100),
    Gerente VARCHAR(20)
);

CREATE TABLE Banco (
    ID int PRIMARY KEY,
    Codigo int,
    Nome VARCHAR(100)
);

CREATE TABLE Empresa (
    ID int PRIMARY KEY,
    Nome VARCHAR(20),
    CNPJ VARCHAR(20) UNIQUE,
	fk_Cargo_ID int
);
alter table Empresa 
add constraint fk_Cargo_Empresa foreign key (fk_Cargo_ID)
references Cargo (ID);
------------------------------------------------------
CREATE TABLE Tipo_Endereco (
    ID int PRIMARY KEY,
    NOME VARCHAR
);

------------------------------------------------------------
CREATE TABLE Endereco (
    ID int PRIMARY KEY,
    fk_Funcionario_ID int,
    fk_Tipo_Endereco_ID int,
    Logradouro VARCHAR(100),
    Numero int,
    Complemento VARCHAR(100),
    Bairro VARCHAR(100),
    fk_Empresa_ID int
);
alter table Endereco
add constraint fk_Funcionario foreign key (fk_Funcionario_ID)
references Funcionario (ID);

alter table Endereco
add constraint fk_Tipo_Endereco foreign key (fk_Tipo_Endereco_ID)
references Tipo_Endereco (ID);

alter table Endereco
add constraint fk_Empresa foreign key (fk_Empresa_ID)
references Empresa (ID);
---------------------------------------------------------------
--Tabelas de Relacionamentos:
----------------------------------------
CREATE TABLE Empresa_Funcionario (
    fk_Funcionario_ID int,
    fk_Empresa_ID int
);
alter table Empresa_Funcionario
add constraint fk_Empresa_Funcionario foreign key (fk_Empresa_ID)
references Empresa (ID);

alter table Empresa_Funcionario
add constraint fk_Funcionario_Empresa foreign key (fk_Funcionario_ID)
references Funcionario (ID);
----------------------------------------------------------------------
CREATE TABLE Pais_Endereco(
fk_Endereco_ID int,
fk_Pais_ID int
);
alter table Pais_Endereco
add constraint fk_Endereco_Pais foreign key (fk_Endereco_ID)
references Endereco (ID);

alter table Pais_Endereco
add constraint fk_Pais_Endereco foreign key (fk_Pais_ID)
references Pais (ID);
-------------------------------------------------------
CREATE TABLE Pais_Funcionario (
    fk_Pais_ID int,
    fk_Funcionario_ID int
);
alter table Pais_Funcionario
add constraint fk_Pais_Funcionario foreign key (fk_Pais_ID)
references Pais (ID);

alter table Pais_Funcionario
add constraint fk_Funcionario_Pais foreign key (fk_Funcionario_ID)
references Funcionario (ID);
--------------------------------------------
CREATE TABLE Agencia_Endereco (
    fk_Endereco_ID int,
    fk_Agencia_ID int
);

alter table Agencia_Endereco
add constraint fk_Endereco_Agencia foreign key (fk_Endereco_ID)
references Endereco (ID);

alter table Agencia_Endereco
add constraint fk_Agencia_Endereco foreign key (fk_Agencia_ID)
references Agencia (ID);
-----------------------------------------------------------
CREATE TABLE Cargo_Funcionario (
    fk_Cargo_ID int,
    fk_Funcionario_ID int
);
alter table Cargo_Funcionario 
add constraint fk_Cargo_Funcionario foreign key (fk_Cargo_ID)
references Cargo (ID);

alter table Cargo_Funcionario 
add constraint fk_Funcionario_Cargo foreign key (fk_Funcionario_ID)
references Funcionario (ID);
----------------------------------------------------
CREATE TABLE Agencia_Banco (
    fk_Banco_ID int,
    fk_Agencia_ID int
);
alter table Agencia_Banco
add constraint fk_Agencia_Banco foreign key (fk_Agencia_ID)
references Agencia (ID);

alter table Agencia_Banco
add constraint fk_Banco_Agencia foreign key (fk_Banco_ID)
references Banco (ID);
-------------------------------------------------
CREATE TABLE Agencia_Funcionario (
    fk_Agencia_ID int,
    fk_Funcionario_ID int
);
alter table Agencia_Funcionario
add constraint fk_Agencia_Funcionario foreign key (fk_Agencia_ID)
references Agencia (ID);

alter table Agencia_Funcionario
add constraint fk_Funcionario_Agencia foreign key (fk_Funcionario_ID)
references Funcionario (ID);
------------------------------------------------
CREATE TABLE Pais_Empresa (
    fk_Pais_ID int,
    fk_Empresa_ID int
);
alter table Pais_Empresa
add constraint fk_Pais_Empresa foreign key (fk_Pais_ID)
references Pais (ID);

alter table Pais_Empresa
add constraint fk_Empresa_Pais foreign key (fk_Empresa_ID)
references Empresa (ID);
------------------------------------------------
CREATE TABLE Telefone_Empresa (
    fk_Telefone_ID int,
    fk_Empresa_ID int
);
alter table Telefone_Empresa
add constraint fk_Telefone_Empresa foreign key (fk_Telefone_ID)
references Telefone (ID);

alter table Telefone_Empresa
add constraint fk_Empresa_Telefone foreign key (fk_Empresa_ID)
references Empresa (ID);
----------------------------------------------
CREATE TABLE Telefone_Funcionario (
    fk_Telefone_ID int,
    fk_Funcionario_ID int
);
alter table Telefone_Funcionario
add constraint fk_Telefone_Funcionario foreign key (fk_Telefone_ID)
references Telefone (ID);

alter table Cargo_Funcionario 
add constraint fk_Funcionario_Telefone foreign key (fk_Funcionario_ID)
references Funcionario (ID);
--------------------------------------
CREATE TABLE Telefone_Pais (
    fk_Pais_ID int,
    fk_Telefone_ID int
	);
	alter table Telefone_Pais 
add constraint fk_Telefone_Pais  foreign key (fk_Telefone_ID)
references Telefone (ID);

alter table Telefone_Pais
add constraint fk_Pais_Telefone foreign key (fk_Pais_ID)
references Pais (ID);