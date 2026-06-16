#!/usr/bin/env bash
set -euo pipefail

do_sync=0
if [[ "${1:-}" == "--sync" ]]; then
  do_sync=1
fi

section() {
  printf '\n## %s\n' "$1"
}

section "git-state"
git status --short --branch 2>/dev/null || {
  echo "not a git repository"
  exit 0
}
git remote -v 2>/dev/null || true
git branch -vv 2>/dev/null || true

if [[ "$do_sync" == "1" ]]; then
  section "git-fetch"
  git fetch --all --prune --tags 2>&1 || true
  git status --short --branch 2>/dev/null || true
fi

section "recent-commits"
git log --oneline --decorate -n 12 2>/dev/null || true

section "github"
if command -v gh >/dev/null 2>&1; then
  gh repo view --json nameWithOwner,description,defaultBranchRef,url,isPrivate 2>/dev/null || echo "gh repo view unavailable"
  gh pr list --state open --limit 20 --json number,title,headRefName,baseRefName,isDraft,mergeable,reviewDecision,updatedAt,url 2>/dev/null || echo "gh pr list unavailable"
  gh issue list --state open --limit 20 --json number,title,labels,updatedAt,url 2>/dev/null || echo "gh issue list unavailable"
  gh run list --limit 10 --json databaseId,displayTitle,status,conclusion,headBranch,createdAt,url 2>/dev/null || echo "gh run list unavailable"
else
  echo "gh unavailable"
fi

section "high-signal-files"
if command -v rg >/dev/null 2>&1; then
  rg --files | rg '(^|/)(AGENTS\.md|CLAUDE\.md|README\.md|package\.json|pyproject\.toml|requirements.*\.txt|go\.mod|Cargo\.toml|pom\.xml|build\.gradle|pnpm-workspace\.yaml|turbo\.json|docker-compose.*\.ya?ml|Dockerfile|Procfile|doc-map\.ya?ml|DOC_MAP\.md)$|^\.github/workflows/|^docs/(adr|runbooks|architecture|development)' | head -200
else
  find . -maxdepth 4 -type f | sed 's#^\./##' | head -200
fi

section "top-level"
find . -maxdepth 2 -type d \
  -not -path './.git*' \
  -not -path './node_modules*' \
  -not -path './dist*' \
  -not -path './build*' \
  -not -path './.next*' \
  | sort | head -120
