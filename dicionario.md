# Dicionário de Dados - Biblioteca Escolar

## ALUNO

| Campo | Tipo | Chave | Aceita nulo? | Descrição |
| --- | --- | --- | --- | --- |
| id_aluno | INT | PK | Não | Identificador único do aluno. |
| nome | VARCHAR | — | Não | Nome do aluno. |
| turma | VARCHAR | — | Não | Turma em que o aluno está matriculado. |

## AUTOR

| Campo | Tipo | Chave | Aceita nulo? | Descrição |
| --- | --- | --- | --- | --- |
| id_autor | INT | PK | Não | Identificador único do autor. |
| nome | VARCHAR | — | Não | Nome do autor. |

## LIVRO

| Campo | Tipo | Chave | Aceita nulo? | Descrição |
| --- | --- | --- | --- | --- |
| id_livro | INT | PK | Não | Identificador único do livro. |
| titulo | VARCHAR | — | Não | Título do livro. |
| ano_publicacao | INT | — | Sim | Ano em que o livro foi publicado. |
| id_autor | INT | FK | Não | Identificador do autor do livro. |

## EMPRESTIMO

| Campo | Tipo | Chave | Aceita nulo? | Descrição |
| --- | --- | --- | --- | --- |
| id_emprestimo | INT | PK | Não | Identificador único do empréstimo. |
| data_emprestimo | DATE | — | Não | Data em que o livro foi emprestado. |
| data_devolucao | DATE | — | Sim | Data em que o livro foi devolvido. |
| status_devolucao | BOOLEAN | — | Não | Indica se o livro foi devolvido. |
| id_livro | INT | FK | Não | Identificador do livro emprestado. |
| id_aluno | INT | FK | Não | Identificador do aluno que realizou o empréstimo. |

## Legenda

- **PK**: chave primária.
- **FK**: chave estrangeira.
- **Nulo**: campo que pode ficar sem valor.
