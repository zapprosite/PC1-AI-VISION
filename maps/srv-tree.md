# /srv Tree

## Top-level observado

- `/srv/ai`: binarios, perfis, templates, build e codigo-fonte local de IA
- `/srv/apps`: apps locais reutilizaveis
- `/srv/backups`: area de backups
- `/srv/cache`: caches e artefatos nao canonicos
- `/srv/core`: contratos, mapas, templates, policies e registries centrais
- `/srv/data`: dados stateful de servicos
- `/srv/imports`: imports e arqueologia controlada
- `/srv/infra`: systemd, env, Terraform, tuneis e LiteLLM
- `/srv/instances`: instancias de produto
- `/srv/logs`: logs locais
- `/srv/models`: modelos locais
- `/srv/ops`: auditorias e operacoes
- `/srv/staging`: area de promocao controlada
- `/srv/vaults`: documentos e material RAG

## Maxdepth 2 observado

- `/srv/ai/bin`
- `/srv/ai/build`
- `/srv/ai/include`
- `/srv/ai/profiles`
- `/srv/ai/src`
- `/srv/ai/templates`
- `/srv/apps/homelab-context`
- `/srv/apps/nexus`
- `/srv/cache/builds`
- `/srv/cache/docker`
- `/srv/cache/huggingface`
- `/srv/core/ai`
- `/srv/core/context`
- `/srv/core/docs`
- `/srv/core/maps`
- `/srv/core/policies`
- `/srv/core/registries`
- `/srv/core/skills`
- `/srv/core/templates`
- `/srv/core/versions`
- `/srv/data/minio`
- `/srv/data/postgres17`
- `/srv/data/qdrant`
- `/srv/data/redis`
- `/srv/imports/old-hd`
- `/srv/infra/cloudflare`
- `/srv/infra/docker`
- `/srv/infra/env`
- `/srv/infra/litellm`
- `/srv/infra/systemd`
- `/srv/infra/terraform`
- `/srv/infra/tunnels`
- `/srv/instances/zappro`
- `/srv/logs/agents`
- `/srv/logs/apps`
- `/srv/logs/infra`
- `/srv/models/embeddings`
- `/srv/models/gguf`
- `/srv/models/llm`
- `/srv/ops/audits`
- `/srv/vaults/processed`
- `/srv/vaults/rag`
- `/srv/vaults/raw`

## Regra

Este mapa nao copia conteudo profundo. Ele apenas referencia a estrutura rasa para orientacao operacional.
