# EOS Subcommands

Use these subcommands as routing hints. The user does not need exact syntax; natural language equivalents should map to the same behavior.

| Subcommand | Use when | Primary output | References |
| --- | --- | --- | --- |
| `eos:map` | The user wants a current-state map of a repo, product, or team operating model. | Operating map with evidence and unknowns. | `audit-domains.md` |
| `eos:audit` | The user asks for maturity, gaps, health check, readiness, or "what is missing". | 0-4 scored audit by domain, top risks, next steps. | `audit-domains.md` |
| `eos:handbook` | The user wants an engineering handbook, contribution guide, or team operating manual. | Handbook outline or edited docs. | `templates.md`, `audit-domains.md` |
| `eos:feature` | The user wants to take an idea from problem to production. | Feature delivery packet. | `capstone.md`, `templates.md` |
| `eos:delegated-capture` | The user wants to find or design opportunities for users, employees, managers, customers, or partners to provide/confirm their own information or execute operational steps, reducing back-office manual entry. | Delegated capture opportunity report and implementation candidates. | `delegated-capture.md`, `templates.md` |
| `eos:ready-done` | The user asks for Definition of Ready or Definition of Done. | DoR/DoD checklist by work type. | `templates.md` |
| `eos:stack` | The user asks to document stack, services, vendors, or ownership. | Stack definition table. | `templates.md`, `audit-domains.md` |
| `eos:architecture` | The user asks for architecture map, system boundaries, or ADRs. | Architecture overview, flow trace, or ADR. | `templates.md` |
| `eos:pr` | The user wants a PR template or review operating model. | PR template, review checklist, or merge policy. | `templates.md` |
| `eos:test-strategy` | The user asks for testing strategy, CI gates, or quality model. | Test matrix and CI gate recommendations. | `templates.md`, `audit-domains.md` |
| `eos:release` | The user asks for launch readiness, release checklist, rollout, rollback, or go/no-go. | Release checklist and risk plan. | `templates.md`, `capstone.md` |
| `eos:security-data` | The user asks about access roles, auth, privacy, data lifecycle, migrations, or backups. | Access/data/security operating checklist. | `templates.md`, `audit-domains.md` |
| `eos:ops` | The user asks about observability, incidents, support escalation, runbooks, or SLOs. | Ops readiness report, runbook outline, or incident template. | `templates.md`, `audit-domains.md` |
| `eos:docs` | The user asks for docs map, documentation standards, or docs drift. | Documentation map and ownership/freshness plan. | `templates.md`, `audit-domains.md` |
| `eos:debt` | The user asks about technical debt, refactor planning, or rewrite decisions. | Debt register entry or refactor plan. | `templates.md` |
| `eos:post-launch` | The user asks for post-launch review or continuous improvement. | Post-launch review and follow-up actions. | `capstone.md`, `templates.md` |
| `eos:capstone` | The user wants a full learning/application exercise for a real feature. | Complete feature artifact package. | `capstone.md`, `templates.md` |

## Routing rules

- If the user asks "is this project ready?", use `eos:audit`.
- If the user asks "make this team/process better", start with `eos:map`, then recommend `eos:audit`.
- If the user names a feature or launch, prefer `eos:feature` or `eos:release`.
- If the user asks how to reduce back-office load, recadastro effort, repetitive admin entry, or manual operational follow-up, use `eos:delegated-capture`.
- If the user names a missing artifact, route directly to that artifact mode.
- If the user asks for code review of a GitHub PR, prefer `repo-pr-triage-review`; use EOS only for the surrounding process or template.
- If the user asks for documentation Definition of Done, prefer `doc-delta`; use EOS for the broader documentation operating model.
- If a delegated-capture opportunity needs UX elaboration, recommend or invoke `hx-design-studio` when available.
