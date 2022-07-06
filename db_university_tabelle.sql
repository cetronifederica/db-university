create database db_university;

use db_university;

create table dipartimenti (
id INT not null auto_increment,
nome VARCHAR(255) not null,
rettore VARCHAR(255) not null,
sede VARCHAR(255) not null,
email_di_riferimento VARCHAR(255) not null,
primary key (id)
);

create table corsi_di_laurea (
id INT not null auto_increment,
nome VARCHAR(255) not null, 
durata_corso INT not null,
descrizione TEXT,
dipartimento_id INT not null unique,
primary key (id),
foreign KEY(dipartimento_id) REFERENCES dipartimenti(id)
);

create table piano_degli_studi (
id INT not null auto_increment,
nome_materia VARCHAR(255) not null,
cfu INT not null,
prof_di_riferimento VARCHAR(255) not null,
corso_di_laurea_id INT not null,
primary key (id),
foreign KEY(corso_di_laurea_id) references corsi_di_laurea(id)
);

create table studente (
id INT not null auto_increment,
nome VARCHAR(255) not null,
cognome VARCHAR(255) not null,
matricola VARCHAR(255) not null unique,
corso_di_laurea_id INT,
primary key (id),
foreign KEY(corso_di_laurea_id) references corsi_di_laurea(id)
);

create table professori (
id INT not null auto_increment,
nome VARCHAR(255) not null,
cognome VARCHAR(255) not null,
materia VARCHAR(255) not null,
primary KEY(id)
);

CREATE TABLE professori_corsi(
	professori_id INT, 
	corsi_id INT,
	FOREIGN KEY(professori_id) REFERENCES professori(id),
	FOREIGN KEY(corsi_id) REFERENCES piano_degli_studi(id),
	PRIMARY KEY(professori_id, corsi_id)
);
