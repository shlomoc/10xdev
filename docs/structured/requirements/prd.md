---
title: PRD Creation
description: Create comprehensive Product Requirements Documents for your SaaS application
---

# PRD Creation Prompt

## Purpose
Create a a detailed Product Requirements Document (PRD) that clearly defines your product's features, requirements, and specifications.

## Input
- `market-opportunity.md` from previous step
- `feature-priorities.md` - Your prioritized feature list
- Product name and basic description
- Target audience information

## The Prompt

```md
Help create a comprehensive Product Requirements Document (PRD) for my SaaS application.

# Input
Please review my `feature-priorities.md` file or the following information:

Product Name: `{{PRODUCT NAME}}`
Product Description: [2-3 SENTENCE DESCRIPTION]
Target Audience: [PRIMARY USER TYPES]
Prioritized Features: [FEATURE LIST FROM `feature-priorities.md`]

Please create a detailed PRD following this structure:

1. Executive Summary
   - Product Vision
   - Business Objectives
   - Success Metrics

2. Product Overview
   - Problem Statement
   - Solution Overview
   - Target Users
   - User Personas
   - User Journey Maps

3. Feature Requirements
   - Core Features
   - Feature Specifications
   - User Stories
   - Acceptance Criteria
   - Technical Requirements

4. User Interface
   - Information Architecture
   - User Flow Diagrams
   - Key Screens
   - Design Requirements
   - Accessibility Requirements

5. Technical Architecture
   - System Components
   - Data Models
   - API Requirements
   - Integration Points
   - Security Requirements

6. Non-Functional Requirements
   - Performance Requirements
   - Scalability Requirements
   - Security Requirements
   - Compliance Requirements
   - Browser/Device Support

7. Implementation Considerations
   - Dependencies
   - Constraints
   - Risks and Mitigations
   - Timeline Estimates
   - Resource Requirements

Reflection:
- Justify the inclusion of each requirement.
- Consider potential challenges and propose mitigation strategies.
- Reflect on how each element contributes to the overall project goals.

# Output
Please provide detailed specifications for each section while maintaining clarity and actionability. The final document will be saved as `project-prd.md` for reference during development.
```

## How to Use

1. Provide your `feature-priorities.md` file or the prioritized feature information
2. Replace the placeholder information with your product details
3. Be specific about your target audience and use cases
4. Include any specific technical requirements or constraints
5. Save the output as `project-prd.md` for the next step

## Example

```prompt
Help create a comprehensive Product Requirements Document (PRD) for my SaaS application.

# Input
Please review my `feature-priorities.md` file or the following information:

Product Name: TaskMaster Pro
Product Description: A project management tool for remote development teams that integrates with popular version control systems and communication tools. It focuses on automated task tracking and progress visualization.
Target Audience: Software development teams, project managers, and technical team leads
Prioritized Features:
- Must Have: User authentication, Project dashboard, Task management
- Should Have: File upload, Team collaboration, Notifications
- Could Have: API integration, Custom reporting
- Won't Have: Video conferencing, Mobile apps (v1)

[Rest of the prompt remains the same...]
```

## Output
- `project-prd.md` - A comprehensive Product Requirements Document that defines all aspects of your product

## PRD Best Practices

### 1. Clarity and Precision
- Use clear, unambiguous language
- Define technical terms
- Provide specific examples
- Include measurable criteria

### 2. Completeness
- Cover all essential aspects
- Address edge cases
- Include error scenarios
- Define success criteria

### 3. Traceability
- Link requirements to business goals
- Connect features to user needs
- Reference related documents
- Track requirement changes

### 4. Feasibility
- Validate technical feasibility
- Consider resource constraints
- Account for timeline limitations
- Address potential risks

## Follow-up Prompts

### 1. Feature Deep Dive
```prompt
Please provide detailed specifications for the following feature:
[FEATURE NAME]
Include:
- User stories
- Technical requirements
- API specifications
- Data models
- UI/UX requirements
```

### 2. User Flow Analysis
```prompt
Please create detailed user flow diagrams for:
[USER SCENARIO]
Include:
- Step-by-step actions
- System responses
- Error scenarios
- Success criteria
```

## Validation Checklist

Before finalizing your PRD, ensure:

- [ ] All sections are complete and detailed
- [ ] Requirements are clear and measurable
- [ ] Technical specifications are feasible
- [ ] User scenarios are comprehensive
- [ ] Success criteria are defined
- [ ] Risks and mitigations are addressed
- [ ] Stakeholder feedback is incorporated

## Tips for Better Results

1. **Start Broad**: Begin with high-level requirements before diving into details
2. **User-Centric**: Always tie requirements back to user needs
3. **Be Specific**: Avoid vague or ambiguous requirements
4. **Stay Realistic**: Ensure requirements are achievable within constraints
5. **Include Context**: Provide background information where needed
6. **Consider Scale**: Think about how requirements will scale
7. **Document Assumptions**: Clearly state any assumptions made 

## Next Steps
After completing your PRD:
1. Proceed to [Tech Stack](../tech-stack/index.md) and [App Flow](../appflow/index.md) using your `project-prd.md` as input