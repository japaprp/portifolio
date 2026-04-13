# Pacote Comercial: Hortfruit Web

## Posicionamento

Sistema web proprio para hortfruit, mercado leve e operacao de varejo com checkout, leitura, estoque, cadastro de produto e modulo mobile complementar.

## Para quem serve

- hortfruit
- mercado de bairro
- varejao
- operacao com balcao e estoque
- negocio que quer leitura de item, catalogo organizado e checkout mais claro

## O que resolve

- desorganizacao no catalogo
- checkout lento
- dificuldade de localizar produto por codigo
- pouca visibilidade de estoque e operacao
- confusao entre perfis de negocio no mesmo cliente

## Escopo base da entrega

- web proprio do hortfruit
- login e perfis operacionais
- busca por codigo e nome
- cadastro de produto
- carrinho e checkout
- historico operacional
- integracao com `Amorim PDV Mobile`
- segregacao por `businessProfile`

## Opcionais

- `Amorim PDV Mobile`
- leitura por camera/codigo
- cadastro mobile de produto
- preset `padaria` no contrato `varejo`
- preset `farmacia` no contrato `varejo`
- integracao com site proprio via `varejo adapter`

## Implantacao padrao

1. diagnostico e escolha do perfil de negocio
2. configuracao do backend/web
3. liberacao de modulos e usuarios
4. carga inicial de catalogo
5. homologacao de leitura e checkout
6. go-live com estabilizacao

## Homologacao minima obrigatoria

- login
- `/auth/operators`
- busca por produto no perfil correto
- cadastro de produto pelo web ou app
- adicao em carrinho
- checkout
- sync e historico

## Regras de negocio importantes

- `businessProfile` sempre separado
- `validacao estrita de dominio` recomendada ligada
- `padaria` e `farmacia` operam no contrato `varejo`, nao como web proprio por enquanto

## Formato comercial recomendado

- vender como `web proprio + app complementar opcional`
- usar `mercado`, `padaria` ou `farmacia` como perfil de operacao
- quando o cliente ja tiver sistema, usar `adapter` em vez de mexer no app

## O que nao prometer sem alinhamento

- mistura de catalogo entre nichos
- farmácia completa sem homologacao de dominio
- integracao direta fora do contrato
- operacao totalmente automatica sem rodada de teste

## Sinal verde para venda

Se o cliente aceita:

- operar dentro do perfil correto
- homologar leitura, checkout e sync
- usar adapter quando tiver sistema proprio

entao o pacote ja esta comercialmente pronto.
