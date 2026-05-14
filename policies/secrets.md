# Secrets Policy

- proibido ler `/srv/infra/env/master.env`
- proibido ler `/srv/imports/old-hd/secret-quarantine`
- permitido consultar apenas `master.env.example`, `master.env.schema.md` e `README.md`
- tokens nunca entram no Git
- `GHP` e `GITHUB_TOKEN` so em env temporaria quando necessario
