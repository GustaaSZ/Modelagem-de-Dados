USE db_Faculdade2; -- comando pra fazer rodar todos os comandos que virão abaixo

-- Inserindo dados na tabela Departamento
insert into Departamento (Nome_departamento) values
('Ciências Humanas'),
('Matemática'),
('Biológicas'),
('Estágio'),
('Química');

-- Inserindo dados na tabela professor
insert into Professor (Nome_professor, Sobrenome_professor, 
status_professor, Cod_departamento) values
('Fábio', 'dos Reis', 0, last_insert_id()),
('Gustavo', 'Abrantes', 1, last_insert_id()),
('Guilherme', 'Souza', 1, last_insert_id()),
('Marcos', 'Lewandovisk', 0, last_insert_id());

-- Atualizando alguns valores
update Professor
set Cod_departamento = 2 where Nome_professor = 'Gustavo';

update Professor
set Cod_departamento = 3 where Nome_professor = 'Guilherme';

update Professor
set Cod_departamento = 4 where Nome_professor = 'Marcos';

update Professor
set Sobrenome_Professor = 'Ramalho' where Cod_professor = 2;

-- Inserindo dados na tabela de curso
INSERT INTO Curso (Nome_curso, Cod_departamento)
VALUES
('Matemática', 2),
('Psicologia', 1),
('Análise de Sistemas', 2),
('Biologia', 3),
('História', 1),
('Engenharia de Software', 2),
('Estágio em Culinária', 4),
('Química', 5);

-- Inserindo dados na tabela de turma
INSERT INTO Turma (Cod_curso, Periodo, Num_Alunos, Data_inicio, Data_fim)
VALUES
(2, 'Manhã', 20, '2016-05-12', '2017-10-15'),
(1, 'Noite', 10, '2014-05-12', '2020-03-05'),
(3, 'Tarde', 15, '2012-05-12', '2014-05-10'),
(6, 'Noite', 100, '2018-05-12', '2023-05-10');

-- Inserindo dados na tabela de disciplina
INSERT INTO Disciplina (Nome_disciplina, Cod_departamento, Carga_horaria, Descricao, Num_Alunos)
VALUES
('Raciocínio Lógico', 2, 1200, 'Desenvolver o raciocínio lógico', 50),
('Psicologia Cognitiva', 1, 1400, 'Entender o funcionamento do aprendizado', 30),
('Programação em C', 2, 1200, 'Aprender uma linguagem de programação', 20),
('Eletrônica Digital', 2, 300, 'Funcionamento de circuitos digitais', 30),
('Matemática Discreta 1', 2, 300, 'Matemática para computação', 90),
('Cálculo 1', 2, 300, 'Cálculo 1 básico para cursos de exatas', 200),
('História do Brasil', 1, 150, 'História do Brasil para o curso de humanas', 80);

INSERT INTO Disciplina (Nome_disciplina,Cod_Disciplina_Depende ,Cod_departamento, Carga_horaria, Descricao, Num_Alunos)
VALUES
('Cálculo 2',6, 2, 300, 'Cálculo 2 para cursos de exatas', 180);

