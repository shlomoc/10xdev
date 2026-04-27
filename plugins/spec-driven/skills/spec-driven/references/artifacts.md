# Artifact Reference

Each phase produces one or more artifact files. These files live in the project root (or a `docs/` subfolder) and chain together as inputs to later phases.

## Artifact Chain

```
market-opportunity.md
    └── features.md
        └── feature-priorities.md
            └── prd.md
                ├── tech-stack.md
                └── app-sitemap.md
                    └── design-spec.md
                        └── implementation-steps.md
                            └── [code]
                                └── security-audit.md
                                    └── [deployed app]
                                        └── docs/
                                            └── maintenance-log.md
                                                └── (next sprint)
```

## Artifact Formats

### `market-opportunity.md`
```markdown
# Market Opportunity
## Gap Identified
## Target Audience
## Market Size Signals
## Competitor Weaknesses
## Monetization Options
## Roadmap to First $10k
```

### `features.md`
```markdown
# Project Name
## Market Opportunity
## Project Description
## Target Audience
## Desired Features
### [Feature Category]
- [ ] [Requirement]
## Design Requests
## Other Notes
```

### `feature-priorities.md`
```markdown
# Feature Priorities
## Must Have (MVP Critical)
- [feature]: [rationale]
## Should Have
## Could Have
## Won't Have (v1 Scope)
## Implementation Sequence
## Quick Wins (High Impact, Low Effort)
```

### `prd.md`
7 sections: Executive Summary, Product Overview, Feature Requirements, User Interface, Technical Architecture, Non-Functional Requirements, Implementation Considerations.

### `tech-stack.md`
Table of chosen technologies per category, with justification per choice and project structure outline.

### `app-sitemap.md`
- Mermaid sitemap diagram
- Component hierarchy
- Page-by-page breakdown with user stories and acceptance criteria

### `design-spec.md`
12 sections: System Overview, Project Structure, Feature Spec, DB Schema, Server Actions, Design System, Component Architecture, Auth, Data Flow, Stripe, Analytics, Testing.

### `implementation-steps.md`
Atomic step list:
```
- [ ] Step N: [title]
  - Task: ...
  - Files: [path/file.ts]: [description]
  - Step Dependencies: [step numbers]
  - User Instructions: [manual steps if any]
```

### `security-audit.md`
- Phase 1: Vulnerability list with file:line, explanation, priority
- Phase 2: Risk analysis and fix plan per issue
- Phase 3: Before/after diffs for applied fixes

### `maintenance-log.md`
```markdown
# Maintenance Log — Sprint N
## User Feedback
[raw or summarized feedback]
## Root Cause Analysis
| # | Feedback | Root Cause | Proposed Fix | Status |
|---|----------|-----------|--------------|--------|
## Fixes Applied
## Open Items for Next Sprint
```

## State File: `docs/spec-driven/state.md`

Maintained by the `/spec-driven` orchestrator:
```markdown
# Spec-Driven State
Project: [name]
Sprint: [N]
Current phase: [phase name]

## Artifacts
- [x] artifact.md (sprint N, approved)
- [~] artifact.md (sprint N, needs-revision: [reason])
- [ ] artifact.md

## Loop-backs this sprint
- [date]: [reason] → looping to [phase]
```
