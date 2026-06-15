---
name: repo-pr-triage-review
description: Use this skill whenever the user asks to inspect, triage, summarize, review, or decide merge readiness for GitHub pull requests in a repository. Trigger on "Verifique PR abertos", "PRs abertos", "Code review", "review this PR", "merge green?", "CI?", "checks", "pull request inventory", "o que esta pronto para merge", "revise a PR", or when the user asks a follow-up review immediately after an open-PR inventory. This skill starts with a concise PR inventory, verifies current check state carefully, surfaces deploy or migration gates, then performs findings-first code review when requested.
---

# Repo PR Triage Review

Use this skill to turn vague PR requests into a reliable repo-level inventory or a focused code review. The user values concise orientation first, then high-confidence blockers with exact evidence.

## Operating modes

Choose the mode from the prompt and current conversation:

- **Inventory mode**: The user asks for open PRs, merge readiness, CI state, or "what is open".
- **Review mode**: The user asks for code review, "review", "Code review", security review, or a specific PR.
- **Follow-up mode**: If the user says only "Code review" after you just produced a PR inventory, review the current open PR or the PR most clearly in scope.
- **Fix mode**: Only edit files when the user explicitly asks to fix, implement, address review feedback, or update the branch.

If the target PR is ambiguous and there are multiple plausible PRs, ask one concise question. Otherwise, discover the target.

## First pass

Run a compact repo orientation before deeper work:

```bash
git status --short --branch
git remote -v
gh pr list --state open --limit 100 --json number,title,headRefName,baseRefName,author,isDraft,mergeable,reviewDecision,statusCheckRollup,updatedAt,createdAt,url
```

If `gh` is unavailable or unauthenticated, fall back to available GitHub tools, local refs, and `git log`/`git diff`. Say what source you used.

## Inventory workflow

For each open PR, capture:

- Number, title, author, draft status, head/base, age, last update, and URL.
- Mergeability and review decision.
- Current check state from the rollup.
- Whether failures are current or stale.
- Deploy, migration, data, or manual-operation gates mentioned in the PR body.
- Obvious risk areas from changed files or labels if cheaply available.

When checking CI, be careful with duplicate or stale rows. `gh pr checks` can exit non-zero because an older run remains in the rollup even when a newer equivalent run passed. Inspect names, timestamps, and latest runs before saying a PR is blocked.

Inventory output should be short:

```md
## Open PRs

| PR | Branch | Status | Checks | Review | Gates | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| #123 Title | feature -> main | ready/draft/blocked | latest green/stale fail/current fail | approved/changes requested/none | migration/manual/none | <one-line risk> |

## Merge Readiness

- Ready:
- Blocked:
- Needs review:
- Manual gates:
```

## Review workflow

When reviewing a PR:

1. Read repo instructions and doc maps that govern the changed files.
   - `AGENTS.md`, `CLAUDE.md`, package-level instructions, `docs/doc-map.yml`, and relevant ADRs/runbooks.
2. Read the PR body, linked issue/spec, migration notes, and deploy gates.
3. Compare the diff against the intended behavior, not only against style.
4. Prioritize high-risk areas:
   - authorization and permission boundaries
   - authentication, sessions, tokens, and secrets
   - database migrations, RLS, schema changes, and data lifecycle
   - API contracts, webhooks, background jobs, and idempotency
   - billing, finance, clinical, compliance, or PII/PHI paths
   - production deploy, rollback, and operator access
   - concurrency, retries, partial failure, and destructive operations
5. Run targeted searches for symbols touched by the PR so you review call sites and contracts, not only edited lines.
6. Check tests added or changed. Look for missing tests only when they protect a real behavior risk.

In security-sensitive code, compare route behavior against the permission catalog and docs. A broad route guard is not enough if the payload can still mutate privileged fields. For own-scope access, explicit binding is safer than fuzzy matching; treat fuzzy text matching as a review hotspot when it decides authorization.

## Review output

Lead with findings. Do not start with a broad summary unless there are no findings.

Use this format:

```md
## Findings

- [P1] <short title> - `path/file.ext:123`
  <impact in concrete terms.>
  <why the code does this, with enough evidence to be actionable.>
  <suggested fix or boundary condition.>

## Open Questions

- <only questions that change the verdict>

## Verification

- <commands run and relevant results>

## Summary

<brief only after findings>
```

Severity guide:

- `P0`: production outage, data loss, critical security breach, or irreversible destructive behavior.
- `P1`: merge-blocking bug, privilege escalation, significant data exposure, broken core workflow.
- `P2`: important correctness, reliability, deploy, test, or maintainability issue that should be fixed soon.
- `P3`: minor issue, cleanup, unclear wording, or non-blocking improvement.

If there are no high-confidence findings, say that clearly and name residual risk or test gaps.

## Fix mode

If the user asks you to fix the PR:

- Preserve unrelated user changes.
- Make focused edits that address the findings.
- Add or update tests proportional to risk.
- Update docs when behavior, config, API, schema, operations, security, or workflows changed.
- Run verification and report exact commands.
- Do not commit, push, deploy, or create a PR unless asked.

## Closeout

For inventory-only work, close with the current readiness and any uncertainty about stale checks or missing access.

For review work, include findings first, then verification and summary. If repository instructions require documentation closeout, include the Doc Delta block and report doc impact for missing or stale docs.
