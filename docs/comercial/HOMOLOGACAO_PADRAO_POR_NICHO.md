# Homologacao Padrao por Nicho

Use este roteiro como regra fixa antes de liberar qualquer cliente para operacao real.

## Regra geral

- sem homologacao, nao existe go-live
- sem contrato ou adapter, nao existe integracao com site proprio
- homologacao precisa acontecer no fluxo real do nicho

## Lanchonete

- login por perfil
- mesa ou viagem
- pedido enviado
- cozinha recebe
- status muda
- pagamento fecha
- historico grava

## Hortfruit / Mercado

- login
- busca por codigo e nome
- cadastro de produto
- carrinho
- checkout
- sync
- historico

## Padaria

- login
- cadastro com `estacao de producao`
- pedido operacional
- producao em `forno` ou estacao correta
- retirada ou balcao
- fechamento

## Farmacia

- login
- cadastro com `lote`
- cadastro com `validade`
- codigo interno ou barras valido
- rota permitida
- consulta e fechamento do fluxo principal

## Cliente com site proprio

- adapter responde `health`
- adapter responde `meta`
- login responde
- catalogo responde
- operacao principal responde
- sync principal responde

## Encerramento da homologacao

- fluxo principal passou
- erro critico nao ficou pendente
- cliente validou o roteiro
- ambiente de producao foi liberado
