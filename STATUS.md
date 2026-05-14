# Status

## Status atual do repo

- state repo sanitizado do PC1
- branch `main`
- remoto `origin`
- publico provisoriamente
- foco em contexto seguro para revisao por agentes
- sem funcao de backup ou runtime
- `check-no-secrets.sh` obrigatorio antes de commit
- GitHub Ops-lite aplicado
- `gpt-web/` aplicado
- policy de snapshots/backups aplicada
- MCP/Aider-like registrado como plano, nao implementacao

## Branch atual

- `main`

## Remoto

- `origin`: `https://github.com/zapprosite/PC1-AI-VISION.git`

## Visibilidade recomendada

- publico temporario, privado depois da indexacao

## Checklist de seguranca

- sem secrets reais versionados
- sem copia de producao
- sem `master.env`
- sem leitura de `secret-quarantine`
- sem GGUFs, dumps, tokens ou chaves
- revisar com `./scripts/check-no-secrets.sh` antes de commit

## Proximos passos

1. revisar pelo ChatGPT Connector
2. revisar PC2 pelo ChatGPT Connector
3. auditar snapshots e backups em PC1 e PC2
4. criar `hermes-brain`
5. consolidar memoria global no `hermes-brain`
