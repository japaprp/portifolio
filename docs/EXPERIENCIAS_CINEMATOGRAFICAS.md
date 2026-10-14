# Experiências cinematográficas por projeto

## Direção criativa aprovada

- Identidade principal: **Yago Dev.**
- Assinatura: **“Ideias que ganham forma.”**
- Página principal branca, editorial, minimalista e masculina; acabamento premium sem excesso de efeitos futuristas.
- Projetos apresentados com capturas reais. Não usar mockups gerados ou imagens genéricas como se fossem telas do produto.
- A experiência especial só começa quando a pessoa escolhe um projeto; vídeos não tocam automaticamente na página inicial.
- A apresentação do Perifa Pro começa pelo vídeo vertical de futebol, então faz uma transição suave para um notebook prateado e permite explorar as capturas reais da interface.
- O usuário mantém o controle da experiência: fechar, navegar pelas telas e voltar à galeria.

## Organização dos arquivos

```text
assets/
  projetos/
    perifa-pro/
      perifa-pro-intro.mp4
      perifa-pro-home.jpg
      perifa-pro-agenda.jpg
      perifa-pro-proximos-jogos.jpg
      perifa-pro-classificacao.jpg
      perifa-pro-escalacao.jpg
      perifa-pro-estatisticas.jpg
      perifa-pro-chat.jpg
      perifa-pro-loja.jpg
      ...
```

O vídeo de abertura está dentro da pasta do projeto ao qual pertence. O HTML usa caminhos relativos para continuar funcionando no GitHub Pages em `/portifolio/`.

## Padrão reutilizável para futuros nichos

Para adicionar uma experiência cinematográfica a outro projeto:

1. **Definir a história visual do nicho.** O movimento, cenário, iluminação e objeto principal devem combinar com o negócio — sem reutilizar futebol para todos os produtos.
2. **Produzir um vídeo curto e original.** Preferir 9:16 quando a composição exigir; manter o assunto dentro do enquadramento e encerrar com espaço para a transição visual.
3. **Guardar mídia em `assets/projetos/<slug-do-projeto>/`.** Usar nomes descritivos e manter o vídeo separado das capturas da interface.
4. **Reunir capturas reais e atuais.** Selecionar as telas que mostram o fluxo principal; nunca substituir a interface real por uma tela conceitual sem identificá-la claramente como conceito.
5. **Ligar a experiência ao clique do card.** A página inicial não carrega nem toca todos os vídeos de uma vez.
6. **Fazer a transição para o notebook.** Revelar o produto real dentro da tela e disponibilizar navegação entre capturas.
7. **Testar no celular e desktop.** Verificar proporção do vídeo, controles, carregamento, fechamento, navegação por teclado, caminhos dos assets e comportamento quando o vídeo falhar.
8. **Representar o estado real do produto.** Não anunciar funções como prontas sem validação correspondente.

## Projetos principais nesta fase

1. Perifa Pro — experiência cinematográfica com vídeo original e telas reais.
2. Estância Renascer Belvedere — site comercial para um espaço específico de eventos.
3. Horti Fruit / Varejão do Povo — experiência de varejo, mantendo o nome final do produto sujeito à confirmação.
4. Portal RH — sistema corporativo de RH.

EventsRP permanece fora da seleção principal por enquanto, até a finalização e validação. Outros projetos podem receber experiências por nicho depois, usando o mesmo padrão sem forçar a mesma estética para todos.
