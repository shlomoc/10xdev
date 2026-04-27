# PRD Section Detail Reference

Detailed guidance for each of the 7 PRD sections.

## Section 1: Executive Summary

**Product Vision**: One sentence that captures what the product is and for whom. Example: "TaskMaster Pro helps remote development teams automatically track progress across GitHub and Slack."

**Business Objectives**: 2-3 measurable goals tied to revenue or user outcomes. Avoid generic objectives like "be the best."
- Example: Reach 500 active teams within 6 months of launch
- Example: Achieve < 3-minute onboarding time
- Example: Generate $10k MRR within 9 months

**Success Metrics**: KPIs that tell you whether you've achieved the objectives.
- Daily/Monthly Active Users
- Activation rate (% who complete core action in first session)
- Retention (Day 7, Day 30)
- NPS score
- Revenue metrics

---

## Section 2: Product Overview

**Problem Statement**: Describe the pain point without mentioning your solution. Who feels it? How often? How bad is it?

**Solution Overview**: 2-3 sentences describing how your product solves the problem. Avoid feature lists here — that's Section 3.

**User Personas**: For each persona:
- Name (fictional but realistic)
- Role / job title
- Technical level
- Primary goals
- Key pain points
- How they'll use your product

**User Journey Maps**: For each persona's core journey:
- Entry point (how they find/start using the product)
- Key milestones
- Decision points
- Exit point (job done or churn trigger)

---

## Section 3: Feature Requirements

Structure each feature with:
- **User Story**: "As a [persona], I want to [action] so that [benefit]"
- **Acceptance Criteria**: Bullet list of testable conditions using "given/when/then" or plain English
- **Technical Requirements**: Constraints, dependencies, integrations needed

Group features by MoSCoW priority from `feature-priorities.md`. Only include Must Have and Should Have in v1 PRD.

---

## Section 4: User Interface

**Information Architecture**: Hierarchical list of pages/screens with their content.

**User Flows**: Numbered step sequences showing how users move through key tasks. Use Mermaid flowchart syntax if possible.

**Key Screens**: List the screens that need to exist. Brief description of each.

**Design Requirements**: Brand guidelines, color constraints, existing design system to match.

**Accessibility**: State target WCAG level (typically AA). Note screen reader, keyboard nav, color contrast requirements.

---

## Section 5: Technical Architecture

Keep this high-level in the PRD — the detailed spec goes in `design-spec.md`. Cover:
- What services the system needs (auth, DB, file storage, payments, email, analytics)
- Key API integrations (name the third-party services)
- Data sensitivity level (affects security requirements)
- Real-time vs batch data needs

---

## Section 6: Non-Functional Requirements

Be specific and measurable:
- Performance: "API responses under 200ms at p95 for authenticated requests"
- Scalability: "Handle 1000 concurrent users at launch; 10x growth within 12 months"
- Security: "SOC 2 Type I within 12 months; no PII logged in application logs"
- Browser support: "Chrome 90+, Firefox 88+, Safari 14+, Edge 90+; mobile responsive"

---

## Section 7: Implementation Considerations

**Dependencies**: External services that must be set up before launch (Stripe, Clerk, Supabase, Resend, PostHog).

**Constraints**: Hard limits on the project.
- Budget: $X for infrastructure in first 6 months
- Team: solo developer or N-person team
- Timeline: hard deadline?

**Risks and Mitigations**: For each risk: what could go wrong, how likely, how severe, how to mitigate.
- Risk: Stripe webhooks are unreliable → Mitigation: implement idempotency keys + webhook retry logic
- Risk: Auth provider outage → Mitigation: fallback email/password auth

**Timeline Estimates**: Rough weeks-per-phase estimate. This becomes more detailed in `implementation-steps.md`.
