/*Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o
seguinte nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos
produtos desta empresa.*/
drop database db_casa_das_carnes;
create database db_casa_das_carnes;
use db_casa_das_carnes;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.*/
create table tb_categoria (
id_categoria int not null auto_increment,
descricao_categoria varchar(50) not null,
qualidade int not null,
validade date not null,
primary key (id_categoria)
);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não
esqueça de criar a foreign key de tb_categoria nesta tabela).*/
create table tb_produto (
id_produto int not null auto_increment,
descricao_produto varchar(50) not null,
preco double(10,2) not null,
data_recebimento date not null,
peso double(10,3) not null,
primary key (id_produto),
fk_categoria int not null,
foreign key (fk_categoria) references tb_categoria (id_categoria)
);


/*Popule esta tabela Categoria com até 5 dados.*/
insert into tb_categoria (descricao_categoria, qualidade, validade)
values
("Bovina", 1, 20201015),
("Suina", 1, 20201015),
("Aves", 1, 20201015),
("Peixes", 1, 20201015),
("Processados", 1, 20201015);
select * from tb_categoria;

/*Popule esta tabela Produto com até 8 dados.*/
describe tb_produto;
insert into tb_produto (descricao_produto, preco, data_recebimento, peso, fk_categoria)
values
("Coxão Mole", 29.99, 20200928, 500, 1);
insert into tb_produto (descricao_produto, preco, data_recebimento, peso, fk_categoria)
values
("Costela Suína", 18.00, 20200928, 500, 2),
("Asinha de Frango", 20.00, 20200928, 500, 3),
("Salmão", 59.99, 20200928, 500, 4),
("Linguiça Mista Apimentada", 39.99, 20200928, 500, 5),
("Coxão Duro", 19.99, 20200928, 500, 1),
("Pé de Porco", 9.99, 20200928, 500, 2),
("Peito c/ Osso", 16.99, 20200928, 500, 3);
select * from tb_produto;

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
select * from tb_produto where preco >50;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/
select * from tb_produto where preco>=3 and preco <=60;

/*Faça um select utilizando LIKE buscando os Produtos com as letras CO.*/
select * from tb_produto where descricao_produto like '%CO%';

/*Faça um um select com Inner join entre tabela categoria e produto.*/
select p.descricao_produto, c.descricao_categoria
from tb_produto p inner join tb_categoria c
on id_categoria = fk_categoria
order by id_categoria;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/
select * from tb_produto where fk_categoria =1;