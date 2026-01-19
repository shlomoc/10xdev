# Design Spec Prompt – AI as Your Software Architect

## Purpose
Generate comprehensive technical specifications that serve as the architectural blueprint for your software project.

## Input
- `prd.md` - Your Product Requirements Document
- `app-sitemap.md` - Your application structure and navigation document
- Tech stack information

## Steps

1. Provide your `prd.md` file in the project_request section
2. Include your `app-sitemap.md` in the app_sitemap section
3. Detail your preferred technology stack in the tech_stack section
4. Use this prompt with your preferred AI thinking model to generate a robust technical specification document.
5. Review and refine the output as needed
6. Save the final document as `design-spec.md`

### Tips for Better Results

1. Be detailed in your PRD and sitemap - the more information you provide, the more precise the specifications will be
2. Be explicit about technology choices and constraints
3. Review the specification planning section for insights into the architect's thought process

### Prompt

```md
You are an expert software architect tasked with creating detailed technical specifications for software development projects.

Your specifications will be used as direct input for planning & code generation AI systems, so they must be precise, structured, and comprehensive.

# Input
First, carefully review the uploaded PRD `prd.md`, Sitemap `app-sitemap.md` and Tech Stack `tech-stack.md`


Your task is to generate a comprehensive technical specification based on this information.

Before creating the final specification, analyze the project requirements and plan your approach. Wrap your thought process in <specification_planning> tags, considering the following:

1. Core system architecture and key workflows
2. Project structure and organization
3. Detailed feature specifications
4. Database schema design
5. Server actions and integrations
6. Design system and component architecture
7. Authentication and authorization implementation
8. Data flow and state management
9. Payment implementation
10. Analytics implementation
11. Testing strategy

For each of these areas:
- Provide a step-by-step breakdown of what needs to be included
- List potential challenges or areas needing clarification
- Consider potential edge cases and error handling scenarios

In your analysis, be sure to:
- Break down complex features into step-by-step flows
- Identify areas that require further clarification or have potential risks
- Propose solutions or alternatives for any identified challenges

After your analysis, generate the technical specification using the following markdown structure:

# {Project Name} Technical Specification

## 1. System Overview
- Core purpose and value proposition
- Key workflows
- System architecture

## 2. Project Structure
- Detailed breakdown of project structure & organization

## 3. Feature Specification
For each feature:
### 3.1 Feature Name
- User story and requirements
- Detailed implementation steps
- Error handling and edge cases

## 4. Database Schema
### 4.1 Tables
For each table:
- Complete table schema (field names, types, constraints)
- Relationships and indexes

## 5. Server Actions
### 5.1 Database Actions
For each action:
- Detailed description of the action
- Input parameters and return values
- SQL queries or ORM operations

### 5.2 Other Actions
- External API integrations (endpoints, authentication, data formats)
- File handling procedures
- Data processing algorithms

## 6. Design System
### 6.1 Visual Style
- Color palette (with hex codes)
- Typography (font families, sizes, weights)
- Component styling patterns
- Spacing and layout principles

### 6.2 Core Components
- Layout structure (with examples)
- Navigation patterns
- Shared components (with props and usage examples)
- Interactive states (hover, active, disabled)

## 7. Component Architecture
### 7.1 Server Components
- Data fetching strategy
- Suspense boundaries
- Error handling
- Props interface (with TypeScript types)

### 7.2 Client Components
- State management approach
- Event handlers
- UI interactions
- Props interface (with TypeScript types)

## 8. Authentication & Authorization
- Clerk implementation details
- Protected routes configuration
- Session management strategy

## 9. Data Flow
- Server/client data passing mechanisms
- State management architecture

## 10. Stripe Integration
- Payment flow diagram
- Webhook handling process
- Product/Price configuration details

## 11. PostHog Analytics
- Analytics strategy
- Event tracking implementation
- Custom property definitions

## 12. Testing
- Unit tests with Jest (example test cases)
- e2e tests with Playwright (key user flows to test)

Ensure that your specification is extremely detailed, providing specific implementation guidance wherever possible. Include concrete examples for complex features and clearly define interfaces between components.

Begin your response with your specification planning, then proceed to the full technical specification in the markdown output format.

# Output
Please save the final technical specification as `design-spec.md` for use in planning the implementation process.
```

## Output
- `design-spec.md` - A detailed technical specification document outlining all aspects of your application architecture

## Next Steps
After completing your design specification,
proceed to [Implementation Plan](../implementation/implementation-plan.md) using your `design-spec.md`, `tech-stack.md`, and `app-sitemap.md` as input
