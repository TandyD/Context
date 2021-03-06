﻿create database ContextDB;

use ContextDB;

create table Utenti(
	id int identity(1,1) not null primary key,
	username nvarchar (20)not null unique,
	passwd nvarchar (30)not null,
	nome varchar (20) not null,
	cognome varchar (20) not null,
	dataNascita date,
);

create table Voti(
	id int identity(1,1) not null primary key,
	idUt int foreign key references Utenti not null,
	idPartecipante int foreign key references Partecipante not null,
	unique(idUt,idPartecipante)
);

create table Partecipante(
	id int identity(1,1) not null primary key,
	idUtente int foreign key references Utenti not null,
	idContext int foreign key references Context not null
);

create table Context (
	id int identity(1,1) not null primary key,
	nome nvarchar (30)not null,
	descrizone nvarchar (140),
	vincitore int foreign key references Utenti not null
);

create table Amministratore(
	id int identity(1,1) not null primary key,
	idUtente int foreign key references Utenti not null
);


