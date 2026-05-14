# MCP Aider Like Policy

## Fonte canonica

A fonte canonica do plano MCP/Aider-like e:
`/srv/apps/homelab-context`

Arquivos principais:

- `/srv/apps/homelab-context/README.md`
- `/srv/apps/homelab-context/docs/ARCHITECTURE.md`
- `/srv/apps/homelab-context/docs/SECURITY-POLICY.md`
- `/srv/apps/homelab-context/prd/PRD-v1.md`
- `/srv/apps/homelab-context/prd/PRD-v2.md`
- `/srv/apps/homelab-context/context-template/phase1/AGENTS.md`

Este arquivo no state repo e apenas indice e resumo sanitizado.
Nao e fonte canonica.
Nao deve divergir do `homelab-context`.

## Escopo deste arquivo

Esta policy registra apenas um resumo documental no state repo.
Nao e implementacao.
Nao e PRD.
Nao e arquitetura oficial.
Nao deve duplicar PRD, arquitetura ou decisoes detalhadas.
Alteracoes de arquitetura MCP/Aider-like devem ocorrer em `/srv/apps/homelab-context`, nao aqui.

## Objetivo

- registrar que existe um plano MCP/Aider-like local para o PC1
- apontar o leitor para a fonte canonica em `/srv/apps/homelab-context`
- manter apenas um resumo sanitizado e curto neste state repo
- evitar que `PC1-AI-VISION` pareca um plano paralelo ou concorrente

## Resumo de referencia

- o plano parte de um contexto em duas fases
- MCP comeca em modo read-only
- o primeiro MCP permitido e context MCP read-only
- Nexus aparece como candidato de runner e orchestration local
- Codex, OpenCode e Claude aparecem como executores consumidores
- `hermes-brain` deve consolidar a partir do `homelab-context`, nao inventar outro plano paralelo

## Onde procurar o plano real no PC1

- `/srv/apps/homelab-context`
- `/srv/apps/homelab-context/mcp`
- `/srv/apps/homelab-context/docs`
- `/srv/apps/homelab-context/context-template`
- `/srv/apps/homelab-context/prd`
