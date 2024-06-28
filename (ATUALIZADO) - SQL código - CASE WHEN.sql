use Teste;
select * from Agencia;
select * from Banco;
select * from Cargo;
select * from Empresa;
select * from Funcionario;
select * from Tipo_Endereco;
select * from Endereco;
select * from Pais;
select * from Telefone;
-----------------------------------------
select 
Nome.F AS Funcionario,
Nome.C AS Cargo,
Idade.F, Sexo.F,
Numero.TF as Telefone,
Pais_Natal.F, --Trocar por Pais_Nascimento (pais_natal é uma adaptação do meu banco em casa!)
concat(Logradouro, Numero, Complemento,Bairro,fk_Tipo_Endereco_Id).E as Endereco,
Conta_Corrente.AF,
Nome.A as Agencia,fk_Banco_ID.A as Banco,
Moeda_Local.PE,
Pais_Trabalho.PF,
nome.Emp,
numero.TE

case 
when salario <=  7112.00 then (salario * 14.5)/100
when salario > 7112.01 and salario < 10732.00 then salario * 0.23 --(salario * 9)/100
when salario >10732.01 and salario < 20322.00 then (salario * 28)/100
when salario >20322.01 and salario < 25075.00 then (salario * 35)/100
when salario >25075.01 and salario < 36967.00 then (salario * 37)/100
when salario >36967.01 and salario < 80882.00 then (salario * 45)/100
when salario >80882.01 then (salario * 48)/100
end as aliquota_portugal,

case
when salario <= 12450.00 then (salario * 19)/100
when salario > 12450.01 and salario < 20200.00 then (salario * 24)/100
when salario > 20200.01 and salario < 35200.00 then (salario * 30)/100
when salario > 35200.01 and salario < 60000.00 then (salario * 37)/100
when salario > 60000.01 then (salario * 45)/100 
end as aliquota_espanha,

case
when salario <= 10085.00 and salario < 25710.00 then (salario * 11)/100
when salario > 25710.01 and salario < 73516.00 then (salario * 30)/100
when salario > 73516.01 and salario < 158122.00 then (salario * 41)/100
when salario > 158122.01 then (salario * 45)/100 
end as aliquota_franca,

case
when salario <= 12012.00 then (salario * 0.5)/100
when salario > 12012.01 and salario < 21295.00 then (salario * 2)/100
when salario > 21295.01 and salario < 70044.00 then (salario * 4.5)/100
when salario > 70044.01 and salario < 10000.00 then (salario * 8)/100
when salario > 10000.01 then (salario * 11)/100 
end as aliquota_irlanda,

case
when salario <= 15000.00 then (salario - [salario / 100]* 9.19 - [salario / 100] * 0.9 - [salario / 100] * 1.73 ) * (23 / 100)
when salario > 15000.01 and salario < 28000.00 then (salario - [salario / 100]* 9.19 - [salario / 100] * 0.9 - [salario / 100] * 3.33 ) * (25 / 100)
when salario > 28000.01 and salario < 55000.00 then (salario - [salario / 100]* 9.19 - [salario / 100] * 0.9 - [salario / 100] * 3.33 ) * (35 / 100)
when salario > 55000.01 then (salario - [salario / 100]* 9.19 - [salario / 100] * 0.9 - [salario / 100] * 3.33 ) * (43 / 100)
end as aliquota_italia,

case
when salario <= 12570.00 then 0
when salario > 12570.01 and salario < 20200.00 then (salario * 24)/100
when salario > 20200.01 and salario < 50270.00 then (salario * 30)/100
when salario > 50270.01 and salario < 150000.00 then (salario * 37)/100
when salario > 150000.01 then (salario * 45)/100 
end as aliquota_reino_unido,

case
when salario = 158925 then salario - 
when salario = 87560 then salario - 
when salario = 54320 then salario - 
when salario = 53460 then salario -
when salario = 23000 then salario -
when salario = 18950 then salario - 
when salario = 17690 then salario - 
when salario = 15500 then salario - 
end as salario_liquido
from Funcionario AS F
LEFT JOIN Cargo AS C ON C.CARGO_ID = f.ID
LEFT JOIN SETOR AS SE ON SE.ID = SE.EMPRESA_ID
LEFT JOIN ENDERECO AS EN ON EN.FORNECEDOR_ID = EN.ID 
left join EMPRESA AS EM ON EM.ID = EM.EMPRESA_ID
;