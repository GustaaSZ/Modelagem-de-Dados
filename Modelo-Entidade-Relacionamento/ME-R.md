# Modelo Entidade Relacionamento
---
## ME-R: Entidades
- Aluno
- Professor
- Curso
- Disciplina
- Departamento
- Turma
- Histórico

## ME-R: Descrição das Entidades
- Aluno:
    (Número da matrícula, nome, endereço (rua, bairro, número, CEP, cidade, Estado), código do curso, telefone, cpf).
- Professor:
    (Cod_professor, nome_professor, sobrenome_professor, Cod_Departamento, status).
- Disciplinas:
    (Cod_disciplina, nome_disciplina, Descrição, cod_departamento, num_alunos, caga_horaria).
- Curso:
    (Cod_curso, nome_curso, cod_departamento).
- Departamento
    (Cod_departamento, nome_departamento).
- Turma:
    (Cod_turma, período, cod_curso, num_alunos, data_inicio, data_fim).
- Histórico
    (Cod_histórico, notas, média, frequência, periodo_realização, RA,cod_disciplina).
- disc_hist:
    (cod_histotico, cod_disciplina, frequencia, nota)
- prof_discplina:
    (cod_disciplina, cod_professor)
- curso_disciplina:
    (cod_curso, cod_disciplina)
- Aluno_disc:
    (cod_aluno, cod_disciplina)

## ME-R: Relacionamentos
- Aluno está matriculado em Curso: Aluno só pode estar matriculado em um curso, enquanto curso, pode ter nenhum, ou vários alunos.

- Aluno cursa Disciplina: O aluno só pode estar matriculado em no máximo 9 disciplinas.

- Aluno realizou Disciplina: O aluno em seu histórico, deverá ter as disciplinas que já realizou.

- Aluno pertence a Turma: O aluno só pode pertencer a uma única turma, enquanto uma turma pode ter de um a vários alunos.

- Professor ministra Disciplina: O professor pode ter nenhum, ou várias prof_disciplina e uma prof_disciplina só pode ser lecionada por um professor.

- Disciplina é lecionada por prof_Disciplina: Uma disciplina pode ser lecionada por um ou vários prof_disciplina e um prof_disciplina só pode lecionar uma Disciplina.

- Professor pertence a Departamento: O professor terá no mínimo e no máximo 1 departamento, enquanto departamento, terá 1 ou vários professores.

- Curso_disciplina possui curso: A junção de curso_disciplina possui somente à um curso, e um curso, pode ter de um a vários curso_disciplinas.

- Departamento é responsável por Disciplina:  O professor terá no mínimo e no máximo 1 departamento, enquanto departamento, terá 1 ou vários professores.

- Departamento controla Curso: O departamento pode ter de 1 a vários cursos, enquanto curso só pode pertencer a um curso.

- Disciplina depende de Disciplina: Um disciplina pode depender de outra disciplina (ex: C2 depende de C1).

- Disciplina compõe disc_hist: Uma disciplina pode ter de um á vários históricos de disciplinas (disc_hist) e um disc_hist só pode compor uma única disciplinas.

- Histórico é composto por disc_hist: Um histórico é composto por um ou vários históticos de disciplinas (disc_hist) e um disc_hist só pode pertencer há um único Histórico.

- Aluno Cursa aluno_disc: Um aluno pode cursar vários a combinação de aluno_dics, porém aluno_dics, só pode pertencer à um único aluno. 

- Disciplina é cursada por aluno_disc: Uma disciplina pode ser cursada por vários aluno_dics, porém aluno_dics, só pode pertencer à uma única disciplina. 

