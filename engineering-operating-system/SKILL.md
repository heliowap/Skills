---
name: engineering-operating-system
description: Use this skill whenever the user wants to audit, design, document, or improve the operating system of a software team or product. Trigger on "Engineering Operating System", "EOS", "eos:", "software development 101", "engineering handbook", "maturity audit", "delivery process", "definition of ready", "definition of done", "launch readiness", "release checklist", "delegated capture", "source data workflow", "back office reduction", "self-service operations", "ADR", "stack map", "architecture map", "incident process", "engineering onboarding", "operating cadence", or when the user asks how to make a software project/team more reliable from product problem through production operations. This skill supports subcommands such as eos:audit, eos:map, eos:handbook, eos:feature, eos:delegated-capture, eos:release, eos:docs, eos:ops, and eos:capstone.
---

# Engineering Operating System

Build, audit, and improve the operating system around a software product: product context, architecture, workflow, quality, release, security, data, operations, documentation, and team cadence.

This skill is derived from the structure of the user's provided "Software Development 101" book, but it should behave as an operational skill, not as a book summary. Prefer evidence, artifacts, and concrete next steps over abstract teaching.

## Subcommand grammar

Recognize these forms:

- `eos:<subcommand>`
- `eos <subcommand>`
- `Engineering Operating System: <subcommand>`
- Natural language equivalents such as "audit this repo's engineering process" or "make a release checklist".

If no subcommand is provided, infer the closest mode from the user's task. If the scope is ambiguous and file edits would be risky, ask one concise question.

For the full routing table, read `references/subcommands.md`.

## Core principles

- Start from the product problem and production behavior, not process theater.
- Use evidence. Inspect the repo, docs, tickets, PRs, CI, deploy files, runbooks, and monitoring links when available.
- Right-size the process. A two-person project, internal tool, and regulated platform need different weight.
- Artifacts are memory. Favor durable files, checklists, templates, and decision records that future agents and humans can reuse.
- Make gaps explicit. A missing artifact is acceptable when the risk is understood and the next step is named.
- Do not copy private or sensitive project details into public artifacts.
- Do not mutate files unless the user asked for creation, update, implementation, or remediation.

## Standard intake

1. Identify scope:
   - product, repo, team, feature, release, incident, or documentation set
   - current stage: idea, build, review, launch, operations, or post-launch
   - expected output: audit report, checklist, handbook section, template, ADR, PR body, or implementation plan

2. Read local instructions:
   - `AGENTS.md`, `CLAUDE.md`, `README.md`, package docs, `docs/doc-map.yml`, ADRs, runbooks, and contribution docs when relevant.

3. Gather evidence:
   - repo structure and commands
   - docs and ownership
   - tests and CI
   - deploy and environment config
   - auth/access/data/security surfaces
   - observability, incident, support, and release procedures

4. Choose subcommand and references:
   - Use `references/subcommands.md` for routing.
   - Use `references/audit-domains.md` for audits and maturity scoring.
   - Use `references/templates.md` when producing artifacts.
   - Use `references/capstone.md` for end-to-end feature delivery programs.
   - Use `references/delegated-capture.md` when looking for opportunities to move repetitive data collection or operational steps from back office to the natural owner of the information.

## Subcommand behavior

### Audit modes

For `eos:audit`, `eos:map`, or maturity requests:

- Read `references/audit-domains.md`.
- Score only from evidence, not optimism.
- Mark unknowns as `unknown`, not as failures, unless the missing evidence itself is a risk.
- Return prioritized gaps and next actions.

### Artifact modes

For handbook, template, ADR, release, incident, PR, DoR/DoD, stack, architecture, access, test, docs, or ops requests:

- Read `references/templates.md`.
- Reuse existing repo conventions before introducing new formats.
- Produce current-state docs, not session diaries.
- When editing docs, keep them close to where readers will look first.

### Feature program modes

For `eos:feature`, `eos:capstone`, launch readiness, or end-to-end delivery requests:

- Read `references/capstone.md`.
- Connect problem statement, JTBD, user journey, metrics, architecture/API/data impact, DoR/DoD, tests, release, rollout, rollback, and post-launch review.
- Do not let code merge be the definition of success.

### Delegated capture modes

For `eos:delegated-capture`, delegated data collection, back-office reduction, onboarding self-service, recadastro, operational self-service, or source-of-truth capture requests:

- Read `references/delegated-capture.md`.
- Look for candidate workflows even when the user does not name a specific process.
- Treat code and docs as evidence of candidates, not proof of operational cost.
- Recommend `hx-design-studio` when an opportunity needs flow design, form UX, microcopy, screen hierarchy, progressive disclosure, or validation UX.
- Keep the distinction between healthy delegation and pushing bureaucracy onto the user.

## Output formats

For audits, use:

```md
## EOS Audit

| Domain | Score | Evidence | Gap | Next step |
| --- | ---: | --- | --- | --- |

## Top Risks

- [P1] <risk> - <evidence>

## Next 7 Days

- <concrete action>

## Next 30 Days

- <concrete action>
```

For artifact creation, use the artifact requested by the user. If no format is specified, produce a concise markdown artifact that can be committed as-is.

For implementation or doc changes, include verification commands and a Doc Delta block when local instructions require it.

## Quality bar

- Name owners when the artifact needs accountability. If owners are unknown, use placeholders.
- Include evidence locations for claims about current state.
- Separate "missing", "unknown", and "not needed".
- Prefer checklists that fit on one screen and link to deeper docs.
- Include rollout, rollback, monitoring, support, and documentation when the work reaches production users.
- Keep recommendations actionable: each recommendation should have a path, owner placeholder, or next command.
