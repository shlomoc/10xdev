# Phase Reference

## Phase 1: Find Something to Build

**Goal:** Identify market opportunities before committing to an idea.

**Key questions:**
- What gap exists? Why is it unmet? Who has this need?
- Are there enough people to make it worthwhile?
- What are competitors' weaknesses?
- Can I solve my own problem first?

**Research tools:** Perplexity Deep Research, ChatGPT Deep Search, IdeaPicker (Reddit pain-point scanner), App Ideas (readytobuild.app).

**Output:** `market-opportunity.md`

---

## Phase 2: Planning

Three sub-phases:

### 2a. Idea Refinement
Iterative AI interview that returns a structured spec after each exchange:
`Project Name / Market Opportunity / Description / Target Audience / Desired Features / Design Requests / Other Notes`

Output: `features.md`

### 2b. Feature Prioritization
MoSCoW analysis + Impact-Effort matrix (quadrant chart). Categories: Must Have (MVP critical), Should Have (important), Could Have (nice to have), Won't Have (out of scope).

For each Must/Should feature: User Impact (H/M/L), Development Effort (H/M/L), Technical Risk, Dependencies.

Output: `feature-priorities.md`

### 2c. MVP Validation
7-step validation before building:
1. Understand common pitfalls ("if I need it, others will too" is usually wrong)
2. Reframe: "who has this problem and how are they solving it today?"
3. Search volume check (Google Keyword Planner)
4. Create validation landing page with email signup
5. Drive traffic (social media, community posts)
6. Secure pre-commitments (pre-sell, paid waitlist)
7. Conduct user interviews

**Validation checklist:** proof of demand, landing page signups, pre-commitments, user conversations, willingness to pay.

---

## Phase 3: Requirements (PRD)

7-section Product Requirements Document:
1. Executive Summary (vision, objectives, success metrics)
2. Product Overview (problem, solution, personas, journey maps)
3. Feature Requirements (user stories, acceptance criteria, tech requirements)
4. User Interface (information architecture, flows, screens, accessibility)
5. Technical Architecture (components, data models, APIs, integrations, security)
6. Non-Functional Requirements (performance, scalability, compliance, device support)
7. Implementation Considerations (dependencies, risks, timeline, resources)

---

## Phase 4: Tech Stack

Research and document technology choices:
- Frontend framework
- Backend services
- Database
- Authentication
- Payments
- Deployment
- Email
- UI components
- Testing frameworks

Reference stack: Next.js (App Router) + Clerk + Supabase + Tailwind + Stripe + Shadcn/UI + Vercel + Resend

---

## Phase 5: App Flow

### 5a. Sitemap & Design Doc (interactive)
7-step AI conversation:
1. AI asks 4-6 clarifying questions
2. Draft design doc: High-Level UI/UX, Sitemap (Mermaid diagram), Component Hierarchy
3. User approval loop
4. Full UX/UI doc: page-by-page breakdown with user stories, acceptance criteria, tech notes
5. Final approval loop
6. 10 enhancement recommendations

Output: `app-sitemap.md`

### 5b. UI Prototype
1. UI Concept Exploration: 3-4 visual approaches (minimalistic, colorful, modern, etc.)
2. Wireframe Generation: UX Pilot, Claude Design
3. Optional prototype: Lovable.dev or SnapPrompt

---

## Phase 6: Design Specification

AI as software architect — generates a 12-section technical blueprint:
1. System Overview
2. Project Structure
3. Feature Specification
4. Database Schema
5. Server Actions
6. Design System
7. Component Architecture
8. Authentication & Authorization
9. Data Flow
10. Stripe Integration
11. PostHog Analytics
12. Testing Strategy

The architect wraps planning in `<specification_planning>` tags, then outputs the full markdown spec.

Output: `design-spec.md`

---

## Phase 7: Implementation

### 7a. Implementation Planning
Breaks design-spec into atomic steps:
```
- [ ] Step N: [title]
  - Task: [what to implement]
  - Files: [max 20 files]
  - Step Dependencies: [prior steps]
  - User Instructions: [manual steps]
```

Output: `implementation-steps.md`

### 7b. Code Generation
Iterative loop: identify next `- [ ]` step → implement → update tests → mark done.

### 7c. Code Review
Defer to the official `code-review` plugin for thorough PR review.

### 7d. Debugging
Root cause analysis: theorize 4-6 possible sources → distill to 1-2 most probable → add logs to validate → fix.

---

## Phase 8: Security

3-phase security audit:
1. **Codebase Scan**: auth flows, API endpoints, DB queries, env vars, user input — flag with file:line, explanation, priority (Critical/High/Medium/Low)
2. **Risk Analysis + Fix Plan**: explain vulnerability, describe exploit, recommend smallest fix
3. **Secure Fixes**: minimal changes, before/after diff, verify no regressions

Focus areas: leaked credentials, missing rate limits, broken auth, IDOR, missing server-side validation, poor error handling, sensitive data exposure.

Output: `security-audit.md`

---

## Phase 9: Deployment

Pre-deploy checklist:
- [ ] All tests passing
- [ ] No uncommitted changes
- [ ] Environment variables set in deployment platform
- [ ] Build passes locally (`npm run build`)
- [ ] Domain configured
- [ ] Monitoring/alerting set up

Use the official `vercel` plugin (or your preferred deployment tool) for actual deployment.

---

## Phase 10: Documentation

Technical documentation writer produces:
- Technical architecture summary
- User guides
- API endpoint documentation
- Maintenance procedures

Format: H1 title, H2 major sections, H3 subsections, bullet lists, bold key terms, code blocks, block quotes.

---

## Phase 11: Feedback & Maintenance

1. Collect all user feedback
2. Generate `maintenance-log.md` with root causes and proposed fixes
3. Implement fixes one item at a time
4. Review final commits (CodeRabbit, code-review plugin)
5. Loop back to planning for next sprint
