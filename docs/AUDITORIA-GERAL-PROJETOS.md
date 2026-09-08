# Auditoria geral dos projetos — 2026-09

Este documento registra **todos os repositorios encontrados na conta `japaprp`** nesta rodada para evitar que qualquer projeto seja esquecido.

> Importante: esta e uma auditoria de estado/repositorio e documentacao. Ela identifica prioridades e riscos a validar. Um projeto so pode ser declarado pronto depois de testes reais, execucao, carga, seguranca e validacao operacional.

## 1. Produtos comerciais / profissionais

### 1.1 Portal RH — `japaprp/web`

**Status:** 🟡 endurecimento prioritario

**Produto:** sistema empresarial de RH e operacoes internas.

**Ja existe:** autenticacao por sessao, RBAC, ponto, ferias, documentos, solicitacoes, beneficios, avaliacoes, canal de denuncias, almoxarifado, tesouraria, area de lideres, SLA, alertas, relatorios e auditoria.

**Prioridade tecnica:**
- seguranca de sessao e RBAC
- IDOR/BOLA e acesso direto a registros
- LGPD e dados pessoais/sensiveis
- documentos e uploads
- integridade de ponto/ferias/solicitacoes
- denuncias com acesso minimo
- tesouraria e almoxarifado com concorrencia
- testes automatizados
- backup/restauracao
- observabilidade
- definir se a proxima versao sera empresa unica ou SaaS multiempresa

**Decisao:** tratar como produto B2B de alto valor potencial. Nao vender como pronto ate validar os pontos acima.

### 1.2 Hamburgueria — `japaprp/hamburgueria`

**Status:** 🟡 principal candidato a produto SaaS de referencia

**Produto:** operacao completa de lanchonete/restaurante multi-tenant.

**Prioridade tecnica:** delivery/entregadores, concorrencia em estoque/caixa/pagamento, idempotencia, webhooks, isolamento tenant, filas/Redis, observabilidade, backup, E2E e carga.

**Decisao:** primeiro grande ciclo de hardening.

### 1.3 Perifa Pro — `japaprp/Perifa-Pro`

**Status:** 🟡 produto ambicioso em consolidacao

**Produto:** SaaS/ecossistema de campeonatos esportivos.

**Prioridade tecnica:** ciclo completo de campeonato, tabela/resultados, equipes/jogadores, pagamentos, fotos/loja, monetizacao, multi-tenant, autorizacao, uploads, carga, mobile/web/API e observabilidade.

**Decisao:** segundo grande ciclo depois da base operacional da Hamburgueria/RH.

### 1.4 Varejao do Povo — `japaprp/varejao-backend`

**Status:** 🟡 base forte, sem validacao operacional atual do negocio original

**Produto:** varejo/PDV/e-commerce com checkout, pagamentos e tempo real.

**Prioridade tecnica:** pedido/pagamento/estoque ponta a ponta, SSE + polling, concorrencia, idempotencia, seguranca administrativa, backup, carga e resiliencia.

**Decisao:** produto reutilizavel de varejo; nao assumir que a operacao original continua existindo.

### 1.5 Salao da Lu — `japaprp/salao`

**Status:** 🟡 vertical em productizacao

**Produto:** plataforma para saloes/beleza com web + mobile.

**Prioridade tecnica:** agenda sem conflitos, clientes/historico, profissionais, financeiro, notificacoes, RBAC, multi-tenant, LGPD, testes de concorrencia e consistencia web/mobile.

### 1.6 Barbearia do Artur — `japaprp/salao-do-arthur`

**Status:** 🟡 vertical em consolidacao

**Produto:** agenda/atendimento/gestao de barbearia com web + backend + mobile.

**Prioridade tecnica:** agenda concorrente, atendimento, fechamento, clientes/historico, permissoes, financeiro quando aplicavel, testes, backup e productizacao.

**Observacao:** existe tambem `japaprp/salao-do-artur`, arquivado e duplicado. O repositorio ativo a considerar e `salao-do-arthur`.

### 1.7 LeitorCodigo — `japaprp/leitordecodigo`

**Status:** 🟡 modulo complementar com potencial comercial

**Produto:** app Android de scanner/comanda, offline-first, multi-tenant e integracao com PDV.

**Prioridade tecnica:** fila offline, idempotencia, sincronizacao, conflitos, seguranca de tokens/SQLite, licenca, integracao versionada, dispositivos reais e diagnostico.

