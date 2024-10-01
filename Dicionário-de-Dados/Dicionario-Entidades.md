# Dicionário de dados: Entidades

| Entidade | Relacionamento | Nome do Relacionamento | Descrição |
| ------- | ------- | ------- |------|
|Departamento|     professor, curso e disciplina      |     pertence, controle e gerencia      | Tabela para o cadastro dos departamentos da faculdade |
|Professor|     Departamento e prof_disciplina      |     Pertence e leciona      | Tabela para cadastro dos professores da faculdade |
|Turma |     Curso e Aluno      |   Gera e pertence | Tabela para registro de turmas encerradas ou em andamento|

---
| Entidade | Relacionamento | Nome do Relacionamento | Descrição |
| ------- | ------- | ------- |------|
|Curso|     Departamento, turma, Aluno, curso_disciplina   |    Controle, gera, está matriculado, possui      | Tabela para o cadastro dos cursos oferecidos pela faculdade |
|Aluno|     Curso, turma, disciplina e histórico    |     Está matriculado, pertence, cursa e pertence a      | Tabela para cadastro dos alunos da faculdade |

---
| Entidade | Relacionamento | Nome do Relacionamento | Descrição |
| ------- | ------- | ------- |------|
|Disciplina|     Aluno, Departamento, Prof_disciplina, curso_disciplina, Disciplina, disc_hist   |    cursa, gerencia, é lecionada, pertence, depende, compõe, pertence, depende, compõem, pertence a, é composto | Tabela para cadastro das disciplinas que compõem os cursos oferecidos pela faculdade |
|Histórico|     Aluno, disc_Hist    |     pertence a, e é composto      | Tabela para geração do histórico de notas dos alunos da faculdade |

### Dicionario de dados: Entidades Associativas
---
| Entidade | Relacionamento | Nome do Relacionamento | Descrição |
| ------- | ------- | ------- |------|
|Disc_Hist| Disciplina e Historico    |   compõe, é composto | Tabela associativa entre Disciplina e Histórico |
|Curso_Disciplina|     Curso e Disciplina    |     possui e pertence    | Tabela associativa entre Curso e Disciplina |
|Prof_Disciplina|     Professor e Disciplina   | Leciona, é lecionada    | Tabela associativa entre Professor e Disciplina |
|Aluno_disc|     Aluno e Disciplina   | cursa, é cursada    | Tabela associativa entre Aluno e Disciplina |