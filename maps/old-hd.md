# Old HD

- identificacao: `Wilprodutor`
- UUID canonico: `FC85-3236`
- sistema de arquivos: `exFAT`
- modo esperado: read-only quando montado
- papel: fonte arqueologica

## Regras

- nunca executar scripts dali
- nunca promover direto para producao
- nunca confiar em `/dev/sdX` como identificador estavel

## Fluxo obrigatorio

`SSD antigo -> /srv/imports/old-hd -> /srv/staging -> audit -> promocao -> smoke`
