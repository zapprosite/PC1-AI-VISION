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
2. `gpt-web/CANONICAL_SOURCES.md`
3. `gpt-web/NEXT_ACTIONS.md`
4. `gpt-web/DECISIONS.md`
5. `README.md`
6. `AGENTS.md`
7. `SECURITY.md`
8. `policies/github-ops.md`
9. `policies/snapshots-backups.md`
10. `policies/mcp-aider-like.md`
11. `registries/services.yaml`
12. `registries/models.yaml`
13. `registries/risks.yaml`
14. `ROADMAP.md`

## Limites do conector

- este repo nao contem runtime, secrets ou modelos
- caminhos em `/srv` sao referencias; nao sao espelhos completos
- qualquer acao em producao deve ser validada contra o host real
- o plano canonico de MCP/Aider-like vive em `/srv/apps/homelab-context`, nao neste repo

## Objetivo futuro

- servir como camada segura de contexto para agentes
- reduzir leitura direta em areas sensiveis
- apoiar `hermes-brain` como camada de consolidacao a partir do `homelab-context`
