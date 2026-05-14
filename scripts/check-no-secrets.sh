#!/usr/bin/env bash
set -euo pipefail

repo_root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "$repo_root"

if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  file_cmd=(git ls-files --cached --others --exclude-standard)
else
  file_cmd=(find . -type f ! -path './.git/*' -print)
fi

is_placeholder() {
  [[ "$1" =~ \*\*\*REDACTED\*\*\*|placeholder|PLACEHOLDER|example|EXAMPLE|\[REDACTED\] ]]
}

should_skip_file() {
  local file="$1"
  [[ "$file" == "scripts/check-no-secrets.sh" ]]
}

has_forbidden_path() {
  local file="$1"
  case "$file" in
    */master.env|master.env|*/auth.json|auth.json|*/credentials.json|credentials.json|*/.credentials.json|.credentials.json|*/.env|.env|*/.env.*|.env.*|*.env|*.gguf|*secret-quarantine*|*secrets-config*)
      return 0
      ;;
  esac
  return 1
}

flagged=0
pattern='ghp_[A-Za-z0-9_]{10,}|github_pat_[A-Za-z0-9_]{20,}|sk-[A-Za-z0-9_-]{10,}|Bearer [A-Za-z0-9._-]{8,}|PRIVATE KEY|(LITELLM_MASTER_KEY|OPENAI_API_KEY|ANTHROPIC_API_KEY)[[:space:]]*=[[:space:]]*[^[:space:]#]+|(password|token|secret)[[:space:]]*=[[:space:]]*[^[:space:]#]+|(CLOUDFLARE|TAILSCALE)[[:space:]]*[:=][[:space:]]*[^[:space:]#]+'

while IFS= read -r file; do
  [[ -z "$file" ]] && continue
  [[ "${file#./}" != "$file" ]] && file="${file#./}"
  should_skip_file "$file" && continue

  if has_forbidden_path "$file"; then
    printf 'forbidden-path:%s\n' "$file"
    flagged=1
    continue
  fi

  while IFS= read -r match; do
    line_no="${match%%:*}"
    line="${match#*:}"

    if [[ "$file" == *.example ]] && is_placeholder "$line"; then
      continue
    fi

    if is_placeholder "$line"; then
      continue
    fi

    if [[ "$line" =~ [Tt][Oo][Kk][Ee][Nn][Ss]?|[Kk][Ee][Yy][Ss]? ]]; then
      printf '%s:%s:%s\n' "$file" "$line_no" "$line"
      flagged=1
      continue
    fi

    printf '%s:%s:%s\n' "$file" "$line_no" "$line"
    flagged=1
  done < <(grep -nEI "$pattern" "$file" || true)
done < <("${file_cmd[@]}")

if [[ "$flagged" -ne 0 ]]; then
  exit 1
fi

echo "OK: no obvious secrets found"
