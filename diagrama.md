# Diagrama - Biblioteca Escolar

```mermaid
erDiagram

    ALUNO {
        INT id_aluno PK
        VARCHAR nome
        VARCHAR turma
    }

    AUTOR {
        INT id_autor PK
        VARCHAR nome
    }

    LIVRO {
        INT id_livro PK
        VARCHAR titulo
        INT ano_publicacao
        INT id_autor FK
    }

    EMPRESTIMO {
        INT id_emprestimo PK
        DATE data_emprestimo
        DATE data_devolucao
        BOOLEAN status_devolucao
        INT id_livro FK
        INT id_aluno FK
    }

    AUTOR ||--o{ LIVRO : escreve
    ALUNO ||--o{ EMPRESTIMO : realiza
    LIVRO ||--o{ EMPRESTIMO : possui
