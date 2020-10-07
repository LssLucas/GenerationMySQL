/*Crie um banco de dados para um serviço de ecommerce de uma empresa, 
o nome do banco deverá ter o seguinte nome db_ecommerce, onde 
o sistema trabalhará com as informações dos produtos desta empresa. */
create database db_ecommerce;
use db_ecommerce;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e 
determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.*/
create table tb_categoria (
id_ecommerce int not null auto_increment,
tipo varchar(3) not null,
nome_vendedorx varchar(100) not null,
nome_compradorx varchar(100) not null,
primary key (id_ecommerce)
);
select * from tb_categoria;

/*Crie uma tabela de tb_produto e utilizando a habilidade de 
abstração e determine 5 atributos relevantes dos tb_produto para 
se trabalhar com o serviço deste ecommerce (não esqueça de criar a 
foreign key de tb_categoria nesta tabela).*/
create table tb_produtos(
id_produtos int not null auto_increment,
nome_produto varchar(100) not null,
valor_produto double(10,2) not null,
quantidade_estoque int not null,
fk_ecommerce int not null,
foreign key (fk_ecommerce) references tb_categoria (id_ecommerce),
primary key (id_produtos)
);
select * from tb_produtos;


/*Popule esta tabela Categoria com até 5 dados.*/
select * from tb_categoria;
insert into tb_categoria (tipo, nome_vendedorx, nome_compradorx)
values
("B2B", "business 1", "business 1"),
("B2C", "business 1", "client 1"),
("C2C", "client 1", "client 2"),
("B2A", "business 3", "administrator 1"),
("B2C", "business 1", "client 1");
select * from tb_categoria;

/*Popule esta tabela Produto com até 15 dados.*/
select * from tb_produtos;
insert into tb_produtos (nome_produto, valor_produto, quantidade_estoque, fk_ecommerce)
values
("produto 1", 1000, 15, 1),
("produto 2", 2000, 14, 2),
("produto 3", 3000, 13, 3),
("produto 4", 4000, 12, 4),
("produto 5", 5000, 11, 5),
("produto 6", 6000, 10, 1),
("produto 7", 7000, 9, 2),
("produto 8", 8000, 8, 3),
("produto 9", 9000, 7, 4),
("produto 10", 10000, 6, 5),
("produto 11", 11000, 5, 1),
("produto 12", 12000, 4, 2),
("produto 13", 13000, 3, 3),
("produto 14", 14000, 2, 4),
("produto 15", 15000, 1, 5);
select * from tb_produtos;

/*Faça um select que retorne os Produtos com o valor maior do que 2000.*/
select * from tb_produtos where valor_produto>2000;

/*Faça um select trazendo os Produtos com valor entre 1000 e 2000.*/
select * from tb_produtos where valor_produto>=1000 and valor_produto<=2000;

/*Faça um select utilizando LIKE buscando os Produtos com a letra C.*/
select * from tb_produtos where nome_produto like '%C%';