-- Inserindo dados na tabela de alunos
INSERT INTO Aluno (Nome_Aluno, Sobrenome_Aluno, Cpf, Status_aluno, Cod_turma, sexo, Cod_curso, Nome_pai, Nome_mae, email, WhatsApp)
VALUES
('Marcos', 'Aurelio Martins', '14278914536', 1, 2, 'M', 3, 'Marcio Aurelio', 'Maria Aparecida', 'marcosaurelio@gmail.com', '946231249'),
('Gabriel', 'Fernando de Almeida', '14470954536', 1, 1, 'M', 1, 'Adão Almeida', 'Fernanda Almeida', 'gabrielalmeida@yahoo.com', '941741247'),
('Beatriz', 'Sonia Meneguel', '1520984537', 1, 3, 'F', 3, 'Samuel Meneguel', 'Gabriella Meneguel', 'batrizmene@hotmail.com', '945781412'),
('Jorge', 'Soares', '14223651562', 1, 3, 'M', 4, 'João Soares', 'Maria Richter', 'jorgesoares@gmail.com', '925637857'),
('Ana Paula', 'Ferretti', '32968914522', 1, 3, 'F', 5, 'Marcio Ferretti', 'Ana Hoffbahn', 'anapaulaferretti@hotmail.com', '974267423'),
('Mônica', 'Yamaguti', '32988914510', 1, 2, 'F', 6, 'Wilson Oliveira', 'Fernanda Yamaguti', 'monyamaguti@outlook.com', '932619560'),
('Gustavo', 'Abrantes de Souza', '07652949030', 1, 4, 'M', 6, 'Aderson da Silva', 'Valéria Abrantes', 'gugaabrantes2015@gmail.com', '61995615191');

-- Inserindo dados na tabela de Aluno_disc
INSERT INTO Aluno_disc (Cod_aluno, Cod_disciplina)
VALUES
(3, 1),
(1, 2),
(2, 3),
(4, 3),
(5, 4),
(6, 1),
(7, 3),
(7, 5),
(7, 8);

-- Inserindo dados na tabela de Curso_disciplina
INSERT INTO Curso_Disciplina(Cod_curso, Cod_disciplina)
VALUES
(1, 1),
(2, 2),
(3, 3),
(6, 4),
(6, 5),
(6, 6);

-- Inserindo dados na tabela de prof_disciplina
INSERT INTO Prof_Disciplina(Cod_Professor, Cod_Disciplina)
VALUES
(2, 1),
(1, 2),
(3, 3),
(3, 5),
(3, 6),
(3, 8),
(4, 4);

-- Inserindo dados na tabela de histórico
INSERT INTO Historico (RA, Data_Inicio, Data_Final)
VALUES
(2, '2016-05-12', '2017-10-15'),
(3, '2014-05-12', '2020-03-05'),
(1, '2010-05-12', '2012-05-10'),
(7, '2018-05-12', '2020-05-10');

-- inserindo dados na tabela de tipo de logradouro
INSERT INTO Tipo_Logradouro (Tipo_Logradouro)
VALUES
('Rua'),
('Avenida'),
('Alameda'),
('Travessa'),
('Beco');

-- Inserindo dados na tabela de endereço do aluno
INSERT INTO Endereco_Aluno (RA, Cod_Tipo_Logradouro, Nome_Rua, Num_Rua, Complemento, CEP)
VALUES
(2, 1, 'das Giestas', 255, 'Casa 02', 02854000),
(3, 3, 'Lorena', 10, 'Apto 15', 02945000),
(1, 2, 'do Cursino', 1248, '', 0851040),
(4, 1, 'das Heras', 495, '', 03563142),
(5, 3, 'Santos', 1856, '', 04523963),
(6, 4, 'Matão', 206, '', 04213650),
(7, 1, 'Qnm 40 Conjunto L', 40, 'Casa 31', 72146012);

-- Inserindo dados na tabela de Disc_hist
INSERT INTO Disc_Hist(Cod_Historico, Cod_Disciplina, Nota, Frequência)
VALUES
(4, 6, 6.5, 8),
(4, 5, 6.9, 9),
(4, 3, 10, 10);

-- Inserindo dados na tabela de tipo_telefone
INSERT INTO Tipo_Telefone(Tipo_Telefone)
VALUES
('Residencial'),
('Celular');

-- Inserindo dados na tabela de telefone dos alunos
INSERT INTO Telefones_Aluno(RA, Cod_Tipo_Telefone, Telefone)
VALUES
(7, 1, '34912919'),
(7, 2, '995615191'),
(1, 2, '992679790'),
(2, 2, '993658992'),
(3, 2, '985664171'),
(4, 2, '993211190'),
(5, 2, '991605090'),
(6, 2, '990662111');

