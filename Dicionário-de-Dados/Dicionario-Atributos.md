# Dicionario de dados: Atributos
- ## Entidade Departamento

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_departamento| inteiro    |   2 bytes | PK, NOT NULL | Código de identificação do departamento |
|Nome_departamento| caractere | 40 bytes    | NOT NULL |Nome do departamento |
---

- ## Entidade Professor

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_professor| inteiro    |   4 bytes | PK, NOT NULL | Código de identificação do professor |
|Nome_professor|  caractere | 20 bytes    | NOT NULL |Nome do professor |
|sobrenome_professor|   caractere | 50 bytes    | NOT NULL |Sobrenome do professor |
|Cod_departamento| inteiro    |   2 bytes| FK, NOT NULL | Código de identificação do departamento |
| status|   boolean | 1 bit    | NOT NULL | status do professor (lecionando/ não lecionando) |
---

- ## Entidade Curso

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_curso| inteiro |   2 bytes| PK, NOT NULL | Código de identificação do curso |
|Nome_curso| caractere | 40 bytes | NOT NULL |Nome do curso |
|Cod_departamento| inteiro | 2 bytes | FK, NOT NULL | Código de identificação do departamento |
---

- ## Entidade Turma

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_turma | inteiro    | 2 bytes | PK, NOT NULL | Código de identificação da turma |
|Cod_curso |  inteiro | 2 bytes | FK, NOT NULL |código de identificação do curso |
|Perodo | caractere | 5 bytes | NOT NULL |  Período da turma (manhã ou tarde) |
|Num_alunos | inteiro | 2 bytes | NOT NULL | Numero de alunos matriculados na turma |
| Data_inicio | Data | 4 bytes | NOT NULL | data de início da turma |
| Data_fim | Data | 4 bytes | NOT NULL | data de fim da turma |
---

- ## Entidade Aluno

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|RA | caractere | 9 bytes | PK, NOT NULL | Código de identificação do aluno |
|Nome_aluno | caractere | 20 bytes | NOT NULL | nome do aluno |
|Sobrenome_aluno | caractere | 50 bytes | NOT NULL |  sobrenome do aluno|
|CPF | caractere | 11 bytes | NOT NULL, UNIQUE | CPF do aluno |
|Telefone | caractere | 40 bytes | NOT NULL | telefone do aluno |
| Status | caractere | 1 bit | NOT NULL | status da matricula do aluno |
| email | caractere | 60 bytes | NOT NULL | email do aluno |
| WhatsApp | caractere | 11 bytes | NULL | WhatsApp do aluno |
| Cod_turma | inteiro | 2 bytes | FK, NOT NULL | código de identificação da turma |
| Cod_curso | inteiro | 2 bytes | FK, NOT NULL | código de identificação do curso |
| sexo | caractere | 1 bit | NOT NULL | sexo do aluno |
| Nome_Mãe |  caractere | 80 bytes | NOT NULL | nome da mãe do aluno |
| Nome_Pai|  caractere | 80 bytes | NULL | nome do Pai do aluno |
---

- ## Entidade Disciplina

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_disciplina | inteiro | 2 bytes | PK, NOT NULL | Código de identificação da disciplina |
|Nome_disciplina | caractere | 30 bytes | NOT NULL | nome da disciplina |
|Descrição | caractere | 200 bytes | NULL |  descrição da disciplina |
|Cod_departamento | inteiro | 2 bytes | FK, NOT NULL | Código de identificação do departamento |
|carga_horária | inteiro | 2 bytes | NOT NULL | Carga horária da disciplina |
| num_alunos | inteiro | 2 bytes | NOT NULL | numero de alunos da disciplina |
---

- ## Entidade Histórico

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_historico | inteiro | 2 bytes | PK, NOT NULL | Código de identificação do histórico |
|RA |  caractere | 9 bytes | FK, NOT NULL | código de identificação do aluno |
| Data_inicio | inteiro | 4 bytes | NOT NULL |   data do inicio da disciplina |
| Data_final | inteiro | 4 bytes | NULL |   data do fim da disciplina |
---

- ## Entidade Endereco_Aluno

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_Endereco | inteiro | 1 bit | PK, NOT NULL | Código de identificação do endereço do aluno |
|RA | caractere | 9 bytes | PK, FK, NOT NULL | Código de identificação do aluno |
|Cod_Tipo_Logradouro | inteiro | 1 bytes | FK, NOT NULL | Código do tipo de logradouro |
|Nome_rua | caractere | 50 bytes | NOT NULL | Nome da Rua |
|Num_rua | inteiro | 2 bytes | NOT NULL | Numero da Rua |
| Complemento | caractere | 20 bytes | NULL | Complemento |
| CEP | caractere | 8 bytes | NULL | CEP da rua |
---

- ## Entidade Tipo_Logradouro

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
| Cod_Tipo_Logradouro | inteiro | 1 bytes | PK, NOT NULL | Código do tipo de logradouro |
| Tipo_Logradouro |  caractere | 10 bytes |  NOT NULL | Nome do tipo de Logradouro |
---

- ## Entidade Telefones_Aluno

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
| Cod_Tel_Aluno | inteiro | 1 bytes | PK, NOT NULL | Código de identificação do telefone do aluno |
| RA | caractere | 9 bytes | FK, NOT NULL | Código de identificação do aluno |
| Cod_Tipo_Telefone | inteiro | 1 bytes | FK, NOT NULL | Código do tipo de telefone |
| Telefone | caractere | 11 bytes | NOT NULL | Telefone do aluno |
---

- ## Entidade Tipo_Telefone

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
| Cod_Tipo_Telefone | inteiro | 1 bytes | PK, NOT NULL | Código de identificação do tipo de telefone |
| Tipo_Telefone | caractere | 12 bytes | NOT NULL | Nome do Tipo de telefone |
---

- ## Entidade disc_hist (associativa)

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_historico | inteiro | 2 bytes | PK, FK, NOT NULL | Código de identificação do histórico |
|Cod_disciplina | inteiro | 2 bytes | PK, FK, NOT NULL | Código de identificação da disciplina |
| nota | decimal | 8 bytes | NOT NULL | Nota da disciplina |
| Frequência | inteiro | 2 bytes | NOT NULL |  Número de faltas na disciplina |
---

- ## Entidade curso_disciplina (associativa)

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_curso | inteiro | 2 bytes | PK, FK, NOT NULL | Código de identificação do curso |
|Cod_disciplina | inteiro | 2 bytes | PK, FK, NOT NULL | Código de identificação da disciplina |
---

- ## Entidade prof_disciplina (associativa)

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_professor | inteiro | 2 bytes | PK, FK, NOT NULL | Código de identificação do professor |
|Cod_disciplina | inteiro | 2 bytes | PK, FK, NOT NULL | Código de identificação da disciplina |
---

- ## Entidade Aluno_disc (associativa)

| Atributo | Tipos de dados | Comprimento | Restrições | Descrição |
| ------- | ------- | ------- |------| ------|
|Cod_Aluno | caractere | 9 bytes | PK, FK, NOT NULL | Código de identificação do aluno |
|Cod_disciplina | inteiro | 2 bytes | PK, FK, NOT NULL | Código de identificação da disciplina |
---