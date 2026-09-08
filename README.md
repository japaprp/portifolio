# Portifolio - Yago Fellipe Amorim

Portifolio profissional com apresentacao, stack, demos comerciais, paginas de produto e estudos de caso dos produtos entregues.

## Objetivo

Apresentar produtos web e mobile com foco em confiabilidade, fluxos reais de negocio, capacidade de adaptacao por cliente e qualidade de entrega.

O portfolio nao deve vender telas ou funcionalidades apenas planejadas. Uma funcionalidade so deve ser apresentada como existente quando estiver implementada, testada e validada no fluxo real correspondente.

## Projetos em destaque

- Horti Fruit / Varejao do Povo
- Portal RH com dossie inteligente, workflow operacional, central de pendencias e base multiempresa
- Chacara Estacia Renascer Belvedere
- Plataforma de Lanchonete com multiplos PDVs
- LeitorCodigo Mobile como modulo universal para caixa, leitura e atendimento

## Modelo comercial

- cada sistema web aparece como produto independente
- o portfolio aponta para demos controladas
- cada produto possui pagina curta de venda em `produtos/`
- existe uma visao comercial enxuta em `comercial/visao-geral.html`
- a venda acontece em cima do produto-base com adaptacao por cliente
- o `LeitorCodigo` entra como modulo mobile complementar quando fizer sentido

## Regra de qualidade para apresentacao

Antes de marcar um produto como pronto para venda, revisar:

- [ ] Fluxo principal completo de ponta a ponta
- [ ] Persistencia real de dados
- [ ] Autenticacao, autorizacao e isolamento de dados validados
- [ ] Validacoes de entrada e tratamento de erros
- [ ] Estados vazios, loading, sucesso e falha tratados
- [ ] Operacoes criticas protegidas contra duplicidade e inconsistencias
- [ ] Testes automatizados para regras criticas
- [ ] Logs e observabilidade suficientes para diagnosticar problemas
- [ ] Backup e estrategia de recuperacao definidos quando houver dados persistentes
- [ ] Deploy reproduzivel e configuracao de ambiente documentada
- [ ] Seguranca basica revisada antes de qualquer uso comercial
- [ ] Performance/concorrrencia revisadas para o volume esperado
- [ ] Documentacao coerente com o que realmente esta implementado
- [ ] Demo sem botoes mortos ou telas que aparentem funcionalidades inexistentes

### Status de apresentacao

- 🟢 **Pronto para apresentar:** fluxo real validado e riscos criticos controlados.
- 🟡 **Em acabamento:** produto funcional, mas ainda existe trabalho de hardening ou validacao.
- 🔴 **Nao apresentar como produto pronto:** conceito, modulo parcial ou funcionalidade sem fluxo completo.
- 💰 **Potencial comercial:** produto com nicho claro e capacidade de reutilizacao/adaptacao.

## Auditoria dos produtos

### Hamburgueria

**Posicionamento:** SaaS operacional para lanchonetes/restaurantes.

Prioridades de validacao:

- fluxo pedido → producao → pagamento → despacho → entrega/retirada
- PDV e canais de venda
- estoque/receitas e consistencia financeira
- entregadores e acompanhamento de entrega
- idempotencia em operacoes criticas e webhooks
- isolamento multi-tenant
- filas, Redis, observabilidade e recuperacao de falhas
- testes de concorrencia e regras de permissao

**Meta:** ser apresentado como sistema operacional de negocio, nao como dashboard demonstrativo.

### Perifa Pro

**Posicionamento:** plataforma SaaS/ecossistema para campeonatos, ligas e organizadores esportivos.

Prioridades de validacao:

- ciclo completo de campeonato
- equipes, atletas, partidas, tabela e resultados
- pagamentos/taxas quando aplicaveis
- fotos, patrocinadores e vitrine comercial
- tenant isolation e permissoes
- operacao com crescimento de usuarios e eventos
- mobile, web e API mantendo o mesmo dominio de negocio
- monetizacao real sem depender de dados ficticios

**Meta:** transformar a boa base tecnica em produto esportivo comercialmente operacional.

### Varejao do Povo

