---
name: spec-driven
description: Spec-driven agile development methodology. Load this skill when starting a new project, asking how to structure development, wondering what to build next, or wanting to replace vibe coding with a structured process. Covers all 12 phases from idea discovery to maintenance, with loop-back support when later phases reveal earlier assumptions were wrong.
---

# Spec-Driven Development

A structured, iterative methodology that replaces impulsive "vibe coding" with a pipeline of artifacts — each feeding the next, but designed to loop back when reality reshapes earlier assumptions.

## Core Philosophy

Write the spec before you write the code. Each phase produces a document that becomes the input for the next. Later phases (implementation, security, maintenance) frequently reveal gaps in earlier ones — the orchestrator supports returning to any prior phase rather than patching over the gap.

## The 12 Phases

```
find → plan → prd → tech-stack → appflow → design → implement → security → deploy → document → maintain → (loop back)
```

Each phase has a dedicated slash command and one or more specialized subagents. Use them independently or run `/spec-driven` to orchestrate the full pipeline with sprint tracking.

| Phase | Slash command | Output artifact | Subagent(s) |
|-------|--------------|-----------------|-------------|
| 1. Find | `/spec-find` | `market-opportunity.md` | market-opportunity-finder |
| 2. Plan | `/spec-plan` | `features.md`, `feature-priorities.md` | idea-refiner, feature-prioritizer, mvp-validator |
| 3. PRD | `/spec-prd` | `prd.md` | prd-generator |
| 4. Tech Stack | `/spec-techstack` | `tech-stack.md` | tech-stack-selector |
| 5. App Flow | `/spec-appflow` | `app-sitemap.md`, wireframes | sitemap-architect, ui-prototyper |
| 6. Design | `/spec-design` | `design-spec.md` | software-architect |
| 7. Implement | `/spec-implement` | `implementation-steps.md`, code | implementation-planner, feature-implementer, debugger |
| 8. Security | `/spec-security` | `security-audit.md` | security-auditor |
| 9. Deploy | `/spec-deploy` | deployed app | (uses official `vercel` plugin or your deploy tool) |
| 10. Document | `/spec-document` | docs/ | tech-doc-writer |
| 11. Maintain | `/spec-maintain` | `maintenance-log.md` | feedback-triager |

## Agile Loop-Backs

Unlike waterfall, this process is designed to loop. Common triggers:

- **Implementation → PRD**: missing feature spec discovered while coding
- **Design → Tech Stack**: spec reveals architectural mismatch
- **Security → Design**: vulnerability requires architectural fix (not just a patch)
- **Maintenance → Planning**: user feedback reveals new feature demand
- **MVP Validation fails → Find or Plan**: demand signal is weak

The `/spec-driven` orchestrator tracks a sprint state file and surfaces loop-back opportunities at the end of each phase.

## Minimum Viable Sprint

You don't have to complete all 12 phases before shipping. The smallest useful slice is:

```
prd → design → implement → deploy
```

Add other phases as the project matures.

## Companion Plugins

For the best experience, also install:
- `code-review` — deep PR review (used in the implement phase)
- `vercel` — deploy to Vercel (used in the deploy phase)
- `security-guidance` — PreToolUse security hook (ambient guardrail)

See `references/phases.md` for detailed phase descriptions, `references/artifacts.md` for artifact format specs, `references/agile-loops.md` for loop-back decision criteria, and `references/companion-setup.md` for the recommended CLAUDE.md template, companion plugins, skills, and quick-start checklist.
