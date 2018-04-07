create database ContextDB;
use ContextDB;

create table Utenti(
	id int identity(1,1) not null primary key,
	username nvarchar (20)not null unique,
	passwd nvarchar (30)not null,
	nome varchar (20) not null,
	cognome varchar (20) not null,
	dataNascita date,
);

create table Partecipanti(
	id int identity(1,1) not null primary key,
	idUt int foreign key references Utenti,
	idContext int foreign key references Context
);

create table Context (
	
);


