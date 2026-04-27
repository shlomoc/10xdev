# Design Spec: Section-by-Section Guide

## Section 1: System Overview

Describe the system in terms of what it does, not how it's built. Include:
- Core value proposition (what user problem does this solve)
- 3-5 key workflows (the main things users do)
- High-level architecture style (Next.js App Router SSR, REST API, real-time subscriptions, etc.)

Avoid tool names here — this section should be understandable by a product manager.

---

## Section 2: Project Structure

Show the actual file/folder structure with brief annotations. This becomes the skeleton that the implementation-planner builds out. Be specific:
- Which router pattern (app router vs pages)
- Where business logic lives vs. UI components
- Where DB queries/mutations live
- Where tests go

---

## Section 3: Feature Specification

This is the most important section. For every feature in the PRD's "Must Have" list:

1. Restate the user story (from PRD, no changes needed)
2. Break down into implementation steps (1-3 sentences per step, ordered)
3. Specify error handling for each failure mode
4. Specify edge cases (empty state, loading state, error state, max input, concurrent access)

The implementation-planner reads Section 3 to generate `implementation-steps.md`. Vague specs here produce ambiguous implementation steps.

---

## Section 4: Database Schema

Define every table. For each table:
- All columns with types and constraints
- Foreign key relationships
- Indexes (and why each one exists — performance? uniqueness?)
- Row-level security policies if using Supabase

Common tables for SaaS apps:
- `users` (managed by Clerk, mirrored to DB for joins)
- `organizations` / `teams`
- `subscriptions` (Stripe integration)
- `[core domain table]`

---

## Section 5: Server Actions

Two sub-sections:

**Database Actions**: Functions that read/write to DB. For each:
- Name, purpose, input params, output type
- The actual SQL query or ORM operation
- Which rows are accessible (auth context)

**External Integrations**: For each third-party API call:
- Which service, which endpoint
- Auth method (API key, OAuth, etc.)
- Request/response shape
- Error handling strategy
- Rate limiting concerns

---

## Section 6: Design System

Define the visual language. Must include:
- Color palette with hex codes (primary, secondary, background, text, accent, error, success)
- Typography (font family, size scale, weights)
- Spacing scale (8px base unit is common)
- Border radius (sharp/medium/round)
- Shadow levels
- Animation defaults

Core components to define:
- Button (variants: primary, secondary, ghost, destructive)
- Input (states: default, focus, error, disabled)
- Card
- Modal
- Navigation (sidebar or top nav)
- Table

---

## Section 7: Component Architecture

Distinguish server components (fetch data, render HTML) from client components (handle state, user interaction).

For each significant component:
- Is it server or client?
- What data does it receive?
- What does it render?
- What events does it emit?

React Server Components + Next.js App Router pattern:
- Server components can be async and await DB calls directly
- Client components use `"use client"` and receive data as props or via context

---

## Section 8: Authentication & Authorization

Clerk-specific details:
- Which sign-in methods are enabled
- Webhook events to sync (user.created, user.updated, user.deleted)
- Organization/team support if multi-tenant
- `middleware.ts` configuration for protected routes

Authorization:
- Role definitions (user, admin, owner)
- Which routes require which roles
- How roles are checked (middleware vs. component-level)

---

## Section 9: Data Flow

Describe the full round-trip for the most important operations:

**Read path**: User visits page → server component fetches from DB → renders HTML → sent to browser

**Write path**: User submits form → client calls server action → DB mutation → revalidation → UI updates

**Real-time path** (if applicable): Supabase subscription → client listener → React state update → re-render

State management choice: React state (local), Zustand/Jotai (global client state), or server state only?

---

## Section 10: Stripe Integration

Cover:
- Which Stripe products you use (Checkout, Payment Intents, Subscriptions, Customer Portal)
- Webhook events you handle and what action each triggers in your DB
- How you map Stripe customers to your users
- How you handle failed payments and subscription updates
- Whether you use Stripe's hosted checkout or embedded components

---

## Section 11: Analytics (PostHog)

Define the event taxonomy before implementation so events are consistent across the product:

- **Acquisition events**: `signup_started`, `signup_completed`, `invite_accepted`
- **Activation events**: `first_[core action]`, `onboarding_completed`
- **Engagement events**: `[feature]_used`, `[content]_created`, `[content]_shared`
- **Retention events**: `session_started` (auto), `[weekly workflow]_completed`
- **Revenue events**: `upgrade_clicked`, `plan_upgraded`, `plan_cancelled`

For each event: when it fires, what properties it carries (user context, object IDs, amounts, etc.)

---

## Section 12: Testing

**Unit tests (Jest)**: Functions with complex logic — transformations, calculations, validators. Not every function needs a unit test; focus on non-trivial business logic.

**E2E tests (Playwright)**: Cover the critical happy paths:
1. Sign up / sign in flow
2. Core product action (the thing that delivers value)
3. Payment/upgrade flow
4. Settings/account management

For each E2E test: describe the starting state, user actions, and expected final state.
