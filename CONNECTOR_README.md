# Connector Readme

Este repo foi estruturado para leitura por ChatGPT GitHub Connector quando existir um remoto privado.

## Como consumir

- comece por `README.md`
- use `maps/` para orientacao rapida
- use `registries/` para referencias estruturadas
- use `policies/` para decidir o que nao fazer
- use `audits/` para snapshots e historico leve

## Leitura recomendada para ChatGPT

1. `README.md`
2. `STATUS.md`
3. `AGENTS.md`
4. `SECURITY.md`
5. `registries/services.yaml`
6. `registries/models.yaml`
7. `registries/risks.yaml`
8. `notes/technical-debt.md`
9. `ROADMAP.md`

## Limites do conector

- este repo nao contem runtime, secrets ou modelos
- caminhos em `/srv` sao referencias; nao sao espelhos completos
- qualquer acao em producao deve ser validada contra o host real

## Objetivo futuro

- servir como camada segura de contexto para agentes
- reduzir leitura direta em areas sensiveis
- apoiar planejamento de `hermes-brain` e do state repo do PC2
