# Companion Setup Guide

Complete setup guide for projects built with the `spec-driven` plugin on the
reference Next.js + Supabase + Clerk + Stripe stack.

---

## CLAUDE.md Template

Create this file at the root of each new project. It points Claude at the
spec-driven artifacts, encodes pipeline rules, locks in stack-specific patterns,
and sets quality gates.

```markdown
# Project: [Name]

## Source of Truth
This project follows the spec-driven methodology. All decisions trace back to:
- `docs/spec-driven/state.md` — current sprint, artifact status
- `prd.md` — what we're building and for whom
- `design-spec.md` — how it's architected (DB schema, server actions, components)
- `implementation-steps.md` — atomic build plan, checked off as we go
- `maintenance-log.md` — open issues from user feedback

When ambiguity arises, read these files before guessing. If a spec is wrong or
missing, update the spec — don't code around it.

## Pipeline Rules
- Use `/spec-driven` to see sprint status and decide the next action.
- Each `/spec-*` command produces or updates exactly one artifact.
- When implementation surfaces a gap, loop back to the appropriate phase
  rather than patching forward.
- Mark steps in `implementation-steps.md` as `[x]` only after tests pass.

## Tech Stack Patterns
- Next.js App Router: prefer Server Components for data fetching;
  use Client Components only when state or events require it.
- Supabase: every mutation must use Server Actions; every read uses RLS.
  Never expose the service role key to the client bundle.
- Clerk: protect routes with middleware, not in-component checks. Sync user
  events via Clerk webhooks → `users` table.
- Stripe: all webhook handlers must be idempotent (use event.id as key).
  Never trust client-side price calculations — always recompute on server.
- Tailwind + Shadcn: extend the design system from `design-spec.md` Section 6;
  don't introduce new colors or spacing without updating it.

## Code Style
- Files under 500 lines. Split by feature (e.g., `stripe_webhooks.ts`),
  not by type (`utils.ts` is a smell).
- Descriptive names: `syncClerkUserToDb`, not `handleUser`.
- Server-side validation on every mutation. Client validation is UX only.
- TypeScript: no `any`. Use `unknown` and narrow.
- No `console.log` in committed code.

## Verification Discipline
- For every "done" claim, write or update one test and run it.
- Before marking an implementation step complete: `npm test && npm run build`.
- For UI changes: describe what to verify in the browser — type/test pass
  does not mean the feature works.

## Self-Reflection (after each task)
- Did I understand the requirement, or assume?
- Is the change reversible and minimal?
- What edge case did I not handle?
- Does this need an entry in `maintenance-log.md`?

## Subagent Usage
- For codebase exploration: use the code-explorer agent (feature-dev plugin).
- For PR review: run `/code-review` before merging.
- For root-cause debugging: invoke the `debugger` agent — its
  hypothesis-first flow finds real causes instead of guessing.
- Parallelize independent agents; never let two agents edit the same file.
```

---

## Companion Plugins (priority order)

Install with `/plugin install <name>@claude-plugins-official` unless noted.

| Plugin | Why |
|--------|-----|
| `code-review` | Multi-agent PR review; used in Phase 7 (implement) |
| `vercel` | MCP integration for deploys, logs, env vars; used in Phase 9 |
| `security-guidance` | PreToolUse hook — ambient warnings on XSS/injection |
| `context7` | Pulls current Next.js/Supabase/Clerk/Stripe docs into context |
| `commit-commands` | `/commit`, `/commit-push-pr` — cleaner git workflow |
| `github` | Issue and PR management without leaving Claude Code |
| `playwright` | E2E tests called out in design-spec Section 12 |
| `supabase` | Run SQL, manage RLS policies, debug queries directly |
| `stripe` | Webhook + product setup; install with `/plugin install stripe@stripe` |
| `frontend-design` | Visual quality during Phases 5 and 7 — avoids generic AI aesthetics |

---

## Recommended Skills

| Skill | When it fires |
|-------|--------------|
| `skill-creator` | When you want to extract a recurring workflow into a reusable skill |
| `roadmap-builder` | Pairs with the `feature-prioritizer` agent in Phase 2 |
| `simplify` | Sweep Phase 7 output before merging — catches over-engineering |
| `marketing-writer` | Phase 9 — landing page copy and launch announcements |
| `test-first` | TDD mode in Phase 7 — write tests before implementation |

---

## Recommended Hook: Protect Migrations and Secrets

Add to `.claude/settings.json` in each project to prevent the most common
footguns on the reference stack:

```json
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Edit|Write",
        "hooks": [
          {
            "type": "command",
            "command": "python3 -c \"\nimport json, sys\ntool = json.load(sys.stdin)\npath = tool.get('tool_input', {}).get('file_path', '')\nif '.env.local' in path:\n    print('Block: edit .env.local manually; never commit secrets.')\n    sys.exit(1)\nif '/migrations/' in path and path.endswith('.sql'):\n    print('Block: use supabase migration new, not direct edits to migration files.')\n    sys.exit(1)\n\""
          }
        ]
      }
    ]
  }
}
```

This runs on every `Edit` or `Write` and blocks direct edits to `.env.local`
(secrets should never be in committed files) and SQL migration files (should
always be created via `supabase migration new` to get proper timestamps).

---

## Quick-Start Checklist (new project)

- [ ] Run `/spec-driven [ProjectName]` — creates state file, shows dashboard
- [ ] Copy CLAUDE.md template above into project root, fill in project name
- [ ] Install companion plugins (code-review, vercel, security-guidance, context7 at minimum)
- [ ] Add the migration/secrets hook to `.claude/settings.json`
- [ ] Create accounts: Clerk, Supabase, Stripe, Vercel, Resend, PostHog
- [ ] Run `/spec-prd` to generate your first artifact
