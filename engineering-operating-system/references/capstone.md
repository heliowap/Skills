# EOS Feature Program

Use this for `eos:feature`, `eos:capstone`, or any request to move a real feature from idea to production.

The goal is a complete delivery packet. Code merge is not the finish line; the feature is complete when the team can explain what changed, why it mattered, how it was verified, how it was released, and how it will know whether it worked.

## Delivery packet

1. Problem statement
   - User or segment
   - Current pain or workaround
   - Desired outcome
   - Constraints and non-goals

2. Jobs to Be Done
   - Situation
   - Motivation/action
   - Desired outcome
   - Success signal

3. Journey and FTUE impact
   - User path before change
   - User path after change
   - Empty, loading, error, and permission states
   - Support and onboarding implications

4. Metrics and analytics
   - Primary success metric
   - Diagnostic metrics
   - Event names and properties
   - Privacy considerations

5. Stack and architecture impact
   - Components touched
   - API contracts
   - Data model changes
   - External dependencies
   - Failure modes

6. Data and access
   - Roles and permissions
   - Sensitive data
   - Migration or backfill plan
   - Backup, restore, retention, deletion, import, export, and audit implications

7. Definition of Ready
   - Problem and users are clear
   - Acceptance criteria exist
   - Dependencies and constraints are named
   - Risk level is understood
   - Required docs/designs/contracts are linked

8. Build and review
   - Branch/PR plan
   - Test plan
   - Review owners
   - CI evidence
   - Documentation updates

9. Release
   - Release owner
   - Rollout plan
   - Feature flag strategy if needed
   - Rollback plan
   - Monitoring and alerting
   - Support and stakeholder communication
   - Stop criteria

10. Post-launch
   - Monitoring window
   - Expected signals vs actual signals
   - Bugs, incidents, and support themes
   - Follow-up actions with owners and dates
   - Playbook, tests, docs, or template updates

## Output format

```md
# Feature Delivery Packet: <feature>

## Executive Summary
<what is changing and why>

## Problem and JTBD
...

## Scope and Non-goals
...

## Product Flow
...

## Technical Impact
...

## Data, Access, and Security
...

## Test and CI Plan
...

## Release, Rollout, and Rollback
...

## Post-launch Review Plan
...

## Open Questions
...
```
