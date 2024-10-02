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

-- criando tabela curso_disciplina (associativa)
create table Curso_disciplina (
	Cod_curso int not null,
    Cod_disciplina int not null,
    primary key (Cod_curso, Cod_disciplina),
    constraint fk_cod_curso_disciplina foreign key (Cod_curso) references Curso (Cod_curso),
    constraint fk_cod_disciplina_curso foreign key (Cod_disciplina) references Disciplina (Cod_disciplina)
);

-- Criando a tabela prof_disciplina (associativa)
CREATE TABLE Prof_Disciplina (
	 Cod_professor INT NOT NULL,
	 Cod_disciplina INT NOT NULL,
	 PRIMARY KEY (Cod_professor, Cod_disciplina), 
	 CONSTRAINT fk_Cod_Professor_Prof FOREIGN KEY (Cod_professor) REFERENCES Professor (Cod_professor),
	 CONSTRAINT fk_Cod_Disciplina_Prof FOREIGN KEY (Cod_disciplina) REFERENCES Disciplina (Cod_disciplina)
);

-- Criando a tabela Aluno
create table Aluno (
	RA int primary key auto_increment not null,
    Nome_Aluno varchar(20) not null,
    Sobrenome_Aluno varchar(50) not null,
    Cpf varchar(11) not null,
    telefone varchar(11) not null,
    status_aluno tinyint(1) not null,
    email varchar(60) not null,
    WhatsApp varchar(11),
    Cod_turma int not null,
    Cod_curso int not null,
    sexo varchar(1) not null,
    Nome_mae varchar(50) not null,
    Nome_pai varchar(50),
    constraint fk_Cod_turma_aluno FOREIGN KEY (Cod_turma) references Turma (Cod_turma),
    constraint fk_Cod_curso_aluno FOREIGN KEY (Cod_curso) references Curso (Cod_curso)
);

-- criando a tabela aluno_disc (associativa)
create table Aluno_disc (
	Cod_aluno int not null,
    Cod_disciplina int not null,
    primary key (Cod_aluno, Cod_disciplina),
    constraint fk_cod_aluno_disciplina foreign key (Cod_aluno) references Aluno (RA),
    constraint fk_cod_disciplina_aluno foreign key (Cod_disciplina) references Disciplina (Cod_disciplina)
);

-- criando a tabela de historico
CREATE TABLE Historico (
	 Cod_Historico INT PRIMARY KEY AUTO_INCREMENT,
	 RA INT NOT NULL,
	 Data_Inicio DATE NOT NULL,
	 Data_Final DATE,
	 CONSTRAINT fk_Cod_RA FOREIGN KEY (RA) REFERENCES Aluno (RA)
);

-- Criando a tabela de Disciplina Historico (associativa)
CREATE TABLE Disc_Hist (
	 Cod_Historico INT NOT NULL,
	 Cod_Disciplina INT NOT NULL,
	 Nota INT,
	 Frequência INT,
	 PRIMARY KEY (Cod_Historico, Cod_Disciplina), 
	 CONSTRAINT fk_Cod_Historico FOREIGN KEY (Cod_Historico) REFERENCES Historico (Cod_Historico),
	 CONSTRAINT fk_Cod_Disciplina_Hist FOREIGN KEY (Cod_Disciplina) REFERENCES Disciplina (Cod_disciplina)
);

-- Criando a table de tipo de telefone
CREATE TABLE Tipo_Telefone(
 Cod_Tipo_Telefone INT PRIMARY KEY AUTO_INCREMENT,
 Tipo_Telefone VARCHAR(8)
);

-- Criando a tabela dos telefones dos alunos
CREATE TABLE Telefones_Aluno (
 Cod_Telefones_Aluno INT PRIMARY KEY AUTO_INCREMENT,
 RA INT NOT NULL,
 Cod_Tipo_Telefone INT NOT NULL,
 Telefone VARCHAR(20) NOT NULL,
 CONSTRAINT fk_Cod_RA_Tel FOREIGN KEY (RA) REFERENCES Aluno (RA),
 CONSTRAINT fk_Cod_Tipo_Telefone FOREIGN KEY (Cod_Tipo_Telefone) REFERENCES Tipo_Telefone (Cod_Tipo_Telefone)
);

-- Criando table tipo_logradouro
CREATE TABLE Tipo_Logradouro (
 Cod_Tipo_Logradouro INT PRIMARY KEY AUTO_INCREMENT,
 Tipo_Logradouro VARCHAR(11)
);

-- Criando table Endereço_aluno
CREATE TABLE Endereco_Aluno (
 Cod_Endereco_Aluno INT PRIMARY KEY AUTO_INCREMENT,
 RA INT NOT NULL,
 Cod_Tipo_Logradouro INT NOT NULL,
 Nome_Rua VARCHAR(50) NOT NULL,
 Num_Rua INT NOT NULL,
 Complemento VARCHAR(20) NULL,
 CEP VARCHAR(8) NOT NULL,
 CONSTRAINT fk_Cod_RA_End FOREIGN KEY(RA) REFERENCES Aluno (RA),
 CONSTRAINT fk_Cod_Tipo_Lougradouro FOREIGN KEY(Cod_Tipo_Logradouro) REFERENCES Tipo_Logradouro (Cod_Tipo_Logradouro)
);
