# Dicionário de Dados - Pedidos

## CLIENTE

| Campo | Tipo | Tamanho | Chave | Aceita nulo? | Restrição | Descrição |
| --- | --- | --- | --- | --- | --- | --- |
| id_cliente | INT | — | PK | Não | Único | Identificador único do cliente |
| cpf | CHAR | 11 | — | Não | Único | CPF do cliente |
| nome_cliente | VARCHAR | 100 | — | Não | — | Nome completo do cliente |
| endereco | VARCHAR | — | — | Não | Composto | Endereço formado por CEP, número e complemento |
| telefone | VARCHAR | 20 | — | Não | Multivalorado | Telefone do cliente, podendo possuir mais de um |

## PEDIDO

| Campo | Tipo | Tamanho | Chave | Aceita nulo? | Restrição | Descrição |
| --- | --- | --- | --- | --- | --- | --- |
| id_pedido | INT | — | PK | Não | Único | Identificador único do pedido |
| id_cliente | INT | — | FK | Não | Referencia CLIENTE | Cliente que realizou o pedido |
| id_entregador | INT | — | FK | Não | Referencia ENTREGADOR | Entregador responsável pelo pedido |
| data | DATE | — | — | Não | — | Data em que o pedido foi realizado |
| hora_pedido | TIME | — | — | Não | — | Horário em que o pedido foi realizado |
| hora_entrega | TIME | — | — | Sim | — | Horário da entrega do pedido |
| hora_fim | TIME | — | — | Sim | — | Horário em que a entrega foi finalizada |

## PRODUTO

| Campo | Tipo | Tamanho | Chave | Aceita nulo? | Restrição | Descrição |
| --- | --- | --- | --- | --- | --- | --- |
| id_produto | INT | — | PK | Não | Único | Identificador único do produto |
| nome_produto | VARCHAR | 100 | — | Não | — | Nome do produto |
| preco_unitario | DECIMAL | 10,2 | — | Não | Valor maior ou igual a zero | Preço unitário do produto |

## ENTREGADOR

| Campo | Tipo | Tamanho | Chave | Aceita nulo? | Restrição | Descrição |
| --- | --- | --- | --- | --- | --- | --- |
| id_entregador | INT | — | PK | Não | Único | Identificador único do entregador |
| nome_entregador | VARCHAR | 100 | — | Não | — | Nome do entregador |
| veiculo | VARCHAR | 30 | — | Não | — | Veículo utilizado pelo entregador |

## PEDIDO_PRODUTO

| Campo | Tipo | Tamanho | Chave | Aceita nulo? | Restrição | Descrição |
| --- | --- | --- | --- | --- | --- | --- |
| id_pedido | INT | — | PK, FK | Não | Referencia PEDIDO | Pedido relacionado ao item |
| id_produto | INT | — | PK, FK | Não | Referencia PRODUTO | Produto relacionado ao pedido |
| quantidade | INT | — | — | Não | Maior que zero | Quantidade do produto no pedido |
| subtotal | DECIMAL | 10,2 | — | Não | Valor maior ou igual a zero | Valor da quantidade multiplicada pelo preço unitário |

## Legenda

- **PK**: chave primária.
- **FK**: chave estrangeira.
- **Composto**: atributo formado por mais de uma parte.
- **Multivalorado**: atributo que pode possuir mais de um valor.
- **Nulo**: campo que pode ficar sem valor.
