---
description: Phase 2 — Refine idea, prioritize features, and validate MVP demand. Produces features.md, feature-priorities.md, and MVP validation summary.
argument-hint: Optional starting point — "refine" to start idea refinement, "prioritize" to skip to prioritization, "validate" for MVP validation only
---

# Planning Phase

This phase has three sub-phases. Run them in sequence, or jump to a specific sub-phase using $ARGUMENTS.

Before writing any output file, ensure the `specs/` directory exists (create it if it doesn't).

## Sub-Phase 2a: Idea Refinement
**Agent**: `idea-refiner`
**Input**: `specs/market-opportunity.md` (from Phase 1) or a raw idea
**Output**: `specs/features.md`

The idea-refiner interviews you iteratively, asks targeted questions to sharpen scope, surfaces what you've missed, and produces a well-structured features document.

## Sub-Phase 2b: Feature Prioritization
**Agent**: `feature-prioritizer`
**Input**: `specs/features.md`
**Output**: `specs/feature-priorities.md`

The feature-prioritizer applies MoSCoW analysis + Impact-Effort matrix to produce a prioritized feature list with implementation sequence and quick wins identified.

## Sub-Phase 2c: MVP Validation
**Agent**: `mvp-validator`
**Input**: `specs/market-opportunity.md`, `specs/feature-priorities.md`
**Output**: Validation summary (appended to `specs/market-opportunity.md`)

The mvp-validator guides you through 7 validation steps (search volume, community research, landing page test, pre-commitments, user interviews) and produces a go/no-go recommendation.

## Routing

Based on $ARGUMENTS or current state:
- If no `specs/features.md` exists → start with idea-refiner
- If `specs/features.md` exists but no `specs/feature-priorities.md` → start with feature-prioritizer
- If both exist → start with mvp-validator
- If argument is "refine", "prioritize", or "validate" → jump to that sub-phase

## Next Steps
After completing this phase:
- Run `/spec-driven:prd` to generate the Product Requirements Document
- Or run `/spec-driven` to return to the orchestrator
