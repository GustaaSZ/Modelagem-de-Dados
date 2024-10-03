-- Concatenando o nome com sobrenome do aluno
select A.RA, concat(A.Nome_Aluno, ' ', A.Sobrenome_Aluno)
AS 'Nome completo', A.Cpf, A.email from 
db_faculdade2.aluno A;

-- Consulta para verificar o RA do aluno, seu nome e sobrenome, seu cpf, nome do seu curso e seu periodo
select A.RA, concat(A.Nome_Aluno, ' ', A.Sobrenome_Aluno) as 'Nome Completo',
A.Cpf, C.Nome_curso, T.Periodo
from db_faculdade2.aluno A
inner join db_faculdade2.curso C
	on C.Cod_curso = A.Cod_curso
inner join db_faculdade2.turma T
	on T.Cod_turma = A.Cod_turma -- onde cod_turma = cod_aluno
order by A.Nome_Aluno; -- Ordenando pelo nome do aluno

-- Consulta para verificar Somente os alunos que cursam de noite 
select A.RA, concat(A.Nome_Aluno, ' ', A.Sobrenome_Aluno) as 'Nome Completo',
A.Cpf, C.Nome_curso, T.Periodo
from db_faculdade2.aluno A
inner join db_faculdade2.curso C
	on C.Cod_curso = A.Cod_curso
inner join db_faculdade2.turma T
	on T.Cod_turma = A.Cod_turma -- onde cod_turma = cod_aluno
where T.Periodo = 'Noite' -- Filtrando apenas os que cursam a noite
order by A.Nome_Aluno; -- Ordenando pelo nome do aluno

-- Consulta para verificar Somente os alunos tem nota entre 7 e 10
select A.RA, concat(A.Nome_Aluno, ' ', A.Sobrenome_Aluno) as 'Nome Completo',
C.Nome_curso, T.Periodo, D.Nome_disciplina, DH.Nota
from db_faculdade2.aluno A
inner join db_faculdade2.curso C
	on C.Cod_curso = A.Cod_curso
inner join db_faculdade2.turma T
	on T.Cod_turma = A.Cod_turma
inner join db_faculdade2.historico H
	on H.RA = A.RA
inner join db_faculdade2.disc_hist DH
	on DH.Cod_Historico = H.Cod_Historico
inner join db_faculdade2.disciplina D
	on D.Cod_disciplina = DH.Cod_Disciplina
where DH.Nota between 7 and 10
order by A.Nome_Aluno;

-- Consulta para verificar os alunos de forma geral, com seus endereços e telefones
select A.RA, concat(A.Nome_Aluno, ' ', A.Sobrenome_Aluno) as 'Nome Completo',
A.Cpf, EA.CEP ,concat(EA.Nome_Rua, ' ', EA.Num_Rua, ' ', EA.Complemento) as 'Endereço' 
,C.Nome_curso, T.Periodo, concat(TA.Telefone,' -> ',TT.Tipo_Telefone) as 'Contato'
from db_faculdade2.aluno A
inner join db_faculdade2.curso C
	on C.Cod_curso = A.Cod_curso
inner join db_faculdade2.turma T
	on T.Cod_turma = A.Cod_turma
inner join db_faculdade2.endereco_aluno EA
	on EA.RA = A.RA
inner join db_faculdade2.telefones_aluno TA
	on TA.RA = A.RA
inner join db_faculdade2.tipo_telefone TT
	on TT.Cod_Tipo_Telefone = TA.Cod_Tipo_Telefone
order by A.Nome_Aluno;