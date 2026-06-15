# EOS Templates

Use existing repository templates first. Use these when the project has no convention or the user asks for a new one.

## Problem Statement

```md
# Problem Statement: <title>

## Problem
<What is not working, for whom, and in what situation?>

## User or Segment
<Who experiences it?>

## Current Workaround
<How the problem is handled today.>

## Impact
<User pain, business risk, support cost, opportunity, or compliance need.>

## Desired Outcome
<The better state.>

## Constraints and Non-goals
<What must remain true and what is explicitly out of scope.>

## Success Signals
<Metrics, qualitative signals, or acceptance evidence.>
```

## JTBD

```md
When <situation>, the user wants to <motivation/action>, so they can <desired outcome>.

- Situation:
- Motivation:
- Desired outcome:
- Current workaround:
- Product surface impacted:
- Engineering implications:
- Success signal:
```

## Stack Definition

```md
| Layer | Tool/service | Purpose | Owner | Environments | Risk or note |
| --- | --- | --- | --- | --- | --- |
| Frontend |  |  |  |  |  |
| Backend |  |  |  |  |  |
| Database |  |  |  |  |  |
| Infrastructure |  |  |  |  |  |
| Auth |  |  |  |  |  |
| CI/CD |  |  |  |  |  |
| Observability |  |  |  |  |  |
| Analytics |  |  |  |  |  |
| Vendors |  |  |  |  |  |
```

## Pull Request

```md
## Summary

- What changed:
- Why this change is needed:

## Linked Work

- Issue/ticket:
- Spec/design:

## Testing Evidence

- Unit:
- Integration:
- E2E/manual QA:
- UI screenshots/recording:

## Risk and Rollout

- Migrations:
- Feature flags:
- Rollback plan:
- Monitoring/alerts:

## Checklist

- [ ] Acceptance criteria met
- [ ] Required tests pass
- [ ] Documentation updated if needed
- [ ] Security/privacy/access considered
- [ ] Analytics/events updated if needed
```

## ADR

```md
# ADR: <Decision Title>

Status: Proposed | Accepted | Deprecated | Superseded
Date:
Owner:

## Context
<Problem, constraints, and decision drivers.>

## Options Considered

1. <Option> - pros, cons, risks
2. <Option> - pros, cons, risks
3. <Option> - pros, cons, risks

## Decision
<Chosen option.>

## Consequences
<Benefits, costs, risks, migration work, operational impact.>

## Review Trigger
<When this should be revisited.>
```

## Test Strategy Matrix

```md
| Test level | Covers | Owner | Runs when | Blocks merge/release? |
| --- | --- | --- | --- | --- |
| Unit |  |  |  |  |
| Integration |  |  |  |  |
| End-to-end |  |  |  |  |
| Contract |  |  |  |  |
| Smoke |  |  |  |  |
| Manual exploratory |  |  |  |  |
| Performance |  |  |  |  |
| Security |  |  |  |  |
| Accessibility |  |  |  |  |
```

## Access Role Matrix

```md
| Action/resource | Owner | Admin | Member | Viewer | Support |
| --- | --- | --- | --- | --- | --- |
| View workspace data |  |  |  |  |  |
| Invite users |  |  |  |  |  |
| Change billing |  |  |  |  |  |
| Export data |  |  |  |  |  |
| Delete organization |  |  |  |  |  |
| Use admin tools |  |  |  |  |  |
| Impersonate user |  |  |  |  |  |
```

## Release Checklist

```md
# Release Checklist: <release name>

- Release owner:
- Target date:
- Users affected:

## Readiness

- [ ] Acceptance criteria met
- [ ] Required tests pass
- [ ] Migration plan reviewed
- [ ] Rollback plan reviewed
- [ ] Feature flag or rollout plan ready
- [ ] Support and stakeholders informed
- [ ] Documentation updated
- [ ] Analytics verified
- [ ] Monitoring and alerts ready
- [ ] Security/privacy/access reviewed

## Decision

- Go/no-go:
- Post-release monitoring window:
- Stop criteria:
- Follow-up owner:
```

## Incident Report

```md
# Incident Report: <title>

- Severity:
- Start time:
- Detection time:
- Resolution time:
- Incident commander:
- Technical lead:
- Communications lead:

## Impact
<Users, systems, revenue, data, operations.>

## Timeline

- <time> - <event>

## Root and Contributing Factors
<What conditions allowed this?>

## Detection and Response
<What worked? What was missing?>

## Follow-up Actions

| Action | Owner | Due date | Status |
| --- | --- | --- | --- |

## Communication Notes
<Customer or internal communication notes.>

## Lessons to Update
<Runbooks, tests, alerts, docs, or process changes.>
```

## Debt Statement

```md
# Technical Debt: <area>

## Impact
<How this slows delivery, increases risk, or affects users.>

## Interest
<What gets harder if the team waits.>

## Risk
<Failure modes or future constraints.>

## Repayment Plan
<Smallest safe sequence of changes.>

## Product Work Blocked or Slowed
<Features, fixes, or operations affected.>
```
