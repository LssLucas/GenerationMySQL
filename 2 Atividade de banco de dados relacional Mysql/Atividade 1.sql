/*Crie um banco de dados para um serviço de RH de uma empresa,
o nome do banco deverá ter o seguinte nome db_RH2, onde o sistema 
trabalhará com as informações dos funcionários desta empresa. */
create database db_rh2;
use db_rh2;
/*Crie uma tabela tb_cargo utilizando a habilidade de abstração e
determine 3 atributos relevantes do Cargos para se trabalhar com o serviço deste RH*/
create table tb_cargo (
id_cargo int not null auto_increment,
descricao varchar(150) not null,
salario double(10,2) not null,
primary key (id_cargo)
);
alter table tb_cargo
drop data_contratacao;
alter table tb_cargo
add departamento varchar(100) not null;

/*Crie uma tabela tb_funcionário  e utilizando a habilidade de abstração e 
determine 5 atributos relevantes dos funcionários para se trabalhar com o 
serviço deste RH não esqueça de criar a foreign key de tb_cargo nesta tabela*/
create table tb_funcionario(
id_funcionario int not null auto_increment,
nome varchar(200) not null,
data_nascimento date not null,
data_contratacao date not null,
regime varchar(100) not null,
contrato_tempo_determinado boolean not null,
primary key (id_funcionario)
);
alter table tb_funcionario
add fk_cargo int not null,
add foreign key (fk_cargo) references tb_cargo (id_cargo);

/*Popule esta tabela cargos com até 5 dados.*/
insert into  tb_cargo (descricao, salario, departamento)
values
("Product Owner", 5, "Desenvolvimento"),
("Scrum Master", 4, "Desenvolvimento"),
("Desenvolvedorx Sênior", 3, "Desenvolvimento"),
("Desenvolvedorx Pleno", 2, "Desenvolvimento"),
("Desenvolvedorx Junior", 1, "Desenvolvimento");
select * from tb_cargo;
update tb_cargo set departamento = "Planejamento" where id_cargo < 3;
select * from tb_cargo;

/*Popule esta tabela funcionarios com até 15 dados.*/
select * from tb_funcionario;
insert into tb_funcionario (nome, data_nascimento, data_contratacao, regime, contrato_tempo_determinado, fk_cargo)
values
("funcionarx 1", "2020-09-25", "2020-01-01", "PJ", 0, 1),
("funcionarx 2", "2020-09-25", "2020-01-01", "PJ", 0, 2),
("funcionarx 3", "2020-09-25", "2020-01-01", "CLT", 0, 3),
("funcionarx 4", "2020-09-25", "2020-01-01", "CLT", 0, 4),
("funcionarx 5", "2020-09-25", "2020-01-01", "CLT", 0, 5),
("funcionarx 6", "2020-09-25", "2020-01-01", "CLT", 0, 5),
("funcionarx 7", "2020-09-25", "2020-01-01", "CLT", 0, 5),
("funcionarx 8", "2020-09-25", "2020-01-01", "CLT", 0, 5),
("funcionarx 9", "2020-09-25", "2020-01-01", "PJ", 0, 1),
("funcionarx 10", "2020-09-25", "2020-01-01", "PJ", 0, 2),
("funcionarx 11", "2020-09-25", "2020-01-01", "CLT", 0, 3),
("funcionarx 12", "2020-09-25", "2020-01-01", "CLT", 0, 4),
("funcionarx 13", "2020-09-25", "2020-01-01", "CLT", 0, 5),
("funcionarx 14", "2020-09-25", "2020-01-01", "CLT", 0, 5),
("funcionarx 15", "2020-09-25", "2020-01-01", "CLT", 0, 5);
select * from tb_funcionario;
update tb_funcionario set contrato_tempo_determinado = 1 where fk_cargo <3;
select * from tb_funcionario;

/*Faça um select que retorne os funcionários com o salário maior do que 2000.*/
update tb_cargo set salario = salario*1000 where id_cargo<6;
select * from tb_cargo;
select * from tb_cargo where salario >2000;

/*Faça um select trazendo  os funcionários com salário entre 1000 e 2000.*/
select * from tb_cargo where !(salario >2000);

/*Faça um select  utilizando LIKE buscando os Funcionários com a letra C.*/
select * from tb_funcionario where nome like '%C%';