# Politica de Implantacao por Etapas

Use este documento para alinhar expectativa e reduzir desgaste antes do go-live.

## Etapa 1. Diagnostico

- entender nicho, problema principal e urgencia
- definir o pacote certo
- confirmar se entra web proprio, app ou ambos

## Etapa 2. Enquadramento tecnico

- definir modulos
- definir perfis
- definir se existe integracao externa
- definir se usa `contrato` ou `adapter`

## Etapa 3. Configuracao

- tenant, licenca e usuarios
- identidade basica
- modulos liberados
- parametros operacionais

## Etapa 4. Integracao

- ligar web proprio ou adapter
- validar credenciais
- validar health, login, busca e operacao principal

## Etapa 5. Homologacao

- rodar o fluxo real do nicho
- registrar falhas criticas
- corrigir o necessario para liberacao

## Etapa 6. Go-live

- liberar ambiente
- acompanhar operacao inicial
- validar o fluxo principal em uso real

## Etapa 7. Estabilizacao

- tratar ajuste fino
- separar o que e incidente do que e melhoria
- registrar backlog futuro

## Regras da politica

- nao pular homologacao
- nao prometer integracao direta fora do contrato
- nao misturar novo escopo com suporte inicial
- nao publicar como pronto sem fluxo principal validado
