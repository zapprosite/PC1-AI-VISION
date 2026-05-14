# PC1 Homelab State Repo

Este diretório e um inventario sanitizado do PC1. Ele documenta o estado operacional observado do host `will`, mas nao substitui a raiz real `/srv` e nao deve ser tratado como backup do servidor.

## Objetivo

- registrar mapas, registries, policies e indices de auditoria pequenos e legiveis
- manter referencias operacionais para futuras sessoes de agente
- preparar um futuro repositorio Git privado para uso com ChatGPT GitHub Connector

## O que este repo e

- state repo local do PC1
- inventario sanitizado e revisavel
- ponto de leitura para agentes antes de tocar em producao
- ponte de leitura para fontes canonicas fora deste repo

## O que este repo nao e

- backup do PC
- copia bruta de `/srv`
- fonte de runtime real
- armazenamento de secrets, modelos, caches ou logs brutos
- fonte canonica do plano MCP/Aider-like

## Regras centrais

- `/srv` continua sendo a fonte operacional real
- se houver duvida sobre sensibilidade, nao copiar; apenas referenciar o path
- se houver duvida sobre producao, nao promover nada daqui para runtime sem auditoria
- este repo nao contem `master.env`, GGUFs, bancos, backups, tokens, chaves ou imports completos

## Topologia resumida

- PC1 hospeda Qwen 3.6 local e LiteLLM local
- `llama-qwen36.service` atende em `127.0.0.1:8001`
- `litellm-local.service` atende em `127.0.0.1:4018`
- PC2 deve consumir por SSH tunnel; nao por bind publico

## Estrutura

- `maps/`: mapas sanitizados do host, portas, storage e `/srv`
- `registries/`: visao estruturada de servicos, modelos, apps, caminhos, riscos e tuneis
- `policies/`: regras de exposicao, secrets, imports e seguranca Git
- `audits/`: snapshots textuais pequenos e indices de auditoria
- `scripts/`: rotinas readonly para regenerar snapshots e checagem de secrets
- `notes/`: divida tecnica e proximos passos
- `gpt-web/`: memoria operacional curta para sessoes web e conector

## GitHub Ops-lite

- GitHub neste repo e GitOps-lite documental
- nao existe deploy, runner self-hosted ou acao em `/srv`
- Actions validam apenas docs sanitizados, YAML, paths proibidos e ausencia de secrets

## GPT Web memory

- `gpt-web/` concentra contexto curto, decisoes e proximos passos
- a ordem de leitura fica em `CONNECTOR_README.md`
- o objetivo e reduzir re-descoberta entre sessoes sem copiar runtime real
- `gpt-web/CANONICAL_SOURCES.md` registra onde ficam as fontes canonicas

## Snapshots/backups

- snapshot local nao e backup
- Git nao e backup de disco
- audit markdown nao e rollback
- cobertura de `/srv` e `/home` por Btrfs/Snapper precisa de auditoria explicita

## MCP/Aider-like plan

- a fonte canonica do plano MCP/Aider-like e `/srv/apps/homelab-context`
- este repo registra apenas um resumo sanitizado e nao deve duplicar PRD, arquitetura ou decisoes detalhadas
- alteracoes de arquitetura do MCP/Aider-like devem ocorrer em `homelab-context`, nao aqui
- futuro `hermes-brain` deve consolidar a partir de `homelab-context`, nao inventar plano paralelo

## Fluxo esperado

1. revisar este repo
2. rodar `scripts/check-no-secrets.sh`
3. manter somente docs sanitizados
4. criar repositorio privado remoto depois, fora deste passo
5. conectar o repo ao ChatGPT GitHub Connector
6. planejar `hermes-brain` e um state repo equivalente para PC2
