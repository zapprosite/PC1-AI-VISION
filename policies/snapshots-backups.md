# Snapshots And Backups Policy

- snapshot local nao e backup
- Git nao e backup de disco
- audit markdown nao e rollback
- smoke test e prova funcional
- PC1 tem Btrfs/Snapper, mas nao presumir que snapshot de root cobre `/srv`
- PC2 tambem tem Btrfs/Snapper, mas nao presumir que cobre `/home` ou configs sem auditoria

## Antes de mudanca relevante

1. PRE snapshot quando houver cobertura confirmada
2. backup ou commit quando aplicavel
3. mudanca minima
4. smoke
5. audit markdown
6. POST snapshot se tudo passou

## Diferencas

- snapshot local: reversao local quando o subvolume estiver coberto
- git/versionamento: historico de docs, manifests e configuracoes sanitizadas
- backup externo: copia independente de disco para recuperacao real
- audit markdown: evidencia humana e trilha de revisao
- smoke test: prova funcional do comportamento esperado

## Auditoria minima para `/srv`

- `findmnt /`
- `findmnt /srv`
- `btrfs subvolume list /`
- `snapper list-configs`

## Regras adicionais

- se `/srv` nao estiver coberto, usar backup explicito, `restic`, `borg`, `rsync` ou Git conforme o caso
- nao confiar em rollback para desfazer segredo vazado
- modelos GGUF exigem checksum e estrategia de backup separada
