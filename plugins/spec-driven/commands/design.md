---
description: Phase 6 — Generate a comprehensive 12-section technical design specification. The architectural blueprint that bridges PRD and implementation.
argument-hint: Optional focus — "section:N" to regenerate a specific section, or "review" to review an existing design-spec.md
---

# Design Specification Phase

Invoke the `software-architect` agent to produce `specs/design-spec.md`.

Before writing any output file, ensure the `specs/` directory exists (create it if it doesn't).

## Input
- `specs/prd.md` (required)
- `specs/app-sitemap.md` (required)
- `specs/tech-stack.md` (required)
- $ARGUMENTS — optional focus for generation or review

## What the software-architect Does
1. Reads all three input documents
2. Wraps planning in `<specification_planning>` tags before writing — reasons through architecture, DB schema, data flows, and edge cases
3. Generates all 12 sections: System Overview, Project Structure, Feature Spec, DB Schema, Server Actions, Design System, Component Architecture, Auth, Data Flow, Payments, Analytics, Testing
4. Self-reviews for completeness before saving
5. Flags any ambiguities that need user input

## Special Modes
- `$ARGUMENTS = "review"`: reviews an existing `specs/design-spec.md` for completeness and flags gaps
- `$ARGUMENTS = "section:4"`: regenerates or expands Section 4 (DB Schema) only

## Output
`specs/design-spec.md` — complete 12-section technical specification

## Loop-Back Triggers to Watch For
This phase commonly surfaces issues that require looping back:
- **Tech stack mismatch**: the design reveals a better-fit database or service → loop to `/spec-driven:techstack`
- **PRD gaps**: features are underspecified → loop to `/spec-driven:prd`
- **Sitemap gaps**: new screens discovered during design → loop to `/spec-driven:appflow`

If any loop-backs are triggered, update the sprint state file before proceeding.

## Next Steps
After completing this phase:
- Run `/spec-driven:implement` to create the step-by-step implementation plan
- Or run `/spec-driven` to return to the orchestrator
