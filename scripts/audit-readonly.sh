#!/usr/bin/env bash
set -euo pipefail

repo_root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
out_dir="$repo_root/audits"
ts="$(date -u +%Y%m%d-%H%M%S)"
out_file="$out_dir/generated-$ts.md"

mask() {
  sed -E \
    -e 's/(ghp_[A-Za-z0-9_]+)/[REDACTED_GITHUB_TOKEN]/g' \
    -e 's/(github_pat_[A-Za-z0-9_]+)/[REDACTED_GITHUB_PAT]/g' \
    -e 's/(sk-[A-Za-z0-9_-]+)/[REDACTED_API_KEY]/g' \
    -e 's/(Bearer )[A-Za-z0-9._-]+/\1[REDACTED]/g' \
    -e 's/((OPENAI_API_KEY|ANTHROPIC_API_KEY|LITELLM_MASTER_KEY|GITHUB_TOKEN|token|secret|password)[[:space:]]*=[[:space:]]*)[^[:space:]]+/\1[REDACTED]/gi'
}

run_block() {
  local title="$1"
  shift
  {
    printf '## %s\n\n' "$title"
    printf '```bash\n%s\n```\n\n' "$*"
    printf '```\n'
    "$@" 2>&1 | mask
    printf '```\n\n'
  } >>"$out_file"
}

{
  printf '# Generated Audit %s\n\n' "$ts"
  printf '- host snapshot: readonly\n'
  printf '- excludes: master.env, secret-quarantine, imports profundos, logs brutos\n\n'
} >"$out_file"

run_block "Host" hostnamectl
run_block "Identity" whoami
run_block "Pwd" pwd
run_block "Services" systemctl is-active llama-qwen36.service
run_block "LiteLLM" systemctl is-active litellm-local.service
run_block "Ports" ss -ltn
run_block "Srv Root" ls -lah /srv
run_block "Srv Tree Maxdepth2" find /srv -maxdepth 2 -mindepth 1 \( -type d -o -type l \) | sort
run_block "Storage" lsblk -o NAME,FSTYPE,LABEL,UUID,RO,MOUNTPOINTS
run_block "Audits Names" ls -1 /srv/ops/audits

printf '%s\n' "$out_file"
