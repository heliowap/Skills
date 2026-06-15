# EOS Audit Domains

Score each domain from evidence:

- `0`: missing
- `1`: informal or ad hoc
- `2`: documented but inconsistent
- `3`: documented and regularly used
- `4`: measured and continuously improved
- `unknown`: evidence not available in current context
- `not needed`: intentionally omitted and low-risk for this product/team

Do not average scores blindly. A single P1 gap in release, access, data, or operations can dominate overall readiness.

## Domains

| Domain | Ready when | Evidence to inspect |
| --- | --- | --- |
| Product context | Problem, users, JTBD, journeys, FTUE, and success metrics are explicit. | PRDs, tickets, roadmap, analytics docs, design docs. |
| Stack definition | Frontend, backend, data, infra, auth, analytics, CI/CD, observability, and vendors are mapped. | README, service catalog, package docs, infra config. |
| Architecture | Components, boundaries, data flow, dependencies, failure modes, and tradeoffs are visible. | Architecture docs, diagrams, ADRs, code boundaries. |
| Local setup | A new developer can run app, tests, migrations, workers, and seed data safely. | README, scripts, devcontainers, env examples. |
| GitHub workflow | Issues, branches, PRs, reviews, checks, merge rules, and owners are defined. | PR templates, branch protection, CODEOWNERS, CI. |
| Testing | Expected unit, integration, E2E, contract, smoke, regression, security, performance, and accessibility checks are known. | Test tree, CI config, docs, recent PRs. |
| CI/CD | Pipeline gates protect important branches and deployments are traceable. | Workflow files, deployment logs, checks, release docs. |
| Environments | Local, preview, dev, staging, production, sandbox, and demo environments have clear purpose, data, and access rules. | Env docs, deployment config, secrets policy. |
| Release process | Deployment, rollout, rollback, release notes, and post-release monitoring are defined. | Runbooks, release checklist, feature flag docs. |
| Access roles | User, internal, and environment permissions follow least privilege and are reviewed. | RBAC docs, route guards, access matrix, admin docs. |
| Security/privacy | Secrets, sensitive data, dependencies, logging, and privacy requirements are deliberate. | Security docs, secret scans, dependency checks, data docs. |
| Data lifecycle | Models, migrations, backups, restores, retention, deletion, imports, exports, and audit logs are understood. | Migrations, schema docs, backup docs, data runbooks. |
| Observability | Logs, metrics, traces, dashboards, and alerts cover critical flows and user impact. | Monitoring config, dashboards, alert rules, logging docs. |
| Incidents/support | Severity, roles, runbooks, escalation, communication, and postmortems exist. | Incident docs, support playbooks, runbooks. |
| Performance | Critical paths have budgets, monitoring, and capacity thinking. | Performance tests, dashboards, budgets, incident history. |
| Accessibility/UX | Keyboard, screen reader, contrast, responsive, loading, empty, and error states are considered. | Design system, QA checklists, tests, UI docs. |
| Documentation | README, setup, architecture, API, runbooks, ADRs, support docs, and launch docs have owners and freshness signals. | Docs map, README, ADR index, doc owners. |
| Team operating model | Owners, cadence, decision rights, escalation, Definition of Ready, and Definition of Done are clear. | Team docs, rituals, ownership map, working agreements. |

## Risk lens

Escalate priority when a gap affects:

- production deployment or rollback
- authorization, privacy, security, or regulated data
- schema migrations or irreversible data changes
- customer-facing launch readiness
- incident response or operator access
- undocumented architecture that blocks safe change

## Recommended summary

```md
## Overall Readiness

<one-paragraph verdict>

## Domain Scores

| Domain | Score | Evidence | Gap | Next step |
| --- | ---: | --- | --- | --- |

## P1/P2 Risks

- [P1] <risk> - <evidence>

## Fastest Improvements

- <1-3 actions that improve operating reliability quickly>
```
