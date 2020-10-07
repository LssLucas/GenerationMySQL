/*Crie um banco de dados para um registro de uma escola, 
onde o sistema trabalhará com as informações dos alunos deste registro dessa escola. */
create database db_escola;
use db_escola;

/*Crie uma tabela alunos/a e utilizando a habilidade de abstração e
determine 5 atributos relevantes dos alunos/a para se trabalhar com o serviço dessa escola.*/
create table alunmx (
matricula int(10) auto_increment not null,
nome varchar(200) not null,
data_nascimento date not null,
turma varchar(10) not null,
endereco varchar(200) not null,
nota int,
primary key (matricula)
);

/*Popule esta tabela com até 8 dados;*/
insert into alunmx (nome, data_nascimento, turma, endereco, nota)
values
("aluno 1", "2020-09-24", "turma 1", "endereco 1", 1),
("aluno 2", "2020-09-24", "turma 1", "endereco 2", 2),
("aluno 3", "2020-09-24", "turma 1", "endereco 3", 3),
("aluno 4", "2020-09-24", "turma 1", "endereco 4", 4),
("aluno 5", "2020-09-24", "turma 2", "endereco 5", 5),
("aluno 6", "2020-09-24", "turma 2", "endereco 6", 6),
("aluno 7", "2020-09-24", "turma 2", "endereco 7", 7),
("aluno 8", "2020-09-24", "turma 2", "endereco 8", 8)
;
select * from alunmx;

/*Faça um select que retorne o/as alunos/a com a nota maior do que 7.*/
select * from alunmx where nota>7;

/*Faça um select que retorne o/as alunos/a com a nota menor do que 7.*/
select * from alunmx where !(nota>7);

/*Ao término atualize um dado desta tabela através de uma query de atualização.*/
alter table alunmx
add nota2 double,
add media double,
modify nota double;
select * from alunmx;
update alunmx
set nota2 = (8-nota)
where matricula <9;
select * from alunmx;
update alunmx
set media = (nota + nota2)/2
where matricula <9;
select * from alunmx;