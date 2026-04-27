---
description: Phase 4 — Select and document the technology stack based on PRD requirements. Produces tech-stack.md with justified technology choices.
argument-hint: Optional constraint or preference — e.g., "python-backend", "no-vendor-lock-in", "mobile-first"
---

# Tech Stack Selection

Invoke the `tech-stack-selector` agent to produce `specs/tech-stack.md`.

Before writing any output file, ensure the `specs/` directory exists (create it if it doesn't).

## Input
- `specs/prd.md` (required)
- $ARGUMENTS — optional constraints or technology preferences

## What the tech-stack-selector Does
1. Reads the PRD to understand application type, scale, and integration needs
2. Asks about developer experience, budget constraints, and any technology preferences or restrictions
3. Recommends a technology for each category (framework, auth, database, payments, deployment, etc.)
4. Justifies each choice with specific reasons tied to the project
5. Notes key trade-offs and when you might deviate from the defaults
6. Provides a project structure outline and getting-started steps

## Reference Stack (Modern SaaS Default)
The agent knows this reference stack and will recommend it unless your requirements suggest otherwise:
- Next.js (App Router) + TypeScript
- Clerk (auth) + Supabase (database) + Stripe (payments) + Vercel (deployment)
- Tailwind CSS + Shadcn/UI + Resend (email) + PostHog (analytics)

## Output
`specs/tech-stack.md` — technology choices with justifications, environment variables needed, project structure, setup links.

## Next Steps
After completing this phase:
- Run `/spec-driven:appflow` to design the app structure (also uses `specs/prd.md`)
- Run `/spec-driven:design` once both `specs/tech-stack.md` and `specs/app-sitemap.md` are ready
- Or run `/spec-driven` to return to the orchestrator
