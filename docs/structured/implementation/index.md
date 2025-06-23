---
title: Implementation
description: Build your application following proven development practices and patterns
---

# Implementation

## Purpose
Break down development into manageable tasks and implement the code following best practices.

## Input
- `design-spec.md` from previous step
- `prd.md` from previous steps
- `app-sitemap.md` from previous steps
- `tech-stack.md` from previous steps

## Steps

* Use an [agentic process](../agentic/index.md)
* Or, go through the implementation planning, code generation, testing and debugging steps below.

### 1. Implementation Planning
* Option 1: Use the [Implementation Plan Guide](./implementation-plan.md)
* Option 2: Use [Taskmaster](https://github.com/eyaltoledano/claude-task-master) based on your `prd.md` file
* Option 3: Use [Memory Bank](https://docs.cline.bot/prompting/cline-memory-bank) based on your input documents

### 2. Code Generation
* Follow the [Code Generation Guide](./codegen.md)
* Implement features iteratively
* Create modular, maintainable components
* Implement data flows according to architecture
* Build API integrations
* Apply proper error handling

### 3. Code Review & Quality
* Use the [Code Review Guide](./code-review.md)
* Conduct regular code reviews
* Ensure code maintainability
* Follow coding standards

### 4. Testing & Debugging
* Follow the [Testing and Debugging Guide](./debugging.md)
* Generate and run unit tests
* Perform integration testing
* Debug issues systematically
* Validate functionality

## Output
- `implementation-steps.md` - Step-by-step implementation plan with prioritized tasks
- Functional codebase implementing your application

## Next Steps
- Proceed to [Security](../security/index.md) to ensure your application is secure