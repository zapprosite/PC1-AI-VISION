# GitHub Ops Policy

- GitHub neste repo e GitOps-lite e documentacao
- este repo nao e deploy
- este repo nao controla servicos do PC1
- nao deve existir self-hosted runner agora
- nao deve existir secrets neste repo
- GitHub Actions validam apenas docs, paths, YAML e ausencia de secrets
- a branch `main` recebe apenas conteudo sanitizado
- repo publico e provisorio; pode voltar para privado apos estabilizacao
- nunca usar workflow para SSH no PC1
- nunca usar workflow para restart de `llama-qwen36.service` ou `litellm-local.service`
- nunca usar workflow para tocar `/srv/infra/env/master.env`
