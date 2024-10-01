# Dicionario de dados: Atributos
- ## Entidade Departamento

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_departamento| inteiro    |   4 bytes| PK, NOT NULL | Código de identificação do departamento |
|Nome_departamento|     caractere | 40 bytes    | NOT NULL |Nome do departamento |
---

- ## Entidade Professor

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_professor| inteiro    |   4 bytes| PK, NOT NULL | Código de identificação do professor |
|Nome_professor|  caractere | 40 bytes    | NOT NULL |Nome do professor |
|sobrenome_professor|   caractere | 40 bytes    | NOT NULL |Sobrenome do professor |
|Cod_departamento| inteiro    |   4 bytes| FK, NOT NULL | Código de identificação do departamento |
| status|   boolean | 1 bit    | NOT NULL | status do professor (lecionando/ não lecionando) |
---

- ## Entidade Curso

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_curso| inteiro    |   4 bytes| PK, NOT NULL | Código de identificação do curso |
|Nome_curso|     caractere | 40 bytes    | NOT NULL |Nome do curso |
|Cod_departamento| inteiro    |   4 bytes| FK, NOT NULL | Código de identificação do departamento |
---

- ## Entidade Turma

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_turma | inteiro    |   4 bytes | PK, NOT NULL | Código de identificação da turma |
|Cod_curso |  inteiro | 4 bytes    | FK, NOT NULL |código de identificação do curso |
|Perodo |   caractere | 10 bytes    | NOT NULL |  Período da turma (manhã ou tarde) |
|Num_alunos | inteiro    |   2 bytes | NOT NULL | Numero de alunos matriculados na turma |
| Data_inicio |   Data | 4 bytes    | NOT NULL | data de início da turma |
| Data_fim |   Data | 4 bytes    | NOT NULL | data de fim da turma |
---

- ## Entidade Aluno

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|RA | caractere    |   8 bytes | PK, NOT NULL | Código de identificação do aluno |
|Nome_aluno |  caractere | 25 bytes    | NOT NULL | nome do aluno |
|Sobrenome_aluno |   caractere | 40 bytes    | NOT NULL |  sobrenome do aluno|
|CPF | caractere    |   40 bytes | NOT NULL | CPF do aluno |
|Telefone | caractere    |   40 bytes | NOT NULL | telefone do aluno |
| Status |  caractere | 1 bit    | NOT NULL | status da matricula do aluno |
| Contato |  caractere | 40 bytes    | NOT NULL | Formas de contato com o aluno |
| Cod_turma |  inteiro | 4 bytes    | FK, NOT NULL | código de identificação da turma |
| Cod_curso |  inteiro | 4 bytes    | FK, NOT NULL | código de identificação do curso |
| sexo |  caractere | 1 bit    | NOT NULL | sexo do aluno |
| Filiação |  caractere | 80 bytes    | NOT NULL | nome da mãe do aluno |
| Endereço |  rua número CEP | 80B, 10B, 10B    | NOT NULL | Endereço do aluno dividido em rua, número e cep |
---

- ## Entidade Disciplina

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_disciplina | inteiro    |   4 bytes | PK, NOT NULL | Código de identificação da disciplina |
|Nome_disciplina |  caractere | 30 B    | NOT NULL | nome da disciplina |
|Descrição |   caractere | 200 B    | NULL |  descrição da disciplina |
|Cod_departamento | inteiro    |   4 bytes | FK, NOT NULL | Código de identificação do departamento |
|carga_horária | inteiro    |   4 bytes | NOT NULL | Carga horária da disciplina |
| num_alunos |  inteiro  | 4 bytes    | NOT NULL | numero de alunos da disciplina |
---

- ## Entidade Histórico

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_historico | inteiro    |   4 bytes | PK, NOT NULL | Código de identificação do histórico |
|RA |  caractere | 8 bytes    | FK, NOT NULL | código de identificação do aluno |
| Periodo_realização |  inteiro  | 4 B    | NOT NULL |   duração da disciplina em meses |
---

- ## Entidade disc_hist (associativa)

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_historico | inteiro    |   4 bytes | PK, FK, NOT NULL | Código de identificação do histórico |
|Cod_disciplina | inteiro    |   4 bytes | PK, FK, NOT NULL | Código de identificação da disciplina |
| nota |  decimal | 8 bytes    | NOT NULL | Nota da disciplina |
| frequência |  inteiro  | 4 bytes    | NOT NULL |  Número de faltas na disciplina |
---

- ## Entidade curso_disciplina (associativa)

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_curso | inteiro |   4 bytes | PK, FK, NOT NULL | Código de identificação do curso |
|Cod_disciplina | inteiro  |   4 bytes | PK, FK, NOT NULL | Código de identificação da disciplina |
---

- ## Entidade prof_disciplina (associativa)

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_professor | inteiro |   4 bytes | PK, FK, NOT NULL | Código de identificação do professor |
|Cod_disciplina | inteiro  |   4 bytes | PK, FK, NOT NULL | Código de identificação da disciplina |
---

- ## Entidade Aluno_disc (associativa)

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_Aluno | caractere |   8 bytes | PK, FK, NOT NULL | Código de identificação do aluno |
|Cod_disciplina | inteiro  |   4 bytes | PK, FK, NOT NULL | Código de identificação da disciplina |
---