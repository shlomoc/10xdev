---
description: Phase 9 — Pre-deployment checklist and deployment guidance. Verifies everything is ready to deploy and recommends the right deployment tool for your stack.
argument-hint: Optional platform — "vercel", "railway", "fly", or "aws"
---

# Deployment Phase

Run through the pre-deployment checklist, then deploy using your platform of choice.

## Pre-Deployment Checklist

Run through these items before deploying:

### Code Quality
- [ ] All `specs/implementation-steps.md` items are marked `[x]` (or deferred with reasoning)
- [ ] No uncommitted changes (`git status` shows clean)
- [ ] Build passes locally: `npm run build`
- [ ] All tests passing: `npm test`
- [ ] No `console.log` left in production code
- [ ] No hardcoded secrets (run: `grep -r "sk_live\|api_key\|password" src/ --include="*.ts"`)

### Security
- [ ] `specs/security-audit.md` exists and Critical/High items are resolved
- [ ] Environment variables are not committed to git (check `.gitignore`)
- [ ] Rate limiting is in place for auth endpoints

### Configuration
- [ ] All environment variables are set in the deployment platform
- [ ] Domain is configured (custom domain or platform subdomain)
- [ ] CORS is configured correctly for production domain
- [ ] Analytics tracking is enabled (PostHog or equivalent)

### Database
- [ ] All migrations are applied to the production database
- [ ] Row-Level Security policies are enabled and tested
- [ ] Backup strategy is in place (if not handled by platform)

## Deployment by Platform

### Vercel (Recommended for Next.js)
Install and use the official Vercel Claude plugin from its own marketplace if available, or deploy manually with the Vercel CLI below.

The Vercel plugin provides: deployment status, build logs, environment variable management, domain configuration, and rollback support.

### Railway
Use Railway's official deployment tooling or plugin if available in your configured Claude Code marketplaces.

### Manual Vercel CLI Deployment
```bash
# Install Vercel CLI
npm i -g vercel

# Login
vercel login

# Deploy (first time — follow prompts)
vercel

# Deploy to production
vercel --prod
```

## Post-Deployment Verification
After deploying:
- [ ] App loads at the production URL
- [ ] Sign up / sign in flow works
- [ ] Core product action works end-to-end
- [ ] Payment flow works (test mode first, then live)
- [ ] Emails are sending (Resend test send)
- [ ] Analytics events are firing (check PostHog live view)
- [ ] Error monitoring is active

## Next Steps
After completing this phase:
- Run `/spec-driven:document` to create technical and user documentation
- Or run `/spec-driven` to return to the orchestrator
