-- Active: 1692185081201@@127.0.0.1@3306
    show databases;
create database if not exists projeto;
use projeto;
CREATE TABLE pessoa(
	pessoaID smallint unsigned,
	fname varchar(20),
	lname varchar(20),
	genero enum('M','F'),
	nascimento DATE,
	rua varchar(30),
	cidade varchar(20),
	state varchar(20),
	pais varchar(20),
    constraint pk_person primary key (pessoaID),
    constraint fk_favorite_jogo_pessoaID foreign key (pessoaID) 
    references person(pessoaID)
);

create table jogoPreferido(
	pessoaID smallint unsigned,
    jogo varchar(20),
    constraint pk_favorite_jogo primary key (pessoaID, jogo)    
);
desc jogoPreferido;


show databases;
desc information_schema.table_constraints;
select * from information_schema.table_constraints
where constraint_schema = 'projeto';

insert into pessoa values 	
    (1,'Joao','Silva','M','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (2,'Maria','Silva','F','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (3,'Jose','Silva','M','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (4,'Joana','Silva','F','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (5,'Joao','Silva','M','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (6,'Maria','Silva','F','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (7,'Jose','Silva','M','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (8,'Joana','Silva','F','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (9,'Joao','Silva','M','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (10,'Maria','Silva','F','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (11,'Jose','Silva','M','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (12,'Joana','Silva','F','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (13,'Joao','Silva','M','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1'),
    (14,'Maria','Silva','F','1990-01-01','Rua 1','Cidade 1','Estado 1','Pais 1');
select * from pessoa;

delete from pessoa where pessoaID = 1;
delete from pessoa where pessoaID = 2;
delete from pessoa where pessoaID = 3;
                    

insert into jogoPreferido values (1,'god of war'),
								 (5,'lol'),
                                 (6,'the last of us'),
                                (7,'god of war'),
                                (8,'god of war'),
                                (9,'god of war'),
                                (10,'god of war'),
                                (11,'god of war'),
                                (12,'god of war'),
                                (13,'god of war'),
                                (14,'god of war');
                                 
select * from favorite_food;