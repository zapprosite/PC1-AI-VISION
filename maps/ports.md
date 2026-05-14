# Ports

## Canonicas

- `8001/tcp` -> `llama-qwen36.service` -> `127.0.0.1`
- `4018/tcp` -> `litellm-local.service` -> `127.0.0.1`
- `22/tcp` -> `ssh` -> `0.0.0.0` e `[::]`

## Observadas

- `53/tcp` -> `127.0.0.54` -> observada
- `53/tcp` -> `127.0.0.53%lo` -> observada
- `37577/tcp` -> `127.0.0.1` -> observada por processo `code-8b640eef5a`

## Politica

- portas de IA permanecem `localhost-only`
- qualquer exposicao em LAN ou internet exige policy e aprovacao
