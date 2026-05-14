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

flagged=0
pattern='ghp_[A-Za-z0-9_]{10,}|github_pat_[A-Za-z0-9_]{20,}|sk-[A-Za-z0-9_-]{10,}|Bearer [A-Za-z0-9._-]{8,}|PRIVATE KEY|(LITELLM_MASTER_KEY|OPENAI_API_KEY|ANTHROPIC_API_KEY)[[:space:]]*=[[:space:]]*[^[:space:]#]+|(password|token|secret)[[:space:]]*=[[:space:]]*[^[:space:]#]+|(CLOUDFLARE|TAILSCALE)[[:space:]]*[:=][[:space:]]*[^[:space:]#]+'

while IFS= read -r file; do
  [[ -z "$file" ]] && continue
  [[ "${file#./}" != "$file" ]] && file="${file#./}"
  should_skip_file "$file" && continue
  while IFS= read -r match; do
    line_no="${match%%:*}"
    line="${match#*:}"

    if [[ "$file" == *.example ]] && is_placeholder "$line"; then
      continue
    fi

    if is_placeholder "$line"; then
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
