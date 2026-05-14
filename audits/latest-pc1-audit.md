# Latest PC1 Audit

## Resumo

- host observado: `will`
- usuario observado: `will-zappro`
- cwd do precheck: `/srv`
- `/srv` existe
- `llama-qwen36.service`: active
- `litellm-local.service`: active
- `qwen36-llama-server.service`: inactive
- binds canonicos observados:
  - `127.0.0.1:8001`
  - `127.0.0.1:4018`
- `master.env` existe, mas nao foi lido

## Comandos readonly executados

- `hostnamectl`
- `whoami`
- `pwd`
- `test -d /srv`
- `systemctl is-active llama-qwen36.service`
- `systemctl is-active litellm-local.service`
- `ss -ltnp | grep -E ':8001|:4018'`
- `ls -lah /srv`
- `test -f /srv/infra/env/master.env && echo "master.env exists but will not be read"`
- `find /srv -maxdepth 2 -mindepth 1 \\( -type d -o -type l \\) | sort`
- `ss -ltn`
- `findmnt -no TARGET,SOURCE,FSTYPE /`
- `findmnt -no TARGET,SOURCE,FSTYPE /mnt/backup-fast`
- `findmnt -no TARGET,SOURCE,FSTYPE /mnt/old-hd-wilprodutor || true`
- `lsblk -o NAME,FSTYPE,LABEL,UUID,RO,MOUNTPOINTS`
- `ls -1 /srv/apps`
- `ls -1 /srv/ops/audits`
- `systemctl is-active qwen36-llama-server.service || true`
- `free -h`
- `ss -ltnp | grep 37577`

## Resultados importantes

- OS observado: Ubuntu 26.04 LTS
- root em `btrfs`
- `/mnt/backup-fast` em `btrfs`
- SSD `Wilprodutor` detectado como `exFAT`, UUID `FC85-3236`
- `/mnt/old-hd-wilprodutor` nao foi observado montado no precheck
- portas adicionais observadas: `53/tcp` local e `37577/tcp` local

## Escopo e limites

- sem leitura de secrets
- sem copia de logs brutos grandes
- sem copia de runtime, modelos ou imports completos
