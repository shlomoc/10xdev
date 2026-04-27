# Agile Loop-Back Decision Guide

The spec-driven pipeline is not waterfall. Later phases frequently reveal that earlier artifacts need revision. This guide describes when to loop back and what to update.

## Loop-Back Trigger Matrix

| You are in... | You discover... | Loop back to | Update artifact |
|---------------|-----------------|--------------|-----------------|
| Plan (2) | Market research shows idea is not viable | Find (1) | `market-opportunity.md` |
| PRD (3) | MVP validation fails; demand is weak | Find (1) or Plan (2) | `market-opportunity.md` or `features.md` |
| App Flow (5) | Screens reveal PRD is incomplete | PRD (3) | `prd.md` |
| Design (6) | Architecture requires a different tech stack | Tech Stack (4) | `tech-stack.md` |
| Design (6) | PRD features are technically infeasible as written | PRD (3) | `prd.md` |
| Implement (7) | A required feature was never specced | PRD (3) | `prd.md` → `design-spec.md` |
| Implement (7) | DB schema conflicts with design spec | Design (6) | `design-spec.md` |
| Security (8) | Vulnerability requires architectural change | Design (6) | `design-spec.md` → `implementation-steps.md` |
| Security (8) | Auth flow is fundamentally broken | Design (6) or Implement (7) | `design-spec.md` |
| Maintain (11) | User feedback reveals high-demand missing feature | Plan (2) | start next sprint |
| Maintain (11) | Critical bug traces to design flaw | Design (6) | `design-spec.md` |

## When NOT to Loop Back

Don't loop back for:
- Minor wording changes in PRD (just update it inline)
- Small UI tweaks discovered in implementation (fix forward)
- Test failures that are implementation bugs (stay in implement phase)
- Documentation that needs updating (update it, don't restart design)

The rule: loop back when the gap is **architectural** or **product-defining**, not when it's a detail that can be resolved in the current phase.

## Sprint vs. Loop-Back

A **loop-back** within a sprint means revising an artifact and re-running a prior phase before finishing the current sprint.

A **new sprint** means the current sprint shipped something, and you're starting fresh from planning with new information. User feedback after launch almost always triggers a new sprint rather than a loop-back.

## Documenting Loop-Backs

When you loop back, record it in the state file:
```
## Loop-backs this sprint
- 2026-04-25: implement phase revealed missing webhook spec → looping to prd (phase 3)
```

This history helps future sprints avoid the same gap.

## The Minimum Viable Slice

If you're blocked on a loop-back and need to ship, use the minimum viable slice and treat the gap as a known constraint:

1. Document the gap in `prd.md` under "Known Constraints / v1 Limitations"
2. Add a corresponding item to `maintenance-log.md` as a planned v2 feature
3. Ship with the gap acknowledged
4. Loop back at the start of the next sprint

Never silently ship with a spec gap — always record it so the next sprint can address it.
