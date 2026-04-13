# Pacotes Comerciais por Nicho

Este documento consolida o posicionamento comercial final dos produtos principais para venda, implantacao e homologacao sem improviso.

## Regra do modelo comercial

- `lanchonete` e `hortfruit` sao produtos web independentes
- `Amorim PDV Mobile` e o modulo mobile universal
- `padaria` e `farmacia` entram no app pelo contrato `varejo`
- cliente com `site proprio` integra via `contrato` ou `adapter`, nunca direto no app
- toda entrega real passa por `homologacao curta obrigatoria`

## Pacotes principais

### Pacote 1: Lanchonete Web

- Produto: sistema web proprio para lanchonete, hamburgueria, bar e operacao food
- Entrega base: web + configuracao operacional + opcional mobile
- Melhor encaixe: negocio com PDV, cozinha, comanda, retirada ou delivery proprio
- Documento detalhado: `PACOTE_LANCHONETE.md`

### Pacote 2: Hortfruit Web

- Produto: sistema web proprio para hortfruit, mercado e operacao de varejo
- Entrega base: web + checkout + catalogo + opcional mobile
- Melhor encaixe: negocio com leitura, estoque, checkout, conferência e operacao de balcao
- Documento detalhado: `PACOTE_HORTFRUIT.md`

### Pacote 3: Amorim PDV Mobile

- Produto: app universal para leitura, caixa, atendimento, cozinha e operacao por perfil
- Entrega base: app + preset por setor + integracao com web proprio ou adapter do cliente
- Melhor encaixe: cliente que quer mobilidade sem trocar o sistema inteiro
- Documento detalhado: `PACOTE_AMORIM_PDV_MOBILE.md`

## Modalidades de venda

### 1. Produto-base com adaptacao

Use quando:

- o nicho ja e atendido por um produto existente
- o cliente aceita trabalhar sobre uma base pronta
- a primeira entrega precisa ser rapida e previsivel

### 2. Produto-base + modulo mobile

Use quando:

- o cliente quer web principal e operacao mobile complementar
- existe uso forte de leitura, comanda, cozinha, balcao ou caixa

### 3. App com integracao em site proprio

Use quando:

- o cliente ja tem web/ERP/site
- ele quer usar so o `Amorim PDV Mobile`
- a integracao sera feita por `contrato` ou `adapter`

## Regra de homologacao

- nao existe plug-and-play sem teste final
- toda venda com integracao passa por `homologacao padrao`
- toda venda com mobile passa por `rodada real de operador`

Documento base:

- `HOMOLOGACAO_PADRAO_POR_NICHO.md`
