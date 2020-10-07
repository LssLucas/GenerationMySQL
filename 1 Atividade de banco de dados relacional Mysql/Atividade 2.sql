/*Crie um banco de dados para um e commerce,
onde o sistema trabalhará com as informações dos produtos deste ecommerce. */
create database ecommerce;
use ecommerce;
/*Crie uma tabela produtos e utilizando a habilidade de abstração e 
determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.*/
create table produtos (
id_produto varchar(100) not null,
descricao varchar(100) not null,
quantidade int not null,
preco double(10,2) not null,
nota_fiscal int,
perecivel boolean,
primary key (id_produto)
);
/*Popule esta tabela com até 8 dados;*/
insert into produtos (id_produto, descricao, quantidade, preco, nota_fiscal, perecivel)
values
("2","produto  2", 2, 2, 22, 1),
("3","produto  3", 3, 3, 33, 0),
("4","produto  4", 4, 4, 44, 1),
("5","produto  5", 5, 5, 55, 0),
("6","produto  6", 6, 6, 66, 1),
("7","produto  7", 7, 7, 77, 0),
("8","produto  8", 8, 8, 88, 1)
;
select * from produtos;
alter table produtos
modify id_produto int auto_increment;

/*Faça um select que retorne os produtos com o valor maior do que 500.*/
update produtos
set preco = 501
where id_produto <5;
select * from produtos;
select * from produtos where preco>500;

/*Faça um select que retorne os produtos com o valor menor do que 500.*/
select * from produtos where preco<500;

/*Ao término atualize um dado desta tabela através de uma query de atualização.*/
alter table produtos
add pedido int;
select * from produtos;
update produtos
set pedido = 10
where (id_produto <10 and quantidade < 5);
select * from produtos;