---
name: doc-delta
description: Use this skill whenever a task changes or reviews code, configuration, workflow, API contracts, schemas, UI, security posture, operations, data definitions, architecture, deployment behavior, or documented product workflows. Also use it when the user mentions Doc Delta, Docs Delta, Documentation Maintenance, documentation Definition of Done, doc-map.yml, AGENTS.md documentation rules, runbooks, roadmap closeout, ADRs, or docs drift, even if they do not explicitly ask for a documentation update.
---

# Doc Delta

Keep documentation maintenance part of the Definition of Done. The goal is to prevent drift between the implemented system and the docs that operators, developers, agents, and users rely on.

## When to apply

Apply this skill for any implementation, configuration, workflow, API, schema, UI, security, operations, data-definition, deployment, product-flow, or architecture change.

Also apply it during reviews when the reviewed change has documentation impact. For review-only tasks, normally do not edit docs unless the user asked you to fix the branch; report the missing or unnecessary documentation work in the closeout block.

Do not force this skill into a narrow answer with no implementation or review closeout, such as "what does this function do?" or "show me the command output", unless the user explicitly asks for documentation impact.

## Core workflow

1. Identify what changed or what is being reviewed.
   - Name the behavior, API, schema, config, workflow, security, data, operations, UI, deployment, or architecture surface.
   - If the change is purely internal, verify that it does not affect setup, usage, contracts, runbooks, metrics, security posture, or documented architecture before marking it no-impact.

2. Look for a project doc map before deciding what to update.
   - Prefer `docs/doc-map.yml`, `docs/doc-map.yaml`, `docs/DOC_MAP.md`, or an equivalent project-specific map.
   - If a doc map exists, consult it and route updates through its source-of-truth docs.
   - If no doc map exists, inspect obvious docs such as `README.md`, `AGENTS.md`, `CLAUDE.md`, `DEVELOPMENT.md`, `ARCHITECTURE.md`, `docs/`, package `README.md`, package `CONTEXT.md`, runbooks, ADRs, and deployment docs.

3. Update docs in the same change when the impact is clear and the affected docs are in scope.
   - Prefer updating the existing source of truth in place.
   - Keep docs current-state oriented. Do not create archive folders or one-off session summaries unless the project explicitly uses that convention.
   - If an old statement becomes false because of the change, fix or remove it.

4. If docs should change but cannot safely be updated now, create or update a persistent doc-delta note.
   - First use the project convention if one exists.
   - If there is no convention, create:
     `docs/todo/doc-deltas/YYYY-MM-DD-<slug>.md`
   - Include:
     - changed behavior or decision
     - affected code paths
     - docs that need updates
     - suggested section anchors
     - reason the docs were not updated immediately

5. Include the closeout block.
   - At closeout, include `### Doc Delta` unless the user explicitly asked for a narrow answer with no implementation or review closeout.
   - Use `Doc impact: no` only when the change is internal-only and does not affect user-facing behavior, API contracts, data schemas, setup, deployment, operational runbooks, security posture, metric definitions, product workflows, or documented architecture.

## Closeout template

Use this exact block shape:

```md
### Doc Delta

- Doc impact: yes/no
- Docs updated:
- Docs that should change but were not changed:
- Relevant section anchors:
- Behavior/API/schema/config/runbook changes:
- Follow-up doc task:
- Reason if Doc impact is no:
```

Fill every field. Use `none` or `n/a` only when that is actually true.

## How to decide impact

Use `Doc impact: yes` when any of these are true:

- A user, operator, developer, admin, analyst, or agent should do something differently.
- A setup, deployment, local-dev, CI, secret, environment variable, port, service, job, flag, rollback, or validation step changes.
- A public or internal API contract changes, including request/response shape, auth behavior, permission checks, error behavior, event shape, or webhook contract.
- A database schema, migration, data lifecycle, metric definition, audit trail, PII/security/compliance behavior, or retention rule changes.
- A UI flow, permission-dependent view, product workflow, feature flag, troubleshooting path, or support procedure changes.
- A roadmap, PR plan, TODO, ADR, context map, runbook, or architecture statement becomes stale.
- You are creating or updating a project `AGENTS.md`; include a Documentation Maintenance section equivalent to this policy unless the project has a stricter local rule.

