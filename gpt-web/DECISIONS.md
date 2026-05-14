# Decisions

- state repos sao inventario sanitizado, nao backup
- GitHub aqui e GitOps-lite documental, nao deploy
- sem self-hosted runner agora
- sem secrets no Git
- `/srv` continua sendo a fonte operacional real
- `hermes-code` e o alias oficial
- Snapper nao substitui backup
- nao presumir cobertura de `/srv` ou `/home` sem auditoria
- MCP/Aider-like comeca read-only
- `/srv/apps/homelab-context` e a fonte canonica do plano MCP/Aider-like
- este state repo e apenas inventario sanitizado e ponte de leitura
- `policies/mcp-aider-like.md` e apenas resumo de referencia, nao PRD ou arquitetura oficial
- mudancas de arquitetura do MCP/Aider-like devem ocorrer em `homelab-context`, nao aqui
- futuro `hermes-brain` deve consolidar a partir de `homelab-context`, nao criar plano paralelo
- P0 sempre exige gate humano
