-- CREATE DATABASE gama;

-- use gama;

-- CREATE TABLE aluno(	
--  CODIGO INT PRIMARY KEY auto_increment,
--  NOME VARCHAR(150) NOT NULL,
-- 	EMAIL VARCHAR(150) NOT NULL,
--  TELEFONE VARCHAR(20),
--  ENDERECO VARCHAR(255)
-- );

-- CREATE TABLE professor(	
--    CODIGO INT PRIMARY KEY auto_increment,
--    NOME VARCHAR(150) NOT NULL,
-- 	EMAIL VARCHAR(150) NOT NULL
-- );

-- CREATE TABLE yellowBelt(	
--    CODIGO INT PRIMARY KEY auto_increment,
--    NOME VARCHAR(150) NOT NULL,
-- 	EMAIL VARCHAR(150) NOT NULL
-- );

-- CREATE TABLE CURSO(
-- CODIGO INT PRIMARY KEY auto_increment,
--    NOME VARCHAR(150) NOT NULL,
--    CARGA_HORARIA INT NOT NULL,
--    DATA DATE NOT NULL
-- );

-- ALTER TABLE curso 
-- ADD COLUMN yellowBelt_CODIGO INT NOT NULL,
--    ADD CONSTRAINT FK_yellowBeltCurso FOREIGN KEY (yellowBelt_CODIGO) REFERENCES yellowBelt(CODIGO);

-- create table aluno_curso(
-- aluno_codigo int not null,
-- curso_codigo int not null,
-- constraint FK_aluno_Curso foreign key(aluno_codigo) references aluno(CODIGO) on delete cascade,
-- constraint FK_curso_Aluno foreign key(curso_codigo) references curso(CODIGO) on delete cascade,
-- CONSTRAINT UK_CursoAluno UNIQUE(aluno_codigo, curso_codigo)

-- );

-- CREATE TABLE professor_curso (
--  professor_codigo INT NOT NULL,
--  curso_codigo INT NOT NULL,
--  CONSTRAINT FK_ProfessorCurso FOREIGN KEY (professor_codigo) REFERENCES professor(codigo) ON DELETE CASCADE,
--  CONSTRAINT FK_CursoProfessor FOREIGN KEY (curso_codigo) REFERENCES professor(codigo) ON DELETE CASCADE,
--  CONSTRAINT UK_CursoProfessor UNIQUE(professor_codigo, curso_codigo)
-- );




    
    