Use `Doc impact: no` only after checking that none of the above apply. In that case, explain why briefly in `Reason if Doc impact is no`.

## Routing heuristics

When a doc map exists, let it win. If it does not, use these defaults:

- `README.md`: package list, quick start, primary commands, externally visible setup.
- `DEVELOPMENT.md` or contributor docs: branch workflow, test commands, local stack, coding standards.
- `ARCHITECTURE.md`, `CONTEXT.md`, or `CONTEXT-MAP.md`: topology, domain boundaries, data flow, ownership, vocabulary.
- `docs/adr/`: cross-package, irreversible, security/compliance, deployment, data-model, integration, or AI-policy decisions.
- `docs/runbooks/` or `docs/ops/`: operational procedure, rollback, validation command, escalation, incident response.
- `docs/PENDING-PROD-DEPLOYS.md` or equivalent: manual production actions, migrations, flags, provider config, secrets, deploy validations.
- `docs/SECURITY.md`, `docs/COMPLIANCE.md`, `docs/PII_PIPELINE.md`: auth, authorization, audit, secrets, patient/customer data, PII, regulatory behavior.
- Product/design docs: user-facing workflow, UI language, feature behavior, visual or interaction rules.
- Package-level `README.md`, `CLAUDE.md`, `AGENTS.md`, or `CONTEXT.md`: package-specific behavior, commands, conventions, and ownership.

## Backlog and plan closeout

If the work delivers a roadmap or planned item, treat the plan and roadmap as part of the delivery:

- Move delivered roadmap items to the appropriate completed or production section with date and evidence.
- Delete or resolve delivered ephemeral plans when the project convention says plans are temporary.
- Migrate durable learning from plans into ADRs, context docs, runbooks, roadmap notes, or package docs.
- If delivery is partial, document what remains and why.
- Before claiming backlog status, verify against code. Roadmaps and plans can be stale.

## Persistent note example

Use this when docs should change but are out of scope or blocked:

```md
# Doc Delta: <short title>

Date: YYYY-MM-DD

## Changed behavior or decision

<What changed, in current-state language.>

## Affected code paths

- `<path>`

## Docs that need updates

- `<doc path>`: <section or reason>

## Suggested section anchors

- `<anchor or heading>`

## Reason docs were not updated immediately

<Concrete blocker or scope reason.>
```

## Closeout examples

No impact:

```md
### Doc Delta

- Doc impact: no
- Docs updated: none
- Docs that should change but were not changed: none
- Relevant section anchors: n/a
- Behavior/API/schema/config/runbook changes: none
- Follow-up doc task: none
- Reason if Doc impact is no: refactor only; no behavior, contract, setup, operations, or documented architecture changed.
```

Impact handled:

```md
### Doc Delta

- Doc impact: yes
- Docs updated: `docs/PENDING-PROD-DEPLOYS.md`
- Docs that should change but were not changed: none
- Relevant section anchors: "Pending migrations"
- Behavior/API/schema/config/runbook changes: added a manual production migration step and validation command.
- Follow-up doc task: none
- Reason if Doc impact is no: n/a
```

Impact deferred:

```md
### Doc Delta

- Doc impact: yes
- Docs updated: `docs/todo/doc-deltas/YYYY-MM-DD-api-auth-change.md`
- Docs that should change but were not changed: `docs/SECURITY.md`
- Relevant section anchors: "Authorization model"
- Behavior/API/schema/config/runbook changes: API authorization now fails closed for missing role bindings.
- Follow-up doc task: update `docs/SECURITY.md` after the auth terminology is confirmed.
- Reason if Doc impact is no: n/a
```
