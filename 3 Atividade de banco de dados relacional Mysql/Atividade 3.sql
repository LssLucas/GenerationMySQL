/*Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.*/
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.*/
create table tb_categoria (
id_categoria int not null auto_increment,
descricao_categoria varchar(50) not null,
modalidade_aula varchar(20) not null,
duracao_curso_semestre int not null,
primary key (id_categoria)
);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).*/
create table tb_produto (
id_produto int not null auto_increment,
descricao_curso varchar(100) not null,
valor_curso double(10,2) not null,
qtdd_vagas int not null,
periodo varchar(100) not null,
fk_categoria int not null,
foreign key (fk_categoria) references tb_categoria (id_categoria),
primary key (id_produto)
);
describe tb_categoria;
describe tb_produto;

/*Popule esta tabela Categoria com até 5 dados.*/
describe tb_categoria;
insert into tb_categoria (descricao_categoria, modalidade_aula, duracao_curso_semestre)
values
("Full Satck", "EAD", 1),
("Full Satck", "Semi-Presencial", 2),
("Full Satck", "Presencial", 3),
("Back-End", "EAD", 4),
("Front-End", "Semi-Presencial", 5);
select * from tb_categoria;

/*Popule esta tabela Produto com até 8 dados.*/
describe tb_produto;
insert into tb_produto (descricao_curso, valor_curso, qtdd_vagas, periodo, fk_categoria)
values
("Java - MySQL - Angular", 10, 300, "EAD", 1),
("Java - MySQL - Angular", 30, 30, "Noturno", 2),
("Java - MySQL - Angular", 60, 10, "Noturno", 3),
("MySQL", 5, 300, "EAD", 4),
("JavaScript", 5, 300, "Noturno", 5),
("Java - Oracle - Angular", 10, 300, "EAD", 1),
("Java - Oracle - Angular", 30, 30, "Noturno", 2),
("Java - Oracle - Angular", 60, 10, "Noturno", 3);
select * from tb_produto;

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
select * from tb_produto where valor_curso>50;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/
select * from tb_produto where valor_curso>=3 and valor_curso<=60;

/*Faça um select utilizando LIKE buscando os Produtos com as letras CO.*/
select * from tb_produto where descricao_curso like '%JAV%';

/*Faça um um select com Inner join entre tabela categoria e produto.*/
describe tb_produto;
describe tb_categoria;

select c.descricao_categoria, descricao_curso, p.valor_curso
from tb_produto p inner join tb_categoria c
on id_categoria = fk_categoria
order by qtdd_vagas asc;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria hidráulica).*/
select * from tb_produto;
select * from tb_produto where descricao_curso like "%JAV%";