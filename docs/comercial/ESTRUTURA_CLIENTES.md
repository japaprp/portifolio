# Estrutura de Pastas e Entregas

## Modelo recomendado

- produto-base/
- demo-comercial/
- clientes/

## Exemplo

- produto-base/lanchonete
- demo-comercial/lanchonete
- clientes/cliente-a-lanchonete

## Regra pratica

- Produto-base:
  origem da evolucao principal
- Demo-comercial:
  ambiente de apresentacao com dados controlados
- Cliente:
  instancia propria com identidade, regras e configuracoes do contratante

## O que nao misturar

- Dado real de cliente em demo
- Ajuste especifico de um cliente dentro do produto-base
- Credenciais reais em repositorio publico

## Fluxo ideal

1. Vender pela demo
2. Confirmar diagnostico
3. Clonar base ou adaptar produto
4. Implantar no ambiente do cliente
5. Fazer estabilizacao inicial
