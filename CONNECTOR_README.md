# Connector Readme

Este repo foi estruturado para leitura por ChatGPT GitHub Connector quando existir um remoto privado.

## Como consumir

- comece por `README.md`
- use `maps/` para orientacao rapida
- use `registries/` para referencias estruturadas
- use `policies/` para decidir o que nao fazer
- use `audits/` para snapshots e historico leve

## Leitura recomendada para ChatGPT

1. `gpt-web/CONTEXT_BRIEF.md`
2. `gpt-web/NEXT_ACTIONS.md`
3. `gpt-web/DECISIONS.md`
4. `README.md`
5. `AGENTS.md`
6. `SECURITY.md`
7. `policies/github-ops.md`
8. `policies/snapshots-backups.md`
9. `policies/mcp-aider-like.md`
10. `registries/services.yaml`
11. `registries/models.yaml`
12. `registries/risks.yaml`
13. `ROADMAP.md`

## Limites do conector

- este repo nao contem runtime, secrets ou modelos
- caminhos em `/srv` sao referencias; nao sao espelhos completos
- qualquer acao em producao deve ser validada contra o host real

## Objetivo futuro

- servir como camada segura de contexto para agentes
- reduzir leitura direta em areas sensiveis
- apoiar planejamento de `hermes-brain` e do state repo do PC2
