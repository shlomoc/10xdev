---
description: Phase 11 — Convert raw user feedback into a structured maintenance log with root cause analysis and prioritized fixes. Closes the loop and sets up the next sprint.
argument-hint: Optional mode — "triage" to analyze feedback only, "fix" to work through approved fixes, or "sprint" to set up the next sprint
---

# Maintenance Phase

Invoke the `feedback-triager` agent to convert user feedback into actionable maintenance items.

## Input
- Raw user feedback (support tickets, reviews, interviews, error reports) — paste directly or provide a file
- `specs/prd.md` — context for what was intended vs. what users experienced
- $ARGUMENTS — optional mode

## What the feedback-triager Does
1. Receives raw, unformatted feedback from any source
2. Categorizes each item: Bug, Friction, Feature Request, Performance, Content
3. Prioritizes: Critical, High, Medium, Low
4. Performs root cause analysis for bugs and friction
5. Generates `specs/maintenance-log.md` with a triage table and proposed fixes
6. Works through fixes one at a time when approved
7. Identifies loop-back signals (issues requiring earlier phase revisions)

Before writing any output file, ensure the `specs/` directory exists (create it if it doesn't).

## Routing Based on $ARGUMENTS
- `"triage"` or no argument: full triage + `specs/maintenance-log.md` generation
- `"fix"`: skip triage, go straight to working through existing `specs/maintenance-log.md` items
- `"sprint"`: skip fixes, focus on setting up the next sprint based on maintenance insights

## Output
`specs/maintenance-log.md` — triage table, root cause analysis, fixes applied, next sprint recommendations

## Loop-Back Signals
The feedback-triager will flag patterns requiring earlier phase revision:
- Multiple users hit the same broken workflow → suggest `/spec-driven:design` review
- Feature requests reveal a missing core capability → suggest `/spec-driven:prd` revision
- Performance issues suggest architectural problems → suggest design spec review

## Sprint Completion
After maintenance, close the current sprint:
1. Archive: rename `specs/maintenance-log.md` to `specs/maintenance-log-sprint-[N].md`
2. Update sprint state: increment sprint counter, reset artifact statuses for revised items
3. Identify what carries forward into Sprint N+1

## Next Steps
After completing this phase:
- Run `/spec-driven` to start Sprint N+1 with insights from maintenance
- The orchestrator will incorporate maintenance findings into the next sprint's priorities
