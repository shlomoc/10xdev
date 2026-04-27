---
description: Phase 7 — Plan and execute implementation. Creates a step-by-step implementation plan, then executes each step iteratively. Includes code review guidance and debugging support.
argument-hint: Optional mode — "plan" to generate implementation-steps.md only, "code" to implement next step, "debug" to invoke the debugger, or a step number like "step:5" to jump to a specific step
---

# Implementation Phase

This phase has four sub-phases. The default is to run them in sequence.

Before writing any output file, ensure the `specs/` directory exists (create it if it doesn't).

## Sub-Phase 7a: Implementation Planning
**Agent**: `implementation-planner`
**Input**: `specs/design-spec.md`, `specs/prd.md`, `specs/app-sitemap.md`, `specs/tech-stack.md`
**Output**: `specs/implementation-steps.md`

Produces an atomic, sequenced step list where each step specifies:
- What to implement
- Which files to create or modify (max 20)
- Step dependencies
- Any manual user instructions (env setup, SQL scripts, etc.)

## Sub-Phase 7b: Code Generation
**Agent**: `feature-implementer`
**Input**: `specs/implementation-steps.md` + codebase
**Output**: Functional code, updated tests

The feature-implementer picks up the next `- [ ]` step, implements it, updates tests, marks the step done, and pauses for user review. One step at a time.

## Sub-Phase 7c: Code Review
**Recommendation**: Use the official `code-review` plugin for thorough PR review.

```
/code-review    # Reviews current branch changes
```

The `code-review` plugin uses multiple specialized agents with confidence-based scoring to filter false positives — it's more thorough than a single-agent review.

## Sub-Phase 7d: Debugging
**Agent**: `debugger`
**Trigger**: Use when you encounter a bug, error, or unexpected behavior

The debugger generates 4-6 hypotheses about the root cause, distills to 1-2 most probable, adds diagnostic logs to validate, then implements a targeted fix.

## Routing Based on $ARGUMENTS
- `$ARGUMENTS = "plan"`: invoke implementation-planner only
- `$ARGUMENTS = "code"` or no argument with `specs/implementation-steps.md` present: invoke feature-implementer
- `$ARGUMENTS = "debug"`: invoke debugger
- `$ARGUMENTS = "step:N"`: invoke feature-implementer and jump to step N

## Loop-Back Triggers to Watch For
- Feature spec is ambiguous or missing → loop to `/spec-driven:design` or `/spec-driven:prd`
- DB schema conflicts with server actions → loop to `/spec-driven:design`
- A required integration isn't in the tech stack → loop to `/spec-driven:techstack`

Update the sprint state file when loop-backs are triggered.

## Next Steps
After completing this phase:
- Run `/spec-driven:security` to audit the codebase for vulnerabilities
- Or run `/spec-driven` to return to the orchestrator
