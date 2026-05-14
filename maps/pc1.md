# PC1

- hostname: `will`
- user observado: `will-zappro`
- OS: Ubuntu 26.04 LTS
- CPU: Ryzen 9 7900X
- GPU: RTX 4090 24 GB
- RAM observada: 29 GiB
- papel: servidor IA e homelab operacional

## Binds locais observados

- `llama-qwen36.service` -> `127.0.0.1:8001`
- `litellm-local.service` -> `127.0.0.1:4018`
- `ssh` -> `0.0.0.0:22` e `[::]:22`

## Notas

- `llama-server` e LiteLLM estao ativos e `localhost-only`
- ha uma porta local observada em `127.0.0.1:37577` associada a `code-8b640eef5a`
