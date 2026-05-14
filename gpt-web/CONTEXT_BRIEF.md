# Context Brief

- PC1 e servidor e homelab
- `/srv` e runtime real
- Qwen responde em `127.0.0.1:8001`
- LiteLLM responde em `127.0.0.1:4018`
- alias oficial: `hermes-code`
- PC2 consome PC1 por tunel SSH
- SSD antigo e arqueologia, nao producao
- PC1 tem Btrfs e Snapper, mas cobertura de `/srv` precisa ser auditada
- GitHub Ops-lite aplicado
- `/srv/apps/homelab-context` e a fonte canonica do plano MCP/Aider-like
- `PC1-AI-VISION` e apenas state repo, inventario sanitizado e ponte de leitura
- este repo nao deve duplicar PRD, arquitetura ou decisoes detalhadas do MCP/Aider-like
- proximo: revisar PC1 e PC2, criar `hermes-brain`, depois consolidar a partir de `/srv/apps/homelab-context`
