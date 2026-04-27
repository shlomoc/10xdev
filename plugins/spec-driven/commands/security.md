---
description: Phase 8 — Comprehensive 3-phase security audit. Scans for vulnerabilities, produces a risk analysis with fix plan, and applies minimal targeted fixes with before/after diffs.
argument-hint: Optional scope — "scan" for Phase 1 only (report, no fixes), "fix" to apply pre-identified fixes, or a specific focus like "auth" or "api"
---

# Security Phase

Invoke the `security-auditor` agent to audit the codebase and produce `specs/security-audit.md`.

Before writing any output file, ensure the `specs/` directory exists (create it if it doesn't).

## Input
- Codebase (full access)
- `specs/tech-stack.md` (for integration-specific security checks)
- $ARGUMENTS — optional scope restriction

## Three-Phase Approach

**Phase 1: Codebase Scan** — flag vulnerabilities with file:line, description, and priority (Critical/High/Medium/Low)

**Phase 2: Risk Analysis + Fix Plan** — for each vulnerability: explain the exploit vector, recommend the smallest fix, get user approval before making changes

**Phase 3: Secure Fixes** — apply approved fixes with before/after diffs, verify no regressions

## What Gets Checked
- Auth flows (bypass vectors, session handling, JWT expiry)
- API endpoints and server actions (missing auth, IDOR)
- Database queries (SQL injection, missing RLS policies)
- Secrets and environment variables (hardcoded credentials)
- User input handling (XSS, missing server-side validation, file uploads)
- Error handling (stack traces in responses, info leakage)
- Rate limiting (auth endpoints, expensive operations)
- Security headers (CORS, CSP, HSTS)

## Routing
- `$ARGUMENTS = "scan"`: Phase 1 only — report findings, no fixes applied
- `$ARGUMENTS = "fix"`: Skip to Phase 3 (assumes Phase 1+2 already done, report exists)
- `$ARGUMENTS = "auth"` or other focus: restrict scan to that area

## Output
`specs/security-audit.md` — vulnerability report with risk analysis and applied fixes

## Loop-Back Triggers
- Critical vulnerability requires architectural change → loop to `/spec-driven:design`
- Broken auth flow that can't be patched → loop to `/spec-driven:design` section 8
- IDOR from missing authorization model → loop to `/spec-driven:design` or `/spec-driven:prd`

## Next Steps
After completing this phase:
- Run `/spec-driven:deploy` to deploy the application
- Or run `/spec-driven` to return to the orchestrator
