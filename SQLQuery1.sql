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
/*Criando a Tabela Fita*/
create table Fita(
codigo int primary key,
titulofilme varchar (60),
valordiaria money,
codGenero int references genero (codigo)
)
/*Criação da tabela emprestimo*/
create table Emprestimo(
CodCliente int,
CodFita int,
DataEmp date,
DataDev date,
PRIMARY KEY (CodCliente, CodFita, DataEmp),
FOREIGN KEY (CodCliente) REFERENCES Cliente(codigo),
FOREIGN KEY (CodFita) references Fita(codigo)
)