### 1.8 Estacia Renascer Belvedere — `japaprp/estacia-renascer-belvedere`

**Status:** 🟡 site comercial simples

**Produto:** presenca digital e captacao de locacoes para espaco de eventos.

**Prioridade tecnica:** formulario/WhatsApp, disponibilidade real, fallback confiavel, anti-spam, SEO, Core Web Vitals, acessibilidade, HTTPS e monitoramento.

### 1.9 Portfolio — `japaprp/portifolio`

**Status:** 🟡 vitrine comercial

**Papel:** nao e o produto operacional; e a camada de apresentacao dos produtos.

**Prioridade:** manter somente afirmacoes verificadas, demos coerentes, paginas comerciais claras, provas de funcionamento e links sem funcionalidades falsas.

---

## 2. Projeto de grande porte / produto futuro

### 2.1 Infinit War — `japaprp/infinit-war-guerra-infinita`

**Status:** 🔴 planejamento/engenharia futura, nao produto pronto

**Escopo:** jogo mobile 2.5D com city builder, herois, PvE/PvP, mapa multiplayer, alianças, economia, live ops e monetizacao.

**Ja existe:** plano mestre, backlog por sprint, contratos OpenAPI/gRPC, balanceamento inicial e scripts de validacao de ambiente.

**Prioridade:** congelar MVP, contrato de API, economia/timers server-authoritative, backend autoritativo, alpha fechado com telemetria.

**Regra:** nao misturar esse projeto na fila de produtos comerciais imediatos; ele tem complexidade e custo operacional muito maiores.

---

## 3. Repositorios sem escopo comercial definido nesta rodada

### 3.1 `japaprp/memorias-amigos`

Repositorio existente e nao arquivado, mas sem README localizado e sem escopo comercial confirmado nesta auditoria.

**Acao:** manter fora da fila comercial ate definir objetivo e escopo. Se for um produto ativo, criar README e aplicar o mesmo checklist.

### 3.2 `japaprp/Reboquei`

Repositorio **vazio**.

**Acao:** nenhuma auditoria de codigo possivel. Nao entra na fila ate receber implementacao/escopo.

### 3.3 `japaprp/elegance`

Repositorio **vazio**.

**Acao:** nenhuma auditoria de codigo possivel. Nao entra na fila ate receber implementacao/escopo.

### 3.4 `japaprp/japaprp`

Repositorio de perfil/conta, sem produto comercial identificado nesta rodada.

**Acao:** nao entra no ciclo de hardening de produtos.

### 3.5 `japaprp/salao-do-artur`

Repositorio **arquivado** e duplicado do projeto Barbearia do Artur.

**Acao:** nao desenvolver aqui. Usar `japaprp/salao-do-arthur` como fonte ativa.

---

## 4. Ordem oficial de execucao

### Onda A — produtos que podem gerar venda

1. **Hamburgueria**
2. **Portal RH**
3. **Perifa Pro**
4. **Varejao**
5. **Salao da Lu**
6. **Barbearia do Artur**
7. **LeitorCodigo**
8. **Estacia Renascer**

### Onda B — produto futuro de alta complexidade

9. **Infinit War**

### Onda C — projetos sem escopo confirmado

10. **memorias-amigos**
11. **Reboquei**
12. **elegance**

Repositorios de perfil/duplicados nao entram como produtos independentes.

---

## 5. Padrao obrigatorio de auditoria por produto

Para cada produto da Onda A:

1. inventario da arquitetura e dependencias
2. autenticacao/autorizacao/RBAC
3. isolamento de dados e tenant
4. validacao de entrada e seguranca
5. integridade transacional
6. idempotencia e concorrencia
7. regras de negocio criticas
8. testes unitarios/integracao/E2E
9. testes de falha e recuperacao
10. performance e consultas
11. carga/conexoes simultaneas
12. logs/metricas/alertas
13. backup e restauracao real
14. deploy reproduzivel e rollback
15. UX operacional
16. documentacao tecnica e manual
17. checklist de go-live
18. avaliacao comercial e limites do que pode ser prometido

## 6. Regra final

**Nenhum produto sera considerado pronto apenas porque compila, abre ou possui muitas telas.**

Pronto significa que o fluxo de negocio contratado funciona de ponta a ponta e que os riscos relevantes para aquele dominio foram testados e controlados.
