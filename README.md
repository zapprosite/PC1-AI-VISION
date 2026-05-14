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

## O que este repo nao e

- backup do PC
- copia bruta de `/srv`
- fonte de runtime real
- armazenamento de secrets, modelos, caches ou logs brutos

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

## Fluxo esperado

1. revisar este repo
2. rodar `scripts/check-no-secrets.sh`
3. manter somente docs sanitizados
4. criar repositorio privado remoto depois, fora deste passo
5. conectar o repo ao ChatGPT GitHub Connector
6. planejar `hermes-brain` e um state repo equivalente para PC2
