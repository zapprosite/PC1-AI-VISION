# Security

Este repo foi desenhado para permanecer sanitizado.

## Nao incluir

- secrets, tokens, cookies, chaves privadas ou credenciais
- runtime real, bancos, dumps, backups e binarios grandes
- modelos GGUF, cache Hugging Face, builds, `node_modules`, `.venv` ou logs brutos

## Regras operacionais

- nunca ler `master.env`; usar apenas `master.env.example`, `master.env.schema.md` e `README.md`
- nunca ler `secret-quarantine`
- nunca executar artefatos vindos do SSD antigo
- qualquer suspeita de secret exige parada antes de commit
- antes de commit local, rodar `scripts/check-no-secrets.sh`

## Exposicao

- `llama-server` e LiteLLM devem permanecer `localhost-only`
- qualquer tunel ou exposicao publica depende de policy explicita
