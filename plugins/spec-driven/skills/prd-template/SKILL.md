---
name: prd-template
description: PRD (Product Requirements Document) template and writing guide. Load this skill when generating, reviewing, or refining a Product Requirements Document for any software project. Provides the 7-section structure, best practices, validation checklist, and follow-up prompts for deep-diving feature specs and user flows.
---

# PRD Template

A Product Requirements Document formalizes your validated concept before any code is written. It becomes the single source of truth for all downstream phases (tech stack, design, implementation).

## 7-Section Structure

```markdown
# [Product Name] PRD

## 1. Executive Summary
- Product Vision: [one sentence]
- Business Objectives: [2-3 measurable goals]
- Success Metrics: [KPIs]

## 2. Product Overview
- Problem Statement
- Solution Overview
- Target Users
- User Personas (name, role, goals, pain points)
- User Journey Maps

## 3. Feature Requirements
For each feature:
### 3.N Feature Name
- User Story: As a [user], I want to [action] so that [benefit]
- Acceptance Criteria: [bulleted, testable conditions]
- Technical Requirements: [constraints, integrations]

## 4. User Interface
- Information Architecture
- User Flow Diagrams
- Key Screens
- Design Requirements (brand, accessibility)
- Accessibility Requirements (WCAG level)

## 5. Technical Architecture
- System Components
- Data Models (high-level)
- API Requirements
- Integration Points (auth, payments, email, analytics)
- Security Requirements

## 6. Non-Functional Requirements
- Performance: [response time targets]
- Scalability: [expected load]
- Security: [compliance, data sensitivity]
- Compliance: [GDPR, CCPA, etc.]
- Browser/Device Support

## 7. Implementation Considerations
- Dependencies (external services, APIs)
- Constraints (budget, timeline, team)
- Risks and Mitigations
- Timeline Estimates
- Resource Requirements
```

## Best Practices

1. **Clarity**: Use unambiguous language; define technical terms
2. **Completeness**: Cover edge cases, error scenarios, success criteria
3. **Traceability**: Link requirements to business goals
4. **Feasibility**: Validate technical feasibility before finalizing
5. **User-Centric**: Always tie requirements to user needs
6. **Specificity**: Avoid vague requirements — make them measurable
7. **Document Assumptions**: Explicitly state what you're assuming

## Validation Checklist

Before calling the PRD complete:
- [ ] All 7 sections present and detailed
- [ ] Requirements are clear and measurable
- [ ] Technical specifications are feasible
- [ ] User scenarios are comprehensive
- [ ] Success criteria are defined
- [ ] Risks and mitigations are addressed
- [ ] Stakeholder feedback is incorporated

## Follow-Up Prompts

### Feature Deep Dive
```
Please provide detailed specifications for [FEATURE NAME]:
- User stories
- Technical requirements
- API specifications
- Data models
- UI/UX requirements
```

### User Flow Analysis
```
Please create detailed user flow for [USER SCENARIO]:
- Step-by-step actions
- System responses
- Error scenarios
- Success criteria
```

## Reflection Prompt

After generating the PRD, ask:
- Is each requirement justified? Remove any that aren't tied to a user need.
- What could prevent us from building this? Add to risks section.
- Is there anything missing that the tech stack or design phase will need?
