# EOS Delegated Capture

Use this reference for `eos:delegated-capture`.

Delegated capture is the operating pattern of moving repetitive data collection, confirmation, or operational steps from a centralized back office to the natural owner of the information, while preserving validation, auditability, review, and user experience.

The point is not to give users more bureaucracy. The point is to let the person closest to the truth provide or confirm information in a short, contextual flow, so back office governs and handles exceptions instead of retyping everything.

## When to use

Use this mode when the user asks about:

- recadastro, onboarding, employee/customer/professional profile completion
- manual back-office entry, repeated admin forms, spreadsheet imports, bulk edits
- self-service operations, employee self-service, customer self-service, manager approvals
- reducing operational load without losing data quality or accountability
- finding product opportunities where final users can complete/confirm data or execute small operational steps

Also use it proactively during an EOS audit when the repo shows many admin-only create/update flows, imports, manual status changes, or exception queues.

## Scanner workflow

When the user does not specify a process, scan the project for candidate surfaces.

1. Inspect product surfaces and routes.
   - admin pages, back-office dashboards, user/profile pages, onboarding, settings, forms
   - route names such as `admin`, `backoffice`, `users`, `profiles`, `employees`, `professionals`, `providers`, `patients`, `customers`, `documents`, `timesheet`, `attendance`, `billing`, `contracts`, `credentials`

2. Inspect data and API patterns.
   - endpoints or functions named `create`, `update`, `bulk`, `import`, `approve`, `review`, `confirm`, `submit`, `pending`, `reject`
   - tables/models with `status`, `reviewed_by`, `approved_by`, `created_by`, `updated_by`, `submitted_at`, `confirmed_at`, `source`, `audit`
   - CSV import/export, spreadsheet workflows, attachments, document uploads

3. Inspect workflow and documentation evidence.
   - runbooks, SOPs, support docs, onboarding docs, PRDs, TODOs, issue labels
   - phrases such as "manual", "back office", "operator", "recadastro", "pendente", "conferencia", "validacao", "planilha"

4. Identify natural owners.
   - end user: personal data, contact details, preferences, documents, consent, availability, declarations
   - professional/contractor: credentials, registration, specialties, schedule constraints, proof documents
   - manager: role, team, allocation, approval, exceptions, performance context
   - back office: policy, compliance, audit, privileged internal fields, exception handling
   - system: derived fields, integration data, immutable ids, calculations

5. Separate candidate from recommendation.
   - Code can reveal a candidate, but operational interviews or metrics confirm value.
   - Mark confidence as `high`, `medium`, or `low`.

## Delegation classification

Classify each field or step:

- `self-declared`: the natural owner can provide it.
- `confirmed`: the system has a value and the owner confirms or corrects it.
- `manager-approved`: a manager or accountable reviewer must approve.
- `backoffice-only`: should remain with privileged operators.
- `system-derived`: computed or imported by the system.
- `not-delegable`: legally, operationally, or experientially unsafe to delegate.

## Healthy delegation test

A candidate is strong when:

- the user or stakeholder is the best source of truth
- the task is short, contextual, and explainable
- known data can be prefilled
- validation catches common errors at entry time
- sensitive or high-risk fields have review and audit
- back office reviews exceptions rather than every row
- the user gains clarity, access, speed, or agency
- the organization gains accuracy, cycle time, or fewer manual touches

A candidate is weak when it:

- moves an internal burden to the user with no user benefit
- asks for information the user cannot reliably know
- lacks validation, review, audit, or correction paths
- creates a long generic form instead of progressive collection
- increases support demand more than it reduces operational work
- delegates policy decisions, privileged access, or compliance judgment to the wrong actor

## UX handoff

Recommend or invoke `hx-design-studio` when the delegated workflow needs:

- user journey design
- form structure and progressive disclosure
- microcopy explaining why information is needed
- validation and error-state design
- review/exception queue UX
- mobile-first capture flows
- trust, privacy, consent, or sensitive-data interactions
- prototype, wireframe, or interaction critique

EOS should define the operating logic. `hx-design-studio` should shape the user-facing experience so delegation feels like natural confirmation or completion, not administrative burden.

## Output format

Use this structure for scans:

```md
## Delegated Capture Scan

### Summary
<one-paragraph operational verdict>

### Candidate Opportunities

| Opportunity | Evidence | Natural owner | Current operator | Delegation type | Confidence | Impact | Risk | Recommendation |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |

### Field/Step Matrix

| Field or step | Natural owner | Classification | Validation | Reviewer | Audit needs | Destination |
| --- | --- | --- | --- | --- | --- | --- |

### UX/Design Needs

- <where hx-design-studio should be invoked or recommended>

### Implementation Slices

- Quick win:
- Medium:
- High-impact:
- Do not delegate:

### Metrics

- Manual entries avoided:
- Cycle time reduction:
- Error/rework rate:
- Exception rate:
- Completion rate:
- Back-office review time:
```

## Implementation notes

When the user asks to implement a candidate:

- start with a confirmation flow before building full self-service editing
- preserve back-office override and audit trails
- add status transitions before adding complex approval workflow
- prefer field-level provenance: who supplied/confirmed what, when, and from which channel
- design for partial completion and reminders
- make exception queues explicit
- update documentation and runbooks when operational responsibility changes
