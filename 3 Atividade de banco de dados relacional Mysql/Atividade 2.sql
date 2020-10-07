/*Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.*/
create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.*/
create table tb_categoria (
id_categoria int not null auto_increment,
descricao_categoria varchar(50) not null,
aplicacao varchar(20) not null,
primary key (id_categoria)
);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos
(não esqueça de criar a foreign key de tb_categoria nesta tabela).*/
create table tb_produto (
id_produto int not null auto_increment,
descricao_produto varchar(100) not null,
valor double(10,2) not null,
quantidade_estoque float not null,
marca varchar(100) not null,
fk_categoria int not null,
foreign key (fk_categoria) references tb_categoria (id_categoria),
primary key (id_produto)
);
describe tb_categoria;
describe tb_produto;

/*Popule esta tabela Categoria com até 5 dados.*/
insert into tb_categoria (descricao_categoria, aplicacao)
values
("Hidraulica", "Interna"),
("Hidraulica", "Externa"),
("Eletrica", "Interna"),
("Acabamento", "Externa"),
("Pisos", "Interna");
select * from tb_categoria;

/*Popule esta tabela Produto com até 8 dados.*/
describe tb_produto;
insert into tb_produto (descricao_produto, valor, quantidade_estoque, marca, fk_categoria)
values
("Torneira Banheiro", 100, 10, "Torneirol", 1),
("Mangueira Jardim", 200, 2, "Mangueirol", 2),
("Lampada", 15, 200, "Lampadol", 3),
("Tinta", 150, 45, "Tintol", 4),
("Piso Cerâminca", 26, 25, "Pisol", 5),
("Chuveiro Elétrico", 24, 2, "Chuveirol", 1),
("Tanque Concreto", 500, 1, "Tancol", 2),
("Piso quadriculado", 23.99, 89, "Pisols", 3);
select * from tb_produto;

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
select * from tb_produto where valor >50;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/
select * from tb_produto where valor>=3 and valor<=60;

/*Faça um select utilizando LIKE buscando os Produtos com as letras CO.*/
select * from tb_produto where descricao_produto like '%ci%';

/*Faça um um select com Inner join entre tabela categoria e produto.*/
describe tb_produto;
describe tb_categoria;
select p.quantidade_estoque, p.descricao_produto, p.valor, c.descricao_categoria
from tb_produto p inner join tb_categoria c
on id_categoria = fk_categoria
order by quantidade_estoque asc;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria hidráulica).*/
select * from tb_produto;
select * from tb_produto where fk_categoria <3;
