# Storage

## Volumes observados

- raiz `/` -> `/dev/nvme0n1p2` -> `btrfs`
- `/mnt/backup-fast` -> `/dev/nvme1n1p1` -> `btrfs`
- `Wilprodutor` -> `sda1` -> `exfat` -> UUID `FC85-3236`

## Regras

- modelos canonicos ficam referenciados em `/srv/models/gguf`
- cache Hugging Face nao e producao
- SSD antigo e arqueologia; nao e fonte de runtime

## Notas

- o ponto `/mnt/old-hd-wilprodutor` existe, mas nao foi observado montado no precheck
