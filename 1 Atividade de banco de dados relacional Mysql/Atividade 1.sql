/* Crie um banco de dados para um serviço de RH de uma empresa,
onde o sistema trabalhará com as informações dos funcionários desta empresa. */
create database db_rh;
use db_rh;

/*Crie uma tabela de funcionários e utilizando a habilidade de abstração e
 determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço deste RH.*/
create table funcionario(
matricula int not null auto_increment,
nome varchar(100) not null,
data_nascimento date not null,
formacao varchar(100) not null,
departamento varchar(30) not null,
primary key (matricula)
);
/*Popule esta tabela com até 5 dados;*/
insert into funcionario (nome, data_nascimento, formacao, departamento)
values
("funcionario 1","2020-09-24","formacao 1","dpto 1"),
("funcionario 2","2020-09-24","formacao 2","dpto 1"),
("funcionario 3","2020-09-24","formacao 3","dpto 1"),
("funcionario 4","2020-09-24","formacao 4","dpto 2"),
("funcionario 5","2020-09-24","formacao 5","dpto 2");
/*Faça um select que retorne os funcionários com o salário maior do que 2000.
Eu não havia criado a coluna de salario antes dessa proposta
Não consegui atualizar mais de uma matricula por vez, então entre as linhas 
32 e 35 alterei o numero da matricula manualmente os valores de 1 a 3 para salario 5000 e 4 e 5 para 1000*/
select * from funcionario;
alter table funcionario
add salario double (10,2);
select * from funcionario;
update funcionario set salario = '5000' 
where matricula = 2;
update funcionario set salario = '1000' 
where matricula = 5;

/*Faça um select que retorne os funcionários com o salário maior do que 2000.*/
select * from funcionario where salario > 2000;

/*Faça um select que retorne os funcionários com o salário menor do que 2000.*/

select * from funcionario where !(salario > 2000);

/*Ao término atualize um dado desta tabela através de uma query de atualização*/
update funcionario set departamento = "dpto 1" 
where matricula = 5;
select * from funcionario;