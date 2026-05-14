# AGENTS.md

Leia `README.md` antes de qualquer outra acao.

## Regras para agentes

- nao pedir, nao tentar ler e nao copiar secrets reais
- nao ler `/srv/infra/env/master.env`
- nao ler `/srv/imports/old-hd/secret-quarantine`
- nao tratar o SSD antigo como producao
- nao sugerir expor LiteLLM em `0.0.0.0`
- nao alterar o alias `hermes-code`
- nao mover o GGUF canonico
- nao tratar este repo como fonte de verdade operacional
- usar `/srv` apenas como referencia operacional
- antes de qualquer mudanca real, usar auditoria ou snapshot readonly
- SSD antigo e fonte arqueologica; nunca promocao direta

## Leitura sugerida

1. `README.md`
2. `SECURITY.md`
3. `maps/`
4. `registries/`
5. `policies/`
6. `audits/latest-pc1-audit.md`
