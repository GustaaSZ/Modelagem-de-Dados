CREATE DATABASE db_Faculdade2; -- Criando a db
USE db_Faculdade2; -- comando pra fazer rodar todos os comandos que virão abaixo

-- Criando a tabela de Departamento
CREATE TABLE Departamento (
    Cod_departamento INT primary key auto_increment,
    Nome_departamento varchar(20) NOT NULL
);

-- Criando a tabela de Professor
Create table Professor (
    Cod_professor INT primary key auto_increment,
    Nome_professor varchar(20) not null,
    Sobrenome_professor varchar(50) not null,
    status_professor tinyint,
    Cod_departamento int,
    constraint fk_Codigo_departamento FOREIGN KEY (Cod_departamento) 
    references Departamento (Cod_departamento)
);

-- Criando a tabela de Curso
create table Curso (
    Cod_curso INT primary key auto_increment,
    Nome_curso varchar(40) not null,
    Cod_departamento int,
    constraint fk_Cod_Departamento foreign key (Cod_departamento)
    references Departamento (Cod_departamento)
);

-- Criando a tabela de Turma
create table Turma (
    Cod_turma INT primary key auto_increment,
    -- Criando a FK
    Cod_curso INT,
    constraint fk_cod_curso foreign key (Cod_curso)
    references Curso (Cod_curso),
    Periodo varchar(5) not null,
    Num_Alunos INT not null,
    Data_inicio Date not null,
    Data_fim Date not null
);

-- Criando a tabela Disciplina
create table Disciplina (
    Cod_disciplina int primary key auto_increment not null,
    Cod_Disciplina_Depende INT NULL, /* Auto-relacionamento */
    CONSTRAINT fk_Cod_Disciplina FOREIGN KEY (Cod_Disciplina_Depende) REFERENCES Disciplina (Cod_disciplina),
    Nome_disciplina varchar(30) not null,
    Descricao varchar(80),
    Cod_departamento INT not null,
    constraint fk_cod_departamento_disciplina foreign key (Cod_departamento) references Departamento (Cod_departamento),
    Carga_horaria int not null,
    Num_Alunos int not null
);

