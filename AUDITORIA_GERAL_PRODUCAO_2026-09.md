# Auditoria Geral de Producao — Setembro/2026

Auditoria por codigo dos projetos com maior relevancia comercial, procurando falhas reais de seguranca, autorizacao, concorrencia, integridade de dados, autenticacao e operacao.

## Resultado executivo

Nenhum dos produtos auditados deve ser rotulado como "pronto para producao" apenas com base na existencia das telas. Foram encontrados bloqueadores concretos em varios repositorios.

## Findings criticos

### Hamburgueria
- Autorizacao insuficiente em catalogo: rotas de produtos/categorias nao aplicam role/permission especifica e o controller de produto nao autoriza mutacoes.
- Taxa de operadora pode entrar pelo payload e contaminar dados financeiros se nao for substituida por fonte confiavel.
- Pagamento precisa validar explicitamente a relacao entre caixa, PDV/sessao e pedido.

### Portal RH
- `rh_documentos.php` lista funcionarios e documentos sem filtro por `empresa_id`.
- Atualizacao/exclusao de documentos nao restringe empresa na clausula SQL.
- Upload aceita `funcionario_id` enviado pelo cliente e precisa validar pertencimento antes da operacao.
- Fingerprint baseado em IP pode invalidar sessoes legitimas.

### Perifa Pro
- Reset de senha nao bloqueia a linha do token antes de usa-la; existe janela para dois resets concorrentes.
- Recuperacao/confirmacao de codigos precisa de rate limit especifico.
- CORS usa `*` como default.
- JWT verifica assinatura/expiracao, mas nao valida claims de emissao/contexto de sessao.

### Varejao
- Persistencia principal em `database.json` com leitura/escrita integral e sem transacao: risco de lost update/corrupcao sob concorrencia.
- Confirmacao de maquininha nao exige autenticacao/role na rota.
- Recuperacao de senha permite definir nova senha apenas com o email.
- CORS aceita familias amplas de origens.
- `express.json()` nao possui limite explicito.
- Rate limit e estado local nao escalam entre instancias.

### Salao da Lu
- Corrida na verificacao de disponibilidade permite dois agendamentos simultaneos para o mesmo profissional/horario.
- Update precisa revalidar todas as entidades relacionadas contra o tenant.
- Existe drift documentado entre SQL e Prisma em `appointment_services`.
- Preco administrativo e aceito pelo payload; deve haver regra explicita.

### Barbearia do Artur
- Mesma classe de corrida na agenda.
- Mesma necessidade de integridade tenant nas FKs do update.
- Notificacoes/lembretes devem ser desacoplados da transacao principal por outbox/queue.
- Repositorio esta arquivado e nao aceita novas correcoes via GitHub.

### LeitorCodigo
- Autenticacao atual do adapter e de demonstracao: username/password e role sao recebidos do cliente sem validacao real para tenants comuns.
- Tokens sao mock/previsiveis.
- Total/preco no cliente nao pode ser autoridade financeira.
- Idempotencia depende de garantia atomicamente feita pelo backend.

### Estancia Renascer
- `availability.js` publico contem configuracao de Google Calendar incluindo chave de API.
- O script publica `event.summary`, podendo expor nomes, horarios e outros dados de calendario.
- Snapshot pode ficar desatualizado e nao deve afirmar disponibilidade confirmada sem fonte confiavel.

### Infinit War
- `/player/sync` permite sobrescrever recursos do servidor pelo snapshot enviado pelo cliente.
- `targetLevel` pode permitir salto de nivel por custo de uma unica etapa.
- Login V1 trata identificador recebido como identidade de stub sem validar provedor.
- `refreshToken` e igual ao access token.
- Idempotencia nao e adquirida atomicamente.
- Compra usa idempotency key no body enquanto o middleware espera header.

## Projetos sem auditoria de produto

- `memorias-amigos`: site pessoal/galeria simples; nao e produto SaaS.
- Repositorios vazios encontrados: sem codigo para auditar.
- `salao-do-artur`: tratado como o mesmo produto da Barbearia do Artur, nao como produto separado.

## Ordem de correcao

1. Estancia — rotacionar/restringir chave e remover PII do snapshot publico
2. Varejao — retirar confirmacao de maquininha da superficie sem auth e corrigir reset de senha
3. Portal RH — fechar isolamento entre empresas
4. Hamburgueria — fechar RBAC do catalogo e integridade financeira
5. Salao/Barbearia — corrigir corrida de agenda
6. LeitorCodigo — retirar autenticacao mock
7. Perifa — reset atomicamente single-use + rate limits
8. Infinit War — servidor autoritativo para economia/progressao

## Regra de aceite

Um produto so muda para verde depois de: corrigir os findings criticos, criar testes de regressao, executar testes de concorrencia, validar deploy, backup/restore e realizar smoke/E2E dos fluxos de negocio.
