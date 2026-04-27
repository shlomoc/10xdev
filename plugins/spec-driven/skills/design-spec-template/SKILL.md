---
name: design-spec-template
description: Technical design specification template with 12 sections covering system overview, DB schema, server actions, component architecture, auth, payments, analytics, and testing. Load this skill when generating or reviewing a design-spec.md, creating a software architecture blueprint, or translating a PRD into implementation-ready technical specifications.
---

# Design Spec Template

The design specification is the architectural blueprint that bridges the PRD and implementation. It must be precise enough for a code-generation AI to implement directly without guessing.

## 12-Section Structure

### Section 1: System Overview
```markdown
## 1. System Overview
### Core Purpose and Value Proposition
[1-2 sentences]
### Key Workflows
[Numbered list of the 3-5 most important user workflows]
### System Architecture
[Describe: monolith vs microservices, SSR vs SPA, sync vs async patterns]
```

### Section 2: Project Structure
```markdown
## 2. Project Structure
project/
├── src/app/           # Next.js app router pages
├── src/components/    # React components
│   ├── ui/            # Base UI components
│   └── [feature]/     # Feature-specific components
├── src/lib/           # Library functions, utilities
├── src/hooks/         # Custom hooks
├── src/styles/        # Global styles
├── supabase/          # DB migrations, functions
└── tests/             # Test suites
```

### Section 3: Feature Specification
For each feature from the PRD:
```markdown
### 3.N [Feature Name]
#### User Story
As a [user], I want to [action] so that [benefit].
#### Implementation Steps
1. [Step]
2. [Step]
#### Error Handling
- [Error condition]: [expected behavior]
```

### Section 4: Database Schema
```markdown
## 4. Database Schema
### 4.1 [Table Name]
| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | uuid | PRIMARY KEY DEFAULT gen_random_uuid() | |
| created_at | timestamptz | DEFAULT now() | |

#### Relationships
- [table_name.column] references [other_table.column]

#### Indexes
- [index description and reason]
```

### Section 5: Server Actions
```markdown
## 5. Server Actions
### 5.1 Database Actions
#### [actionName]
- Description: [what it does]
- Input: { [param]: [type] }
- Output: [type]
- SQL/ORM: [operation]
- Error cases: [list]

### 5.2 External Integrations
#### [Service Name]
- Endpoint: [URL]
- Auth: [method]
- Trigger: [when called]
- Payload: [structure]
```

### Section 6: Design System
```markdown
## 6. Design System
### 6.1 Visual Style
- Primary color: #[hex]
- Background: #[hex]
- Text: #[hex]
- Accent: #[hex]
- Font: [family, weights]
- Border radius: [value]
- Spacing scale: [values]

### 6.2 Core Components
- Layout: [describe sidebar/main/header structure]
- Navigation: [describe nav pattern]
- Shared components: [list key ones with props]
- Interactive states: [hover, active, disabled behavior]
```

### Section 7: Component Architecture
```markdown
## 7. Component Architecture
### 7.1 Server Components
#### [ComponentName]
- Responsibility: [what it renders]
- Data: [what it fetches]
- Props: { [name]: [type] }

### 7.2 Client Components
#### [ComponentName]
- State: [what state it manages]
- Events: [what user interactions it handles]
- Props: { [name]: [type] }
```

### Section 8: Authentication & Authorization
```markdown
## 8. Authentication & Authorization
### Clerk Implementation
- Sign-in methods: [email/social/magic link]
- Session management: [JWT strategy]
- Middleware: [protected route pattern]

### Protected Routes
- Public: [list]
- Authenticated: [list]
- Role-gated: [list with required roles]
```

### Section 9: Data Flow
```markdown
## 9. Data Flow
### Server → Client
[Describe how data moves from DB to components]

### Client → Server
[Describe form submission, optimistic updates, etc.]

### Real-time
[Describe subscriptions, polling, or absence thereof]
```

### Section 10: Stripe Integration
```markdown
## 10. Stripe Integration
### Payment Flow
1. [Step]
2. [Step]

### Webhook Events Handled
- payment_intent.succeeded: [action]
- customer.subscription.updated: [action]

### Product Configuration
- Product ID: [describe]
- Price tiers: [describe]
```

### Section 11: Analytics
```markdown
## 11. Analytics (PostHog)
### Events
| Event | Trigger | Properties |
|-------|---------|------------|
| [event_name] | [when] | { [key]: [value] } |

### Feature Flags
[List flags and their rollout strategy]
```

### Section 12: Testing
```markdown
## 12. Testing
### Unit Tests (Jest)
- [Component/function]: [what to test]

### E2E Tests (Playwright)
Key flows:
1. [User flow]: [test scenario]
2. [User flow]: [test scenario]
```

## Usage Tips

1. **Generate from PRD + Sitemap**: Feed both documents to the `software-architect` agent.
2. **Use `<specification_planning>` tags**: Ask the architect to reason through the spec before writing it.
3. **Be explicit about tech stack**: Sections 8-10 assume Clerk + Stripe + PostHog unless you specify otherwise.
4. **Schema first**: DB schema (Section 4) should be completed before component architecture (Section 7) since component data shapes derive from it.
5. **Review Section 3 carefully**: Feature specs are the most likely source of implementation ambiguity.
