CREATE DATABASE gamabuster;

use gamabuster;

CREATE TABLE filme (
	codigo INT PRIMARY KEY auto_increment,
	nome VARCHAR(150) NOT NULL,
	ano_lancamento VARCHAR(4) NOT NULL,
	duracao INT NOT NULL,
	estoque INT DEFAULT 0
);

CREATE TABLE genero (
	codigo INT PRIMARY KEY auto_increment,
	nome VARCHAR(150) NOT NULL
);
	
CREATE TABLE filme_genero (
	filme_codigo INT NOT NULL,
    genero_codigo INT NOT NULL,
    CONSTRAINT FK_FilmeGenero FOREIGN KEY (filme_codigo) REFERENCES filme(codigo) ON DELETE CASCADE,
    CONSTRAINT FK_GeneroFilme FOREIGN KEY (genero_codigo) REFERENCES genero(codigo) ON DELETE CASCADE,
    CONSTRAINT UK_GeneroFilme UNIQUE(filme_codigo, genero_codigo)
);

CREATE TABLE reserva (
	codigo INT PRIMARY KEY auto_increment,
	dataReserva date not null,
	dataLimite date not null,
	total decimal(12,2) not null
);

drop table reserva;

create table reservaFilme (
	codigo INT PRIMARY KEY auto_increment,
    quantidade int not null,
    reservaCodigo int not null,
    filmeCodigo int not null,
    CONSTRAINT FK_FilmeGenero FOREIGN KEY (filme_codigo) REFERENCES filme(codigo) ON DELETE CASCADE,
    CONSTRAINT FK_GeneroFilme FOREIGN KEY (genero_codigo) REFERENCES genero(codigo) ON DELETE CASCADE,
    CONSTRAINT UK_GeneroFilme UNIQUE(filme_codigo, genero_codigo)
    
);



