SELECT * from Funcionario;

ALTER TABLE FUNCIONARIO
ADD Pais_Nascimento varchar(20);

Update Funcionario
set Pais_Nascimento = 'Portugal'
where ID = 1;

Update Funcionario
set Pais_Nascimento = 'Italia'
where ID = 2;

Update Funcionario
set Pais_Nascimento = 'Franca'
where ID = 3;

Update Funcionario
set Pais_Nascimento = 'Irlanda'
where ID = 4;

Update Funcionario
set Pais_Nascimento = 'Reino Unido'
where ID = 5;

Update Funcionario
set Pais_Nascimento = 'Espanha'
where ID = 6;

Update Funcionario
set Pais_Nascimento = 'Brasil'
where ID = 7;

Update Funcionario
set Pais_Nascimento = 'México'
where ID = 8;