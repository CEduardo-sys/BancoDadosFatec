create database VideoLocadora;
use VideoLocadora
/*criação da tabela Genero*/
create table genero(
codigo int primary key,
nome varchar (30)
)
/*Criando a Tabela Cliente*/
create table Cliente(
codigo int primary key,
nome varchar (80),
endereco varchar (120),
celular varchar (12),
)