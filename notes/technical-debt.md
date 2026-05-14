# Technical Debt

- `qwen36-llama-server.service` esta `inactive/dead` e deve permanecer documentado por enquanto
- `/srv/ai/src` e `/srv/ai/build` sao grandes e pedem governanca clara fora do state repo
- imports antigos ainda estao presentes em `/srv/imports/old-hd`
- `/srv/core` ja existe e precisa ser preservado sem copia bruta
- `homelab-context` parece conter `context-template` util
- `nexus` possui varios diretorios de agentes e caches que nao devem ser copiados bruto
- `master.env.example` pode estar desatualizado em relacao ao bind localhost atual; validar antes de usar
- SSD antigo apareceu como `sda1`, mas a regra continua sendo UUID `FC85-3236`, nunca `/dev/sdX`
