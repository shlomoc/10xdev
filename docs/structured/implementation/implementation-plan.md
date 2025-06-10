# Implementation Plan
## Purpose

Use this prompt to break down a complex app project into manageable steps for execution. This creates a detailed roadmap that guides the development process.

## Input
- `design-spec.md` - Technical specifications document
- `app-sitemap.md` - Application structure and navigation
- Tech stack information

## Steps

### 1. Provide your `design-spec.md` file in the design_spec section
### 2. Include your `app-sitemap.md` in the app_sitemap section
### 3. Detail your technology stack in the tech_stack section
### 4. Run the prompt with your preferred AI thinking model (like OpenAI o3) to generate a comprehensive implementation plan
### 5. Review and refine the output as needed
### 6. Save the final document as `implementation-steps.md`


## Prompt
<pre>
```md

You are an AI task planner responsible for breaking down a complex web application development project into manageable steps.

Your goal is to create a detailed, step-by-step plan that will guide the code generation process for building a fully functional web application based on a provided technical specification.

# Input
First, carefully review the following uploaded inputs for Design doc `design-spec.md`, Sitemap `app-sitemap.md` and Tech Stack `tech-stack.md`

After reviewing these inputs, your task is to create a comprehensive, detailed plan for implementing the web application.

Before creating the final plan, analyze the inputs and plan your approach. Wrap your thought process in <brainstorming> tags.

Break down the development process into small, manageable steps that can be executed sequentially by a code generation AI.

Each step should focus on a specific aspect of the application and should be concrete enough for the AI to implement in a single iteration. You are free to mix both frontend and backend tasks provided they make sense together.

When creating your plan, follow these guidelines:

1. Start with the core project structure and essential configurations.
2. Progress through database schema, server actions, and API routes.
3. Move on to shared components and layouts.
4. Break down the implementation of individual pages and features into smaller, focused steps.
5. Include steps for integrating authentication, authorization, and third-party services.
6. Incorporate steps for implementing client-side interactivity and state management.
7. Include steps for writing tests and implementing the specified testing strategy.
8. Ensure that each step builds upon the previous ones in a logical manner.

Present your plan using the following markdown-based format. This format is specifically designed to integrate with the subsequent code generation phase, where an AI will systematically implement each step and mark it as complete. Each step must be atomic and self-contained enough to be implemented in a single code generation iteration, and should modify no more than 20 files at once (ideally less) to ensure manageable changes. Make sure to include any instructions the user should follow for things you can't do like installing libraries, updating configurations on services, etc (Ex: Running a SQL script for storage bucket RLS policies in the Supabase editor).


# Implementation Plan

## [Section Name]
- [ ] Step 1: [Brief title]
  - **Task**: [Detailed explanation of what needs to be implemented]
  - **Files**: [Maximum of 20 files, ideally less]
    - `path/to/file1.ts`: [Description of changes]
  - **Step Dependencies**: [Step Dependencies]
  - **User Instructions**: [Instructions for User]

[Additional steps...]

After presenting your plan, provide a brief summary of the overall approach and any key considerations for the implementation process.

Remember to:
- Ensure that your plan covers all aspects of the technical specification.
- Break down complex features into smaller, manageable tasks.
- Consider the logical order of implementation, ensuring that dependencies are addressed in the correct sequence.
- Include steps for error handling, data validation, and edge case management.

# Output
Begin your response with your brainstorming, then proceed to create your detailed implementation plan for the web application based on the provided specification. The final document will be saved as `implementation-steps.md` for use in the code generation process.
```
</pre>

## Output
- `implementation-steps.md` - A comprehensive step-by-step implementation plan with prioritized tasks

## Benefits

- Creates a clear, step-by-step implementation plan
- Breaks complex features into manageable tasks
- Establishes logical development sequence
- Identifies dependencies between components
- Provides a trackable roadmap for development
- Integrates with code generation tools

## Next Steps
After generating `implementation-steps.md`, proceed to [Code Generation](codegen.md) using this document as input for AI-assisted development.
