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
|Aluno|     Curso, turma, Aluno_disc, histórico e Telefone_Aluno    |     Está matriculado, pertence, cursa, pertence a, possui      | Tabela para cadastro dos alunos da faculdade |
| Endereco_Aluno |     Aluno e Tipo_Logradouro   | possui, é do tipo    | Tabela para registro dos endereços dos Alunos |
| Tipo_Logradouro |  Endereco_Aluno  |  Compõe  | Tabela para registro dos tipos de logradouro |
| Telefones_Aluno |  Aluno, Tipo_Telefone  |  possui e pertence  | Tabela para registro dos telefones dos alunos  |
| Tipo_Telefone |  Telefone_Aluno  |  define  | Descrição dos tipos de telefones aceitos  |


---
| Entidade | Relacionamento | Nome do Relacionamento | Descrição |
| ------- | ------- | ------- |------|
|Disciplina|     Aluno_disc, Aluno, Departamento, Prof_disciplina, curso_disciplina, Disciplina, disc_hist  |    cursa, Pertence a, gerencia, é lecionada, pertence, depende, compõe, pertence, depende, compõem, é composto | Tabela para cadastro das disciplinas que compõem os cursos oferecidos pela faculdade |
|Histórico|     Aluno, disc_Hist    |     pertence a, e é composto      | Tabela para geração do histórico de notas dos alunos da faculdade |

### Dicionario de dados: Entidades Associativas
---
| Entidade | Relacionamento | Nome do Relacionamento | Descrição |
| ------- | ------- | ------- |------|
| Disc_Hist | Disciplina e Historico    |   compõe, é composto | Tabela associativa entre Disciplina e Histórico |
| Curso_Disciplina |     Curso e Disciplina    |     possui e pertence    | Tabela associativa entre Curso e Disciplina |
| Prof_Disciplina |     Professor e Disciplina   | Leciona, é lecionada    | Tabela associativa entre Professor e Disciplina |
| Aluno_disc |     Aluno e Disciplina   | cursa, é cursada    | Tabela associativa entre Aluno e Disciplina |
