---
description: Phase 3 — Generate a comprehensive 7-section Product Requirements Document from validated feature priorities.
argument-hint: Optional focus area to expand — e.g., "feature:auth" for a feature deep dive, or "flow:checkout" for user flow analysis
---

# Requirements Phase — PRD Generation

Invoke the `prd-generator` agent to produce `specs/prd.md`.

Before writing any output file, ensure the `specs/` directory exists (create it if it doesn't).

## Input
- `specs/feature-priorities.md` (required)
- `specs/market-opportunity.md` (recommended)
- $ARGUMENTS — optional feature or flow to deep-dive

## What the prd-generator Does
1. Reads all input files
2. Asks any critical gaps before writing (product name, primary user, success metric)
3. Wraps planning in `<prd_planning>` tags before writing the document
4. Generates a 7-section PRD: Executive Summary, Product Overview, Feature Requirements, User Interface, Technical Architecture, Non-Functional Requirements, Implementation Considerations
5. Presents a validation checklist and iterates if needed

## Special Modes
If $ARGUMENTS contains "feature:[name]" → generates a Feature Deep Dive for that feature
If $ARGUMENTS contains "flow:[name]" → generates a User Flow Analysis for that flow

## Output
`specs/prd.md` — complete Product Requirements Document

## Tip
The PRD is the most-revised document in the pipeline. If implementation, design, or security phases surface gaps, this is the artifact to loop back to. Use `needs-revision: [reason]` in the sprint state to track what needs updating.

## Next Steps
After completing this phase:
- Run `/spec-driven:techstack` to choose your technology stack
- Run `/spec-driven:appflow` to design the app structure
- Both use `specs/prd.md` as input and can run in parallel
- Or run `/spec-driven` to return to the orchestrator
