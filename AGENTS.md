# AGENTS.md

Contrato para agentes que trabalham neste repositorio de skills.

## Escopo

- Cada skill vive em uma pasta propria na raiz.
- Toda skill precisa ter `SKILL.md` com frontmatter `name` e `description`.
- Recursos auxiliares devem ficar dentro da pasta da skill (`references/`,
  `scripts/`, `assets/`, `evals/`).
- Este repo e publico: nao commitar secrets, `.env`, dumps privados, dados
  pessoais sensiveis, outputs temporarios ou artefatos que possam ser
  regenerados com seguranca.
- Preserve skills genericas de terceiros fora deste repositorio, a menos que a
  skill tenha sido claramente adaptada ou desenvolvida para os projetos do
  Helio.

## Documentation Maintenance

For any code, configuration, workflow, API, schema, UI, security, operations,
data-definition, or architecture change, treat documentation maintenance as part
of the Definition of Done.

At closeout, include a `Doc Delta` block unless the user explicitly asks for a
narrow answer with no implementation or review closeout:

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

Use `Doc impact: no` only when the change is internal-only and does not affect
user-facing behavior, API contracts, data schemas, setup, deployment,
operational runbooks, security posture, metric definitions, product workflows,
or documented architecture.

When a documentation map exists, consult it before deciding which docs to
update. Prefer updating relevant documentation in the same change when the doc
impact is clear and the affected docs are in scope.

If documentation should change but cannot be safely updated in the current task,
create or update a persistent doc-delta note using:

```text
docs/todo/doc-deltas/YYYY-MM-DD-<slug>.md
```

The note must include:

- changed behavior or decision
- affected code paths
- docs that need updates
- suggested section anchors
- reason the docs were not updated immediately

When creating or updating any project `AGENTS.md`, include a Documentation
Maintenance section equivalent to this policy unless the project has a stricter
local rule.

