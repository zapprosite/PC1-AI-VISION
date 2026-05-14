# MCP Aider Like Policy

Esta policy registra um plano documental no state repo. Nao e implementacao.

## Objetivo

- construir uma arquitetura agentic local Aider-like propria, sem copiar o Aider literalmente
- usar MCP como camada de ferramentas
- usar `pipeline.json` ou Taskmaster MCP como fonte efemera da execucao
- usar Qdrant, Mem0 ou `hermes-brain` como memoria semantica
- usar Hermes como cerebro tecnico e planner fora do monorepo
- usar Nexus como runner, CLI e orchestration local
- usar Codex CLI, OpenCode Desktop e Claude Code como executores
- usar LiteLLM como roteador
- usar Qwen 3.6 27B local via alias `hermes-code` como padrao
- exigir PREVC, smoke e judge
- manter o GitHub repo como memoria oficial versionada
- deixar Redis, Postgres e Windmill como opcionais futuros

## Regras de inicio

- P0 exige gate humano
- comecar em modo read-only
- primeiro MCP permitido: context MCP read-only
- proibido comecar com filesystem full access
- proibido comecar com shell livre
- proibido comecar com Git write
- proibido comecar com Cloudflare
- proibido tocar `master.env`
- proibido auto-deploy
- proibido `terraform apply`

## Onde procurar o plano real no PC1 futuramente

- `/srv/apps/homelab-context`
- `/srv/apps/homelab-context/mcp`
- `/srv/apps/homelab-context/docs`
- `/srv/core`
- `/srv/apps/nexus`
- `/srv/ops/audits`
- `/srv/imports/old-hd/rescue-ai-local`
