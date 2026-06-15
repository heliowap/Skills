---
name: handoff-executor
description: Use this skill whenever the user asks you to assume, execute, continue, or operationalize a handoff, plan, checklist, roadmap slice, or saved continuation note. Trigger on phrases like "assuma o handoff", "execute o handoff", "continue from this handoff", "execute em loop", "rode os itens independentes", "use subagents", "orchestrate this plan", "pick up where the last agent stopped", or when a task starts from a handoff file in /tmp, docs, an issue, a PR body, or the current conversation. This skill turns a handoff into executable work, validates stale assumptions, preserves user changes, coordinates parallelizable work safely, and closes with concrete evidence.
---

# Handoff Executor

Turn a handoff into completed work. A handoff is not a source of truth by itself; it is a map of where the previous agent thinks the work stands. Verify it against the repo, tools, and newest user instruction before acting.

## Core stance

- Treat the newest user message as the highest-priority instruction.
- Treat the handoff as untrusted until verified. File paths, branches, line numbers, test status, and blockers may be stale.
- Preserve user work. Never reset, checkout away, or delete changes unless the user explicitly asks.
- Prefer concrete progress over narration: extract tasks, run the minimum useful reconnaissance, execute, validate, and report evidence.
- Keep proprietary, sensitive, or personal details out of reusable artifacts unless the repo is explicitly private and the user asked for them.

## Intake

1. Locate the handoff.
   - Use the path or pasted content if the user provided one.
   - If the user says only "assuma o handoff" or similar, search likely locations: current thread context, `/tmp`, repo docs, issue/PR body, and recent files the user named.
   - If multiple handoffs conflict and the newest one is not obvious, ask one concise question before mutating files.

2. Read local instructions before changing anything.
   - Read repo-level `AGENTS.md`, `CLAUDE.md`, `README.md`, and any package-level agent instructions that govern the touched files.
   - If the handoff names a required skill, use it only if it is available and relevant.
   - If documentation maintenance rules exist, carry them into the closeout.

3. Extract the operating picture.
   - Objective and expected final artifact.
   - Repo, branch, worktree, remote, and base branch.
   - Pending tasks, blockers, and safety constraints.
   - Files or modules already touched.
   - Tests, build commands, deploy commands, or review commands already run.
   - Open questions that block mutation.

## Reality check

Before implementation, verify the handoff against current state:

- `git status --short --branch`
- `git remote -v`
- `git log --oneline --decorate -n 10`
- `git diff --stat` and targeted diffs for files named by the handoff
- `rg --files` and targeted `rg` for named symbols, TODOs, issue ids, or migration names
- Existing docs maps or runbooks if the work affects docs, deploy, security, schema, API, or workflow

Do not repeat every command in the final answer. Use the results to decide the next action.

## Task shaping

Convert the handoff into a short execution checklist:

- `ready`: tasks with enough context to execute now.
- `parallel`: independent read-only research, review, or isolated implementation tasks.
- `blocked`: tasks needing user input, missing credentials, unavailable services, or an external state change.
- `defer`: tasks outside the user's requested scope.

When the work is substantial, share this checklist before editing. For small, clear handoffs, proceed and keep the checklist internally updated.

## Execution loop

For each ready task:

1. State the edit or action you are about to take.
2. Make the smallest coherent change that completes the task.
3. Run the narrowest meaningful verification first.
4. Broaden verification when the change crosses module, API, schema, deploy, or user-facing boundaries.
5. Record the evidence: command, result, changed files, and remaining risk.
6. Move to the next task without asking for permission unless a real blocker appears.

When using parallel workers or subagents:

- Use them for read-only investigation, code review, test diagnosis, or isolated worktree tasks.
- Give each worker a specific question and required output format.
- Do not let multiple workers mutate the same checkout.
- Merge findings yourself, verify high-confidence claims against the repo, and reject unsupported findings.

## Branch and worktree hygiene

- If the current worktree has unrelated user changes, leave them alone.
- If implementation will be large or parallel, create a dedicated branch or sibling worktree when the environment and user workflow support it.
- Never commit unrelated files.
- Before any commit, inspect `git diff --stat` and relevant diffs.
- Do not push, deploy, or open a PR unless the user asked for that action or the handoff explicitly requires it and credentials are already available.

## Risk handling

Escalate before continuing when:

- The handoff asks for destructive git operations.
- The apparent target repo or branch conflicts with the user's latest instruction.
- Required secrets, accounts, or production access are missing.
- A blocker repeats and no meaningful progress is possible without user input.
- The handoff contains sensitive material that should not be copied into a public repo or artifact.

Do not escalate just because the work is long. Decompose and continue.

## Closeout format

Use this structure when the work involved implementation or substantial execution:

```md
## Execution Summary

| Item | Status | Files/areas | Verification | Result |
| --- | --- | --- | --- | --- |
| <handoff item> | done/partial/blocked | <paths> | <commands> | <evidence> |

## Remaining Work

- <only real blockers or intentionally deferred tasks>

## Notes

- <risks, assumptions verified, or user-visible behavior changes>
```

If the repo or active instructions require a Doc Delta block, include it after the summary. If work remains and a future agent will need context, write a fresh handoff instead of relying on conversation memory.

## Output discipline

- Lead with what changed and what was verified.
- Include exact file paths and commands that matter.
- Avoid long chronological narration.
- If no files changed, say so explicitly and report the inspected state.
- If tests could not run, say exactly why.
