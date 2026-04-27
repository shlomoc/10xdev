---
description: Phase 1 — Find market opportunities for a new SaaS product. Researches gaps, analyzes competitors, and produces market-opportunity.md.
argument-hint: Optional industry or domain to research (e.g., "healthcare scheduling" or "developer tools")
---

# Find Something to Build

Invoke the `market-opportunity-finder` agent to research market gaps and produce `specs/market-opportunity.md`.

Before writing any output file, ensure the `specs/` directory exists (create it if it doesn't).

## Input
$ARGUMENTS — optional industry, domain, or initial idea to research.

## What This Phase Does
The market-opportunity-finder agent will:
1. Ask about your domain interests, personal problems, and background
2. Research market gaps using web search
3. Analyze competitors and their weaknesses
4. Identify a specific underserved niche
5. Produce `specs/market-opportunity.md` with a full market analysis

## Output
`specs/market-opportunity.md` — market gap analysis, target audience, competitors, monetization options, roadmap to first $10k MRR.

## Next Steps
After completing this phase:
- Run `/spec-driven:plan` to refine the idea and prioritize features
- Or run `/spec-driven` to return to the orchestrator and update sprint state