**Posicionamento:** varejo/PDV/e-commerce reutilizavel.

Prioridades de validacao:

- catalogo → carrinho → checkout → pagamento → operacao
- estoque e consistencia de venda
- atualizacao em tempo real e fallback
- autenticacao e autorizacao administrativas
- seguranca de sessoes/tokens e segredos
- concorrencia em estoque e checkout
- logs, backup, monitoramento e recuperacao
- testes de carga para o volume comercial esperado

**Observacao:** a origem em um negocio real continua sendo uma vantagem de produto, mas o portfolio nao deve sugerir validacao operacional atual que nao tenha sido realizada.

### Salão da Lu

**Posicionamento:** plataforma vertical para saloes/beleza.

Prioridades de validacao:

- agenda sem conflito de horarios
- clientes e historico
- servicos, profissionais e disponibilidade
- financeiro e fechamento
- notificacoes quando aplicaveis
- web + mobile com regras de negocio consistentes
- isolamento por cliente para futura venda como SaaS
- testes de concorrencia na agenda
- LGPD, permissoes e auditoria

**Meta:** virar produto-base reutilizavel para outros saloes, nao apenas sistema de um cliente.

### Barbearia do Arthur

**Posicionamento:** vertical para barbearias.

Prioridades de validacao:

- agenda e disponibilidade
- clientes e historico
- servicos e profissionais
- fluxo de atendimento e fechamento
- financeiro quando aplicavel
- notificacoes e confirmacoes
- seguranca e permissao por papel
- testes de conflitos de agenda
- preparo para reutilizacao em outras barbearias

**Nota:** confirmar o repositorio correto antes de declarar este produto como auditado no GitHub; nao associar um repositorio de terceiro apenas pelo nome.

### Estancia Renascer Belvedere

**Posicionamento:** site institucional/comercial para espaco de eventos.

Prioridades de validacao:

- apresentacao do espaco → interesse → contato/reserva
- calendario e disponibilidade quando houver agenda online
- formularios e notificacoes
- SEO tecnico e compartilhamento social
- performance, acessibilidade e responsividade
- tratamento de erros e disponibilidade
- conteudo comercial coerente com a oferta real

**Meta:** produto simples, rapido e confiavel, com foco em conversao, sem simular um sistema de reservas que nao esteja efetivamente implementado.

### LeitorCodigo Mobile

**Posicionamento:** modulo mobile para leitura/codigo de barras, caixa e atendimento.

Prioridades de validacao:

- leitura real de codigo
- integracao com o produto consumidor
- tratamento offline/instabilidade quando necessario
- sincronizacao e duplicidade
- autenticacao do dispositivo/usuario
- logs e diagnostico de erros
- testes em dispositivos reais

## Ordem recomendada de endurecimento

1. Hamburgueria — maior potencial de SaaS operacional e necessidade de confiabilidade.
2. Perifa Pro — consolidar o ecossistema e monetizacao.
3. Varejao — transformar a experiencia existente em produto reutilizavel.
4. Salão da Lu — fechar o vertical de agenda/financeiro e preparar productizacao.
5. Barbearia do Arthur — completar e validar o vertical.
6. LeitorCodigo — estabilizar como modulo complementar.
7. Estancia — finalizar conversao, SEO, acessibilidade e confiabilidade.

## Tecnologias

- HTML
- CSS
- JavaScript
- PHP/Laravel/Node.js conforme o produto
- MySQL
- React
- Flutter
- Docker/CI quando aplicavel

## Principio de trabalho

> Se eu nao teria coragem de colocar o sistema na operacao de um cliente, ele ainda nao esta pronto para ser vendido como pronto.

O uso de IA/Codex deve acelerar implementacao, testes, refatoracao, auditoria e documentacao. A decisao de produto, arquitetura, validacao e aceite continua sendo responsabilidade do desenvolvedor.

## Publicacao

- GitHub Pages: https://japaprp.github.io/portifolio/

## Como executar localmente

1. Abra o arquivo `index.html` no navegador.
2. Opcional: use uma extensao de Live Server no VS Code.

## Contato

- WhatsApp: +55 16 99114-5034
