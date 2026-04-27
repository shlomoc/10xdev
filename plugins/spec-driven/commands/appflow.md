---
description: Phase 5 — Design app structure, navigation, and user flows. Produces app-sitemap.md with Mermaid diagrams and per-page specifications. Optionally produces UI concept and prototype prompts.
argument-hint: Optional focus — "sitemap" for structure only, "prototype" to also generate UI concept and prototype prompts
---

# App Flow Phase

This phase produces the app's structural blueprint and optionally its visual concept.

Before writing any output file, ensure the `specs/` directory exists (create it if it doesn't).

## Sub-Phase 5a: Sitemap & UX Design
**Agent**: `sitemap-architect`
**Input**: `specs/prd.md`, `specs/tech-stack.md`
**Output**: `specs/app-sitemap.md`

The sitemap-architect:
1. Asks 4-6 clarifying questions about user types, navigation, and key workflows
2. Produces an initial design doc with Mermaid sitemap + component hierarchy
3. Iterates with you until approved
4. Expands to full UX document with per-page user stories and acceptance criteria
5. Suggests 10 enhancement ideas

## Sub-Phase 5b: UI Concept (Optional)
**Agent**: `ui-prototyper`
**Input**: `specs/app-sitemap.md`, `specs/prd.md`
**Output**: `specs/ui-concept.md`

The ui-prototyper:
1. Presents 3-4 distinct visual approaches (minimalistic, modern, enterprise, warm)
2. Describes wireframe layouts for key screens
3. Generates ready-to-use prompts for Lovable.dev or UX Pilot

## Routing
- Default: run sitemap-architect, then offer ui-prototyper
- If $ARGUMENTS is "sitemap": run sitemap-architect only
- If $ARGUMENTS is "prototype": run ui-prototyper (assumes `specs/app-sitemap.md` exists)

## Output
- `specs/app-sitemap.md` — app structure with Mermaid diagram and page specifications
- `specs/ui-concept.md` (optional) — visual direction and prototype prompts

## Next Steps
After completing this phase:
- Run `/spec-driven:design` to create the full technical specification
- `specs/design-spec.md` needs both `specs/tech-stack.md` and `specs/app-sitemap.md` as input
- Or run `/spec-driven` to return to the orchestrator
