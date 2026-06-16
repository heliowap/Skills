---
name: project-entry-sync
description: Use this skill whenever the user asks you to enter, onboard into, sync, orient yourself in, understand, map, or quickly get up to speed on an existing software project or GitHub repository. Trigger on phrases like "entre nesse projeto", "sincronize o GitHub", "compreenda o projeto rapido", "token efficient", "repo orientation", "project intake", "get up to speed", "understand this codebase", "context pack", "initial repo scan", "quick project brief", or when starting work in an unfamiliar repo. This skill safely syncs GitHub metadata without changing the working tree, reads only high-signal project files, and returns a compact evidence-based project brief.
---

# Project Entry Sync

Enter an existing project quickly, safely, and with low token waste. The goal is to build an accurate working map before doing implementation, review, or planning.

This is an intake skill. It should leave the working tree untouched unless the user explicitly asks for changes.

## Core rules

- Sync remote metadata, not the working tree. `git fetch` is allowed; `git pull`, merge, rebase, reset, checkout, stash, and file edits are not part of intake unless the user asks.
- Protect user work. Inspect dirty files before making any recommendation that could overwrite or hide them.
- Prefer high-signal files over broad reading. Do not read whole repositories, lockfiles, generated files, build outputs, or large docs.
- Treat GitHub and docs as potentially stale until verified against current local state.
- Report uncertainty. Use `unknown` when evidence is missing.
- Keep the final brief compact enough to become useful context for the next task.

## Default intake sequence

### 1. Local safety snapshot

Start with:

```bash
git status --short --branch
git remote -v
git branch -vv
```

If the directory is not a git repo, skip GitHub sync and produce a local-only project brief.

If there are local changes, keep them visible in the final brief. Do not modify or discard them.

### 2. Safe GitHub sync

When a remote exists and network/auth are available:

```bash
git fetch --all --prune --tags
```

Then inspect without changing branches:

```bash
git status --short --branch
git branch -vv
git log --oneline --decorate -n 12
```

If `gh` is available, gather compact metadata:

```bash
gh repo view --json nameWithOwner,description,defaultBranchRef,url,isPrivate
gh pr list --state open --limit 20 --json number,title,headRefName,baseRefName,isDraft,mergeable,reviewDecision,updatedAt,url
gh issue list --state open --limit 20 --json number,title,labels,updatedAt,url
gh run list --limit 10 --json databaseId,displayTitle,status,conclusion,headBranch,createdAt,url
```

If GitHub auth fails, say so and continue from local state. Do not spend the whole turn on auth unless the user asked for auth repair.

### 3. Token-efficient file discovery

Use `rg --files` first. Look for, in this order:

- `AGENTS.md`, `CLAUDE.md`, `.cursorrules`, `.github/copilot-instructions.md`
- `README.md`, package or app `README.md`
- `docs/doc-map.yml`, `docs/doc-map.yaml`, `docs/DOC_MAP.md`
- `package.json`, `pnpm-workspace.yaml`, `turbo.json`, `pyproject.toml`, `requirements*.txt`, `Cargo.toml`, `go.mod`, `pom.xml`, `build.gradle`
- `.github/workflows/*`
- `docker-compose*.yml`, `Dockerfile`, `Procfile`, deploy or infra config
- `docs/adr/*`, `docs/runbooks/*`, `docs/architecture*`, `docs/development*`

Read only the relevant sections or first 120-220 lines unless the file is short. Prefer `jq` for JSON manifests and targeted `rg` for symbols.

### 4. Understand the project shape

Identify:

- product purpose and users
- major apps/packages/services
- frontend/backend/data/infra boundaries
- local dev commands
- test/build/lint commands
- deploy/release mechanism
- environments and secrets shape, without reading secrets
- active PRs/issues/CI runs
- docs and agent instructions that govern future work

Do not over-explain implementation details yet. The next task will decide what needs deeper reading.

## Optional helper script

If available, run:

```bash
./project-entry-sync/scripts/project-entry-snapshot.sh --sync
```

Use the script output as a starting point, not as the final answer. If the script is absent, run the commands manually.

## Output format

Use this brief:

```md
## Project Entry Brief

### Repo State

- Repo:
- Remote:
- Branch:
- Sync:
- Local changes:

### GitHub State

- Default branch:
- Open PRs:
- Open issues:
- Recent CI:
- Access limits:

### What This Project Is

<2-4 sentence summary grounded in README/docs/code.>

### Project Shape

- Apps/services:
- Key directories:
- Data/storage:
- External services:
- Deployment:

### Commands

- Install:
- Run:
- Test:
- Lint/typecheck:
- Build:
- Deploy:

### Operating Rules

- Agent/docs rules:
- Branch/PR rules:
- Security/data constraints:
- Documentation rules:

### Active Work And Risks

- Current local changes:
- Open PRs or branches:
- Immediate risks:
- Unknowns:

### Best Next Moves

1. <next useful action>
2. <next useful action>
3. <next useful action>

### Context Budget

- Read:
- Skipped deliberately:
- Need deeper read only if:
```

Keep the brief short. If the user wants a deeper map, recommend `engineering-operating-system` with `eos:map` or `eos:audit`. If the next task is PR triage or review, recommend `repo-pr-triage-review`. If the project has a handoff file, recommend `handoff-executor`.

## Quality checks

Before finalizing:

- Did you fetch remote metadata without changing the working tree?
- Did you preserve and report local dirty state?
- Did you read local instructions before summarizing workflow rules?
- Did you avoid huge files and generated artifacts?
- Did you distinguish current evidence from assumptions?
- Did you provide concrete next moves rather than a generic summary?
