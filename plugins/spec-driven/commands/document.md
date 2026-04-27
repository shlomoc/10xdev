---
description: Phase 10 — Create technical documentation, user guides, API references, and maintenance procedures for a deployed application.
argument-hint: Optional document type — "architecture" for technical spec, "guide" for user guide, "api" for API reference, "maintenance" for ops procedures
---

# Documentation Phase

Invoke the `tech-doc-writer` agent to produce documentation.

## Input
- `specs/design-spec.md` — for technical documentation
- `specs/prd.md` — for user-facing documentation
- `specs/app-sitemap.md` — for user guide structure
- Deployed application — for accuracy verification
- $ARGUMENTS — optional document type

## Documentation Types

| Type | Best for | Primary input |
|------|----------|--------------|
| Architecture Summary | Engineers, technical stakeholders | `specs/design-spec.md` |
| User Guide | End users | `specs/prd.md`, `specs/app-sitemap.md` |
| API Reference | Developers building on your product | Source code |
| Maintenance Procedures | Operators, on-call engineers | `specs/implementation-steps.md` |
| Onboarding Guide | New team members | All of the above |

## Routing Based on $ARGUMENTS
- `"architecture"` or no argument with `specs/design-spec.md`: Technical Architecture Summary
- `"guide"`: User Guide
- `"api"`: API Reference
- `"maintenance"`: Maintenance Procedures
- `"all"`: Generate all document types

## Output
- `docs/architecture.md` — technical architecture summary
- `docs/user-guide.md` — user guide
- `docs/api-reference.md` — API reference
- `docs/maintenance.md` — maintenance procedures

## Quality Check
After writing, the tech-doc-writer will verify:
- All commands and code examples are accurate
- A new team member could use this to onboard
- No gaps (undocumented endpoints, missing setup steps)
- Organized for how people will search and use it

## Next Steps
After completing this phase:
- Run `/spec-driven:maintain` to collect user feedback and plan the next sprint
- Or run `/spec-driven` to return to the orchestrator
