# Review Prompt – AI Code Review

## Purpose
Analyze implemented code to improve code quality.

## Input
- Implemented codebase
- `implementation-steps.md`

If you are using a LLM with a large context window (like 1 Million tokens in Gemini 2.5 Pro), you can paste the code.

For code review, you can now use tools like [CodeRabbit](https://www.coderabbit.ai/) (free) inside your IDE.
Just install the extension in Cursor, Windsurf, or VS Code, stage a commit, and get instant feedback.  Then you can paste the feedback into (Cursor) and ask it to resolve the issues.

You can also use a Cursor custom mode like [Refactor mode](https://playbooks.com/modes/refactor) to improve code.

Alternatively, you can use a prompt like below:

## Prompt

```md
You are an expert code reviewer and optimizer responsible for analyzing the implemented code and creating a detailed optimization plan. Your task is to review the code that was implemented according to the original plan and generate a new implementation plan focused on improvements and optimizations.

Please review the following uploaded context and implementation: `implementation-steps.md`

First, analyze the implemented code against the original implementation plan. Consider the following areas:

## Steps

### 1. Code Organization and Structure
   - Review implementation of completed steps against the original plan
   - Identify opportunities to improve folder/file organization
   - Look for components that could be better composed or hierarchically organized
   - Find opportunities for code modularization
   - Consider separation of concerns

### 2. Code Quality and Best Practices
   - Look for TypeScript/React anti-patterns
   - Identify areas needing improved type safety
   - Find places needing better error handling
   - Look for opportunities to improve code reuse
   - Review naming conventions

### 3. UI/UX Improvements
   - Review UI components against requirements
   - Look for accessibility issues
   - Identify component composition improvements
   - Review responsive design implementation
   - Check error message handling

Wrap your analysis in <analysis> tags, then create a detailed refactoring plan using the following format:

# Code Refactor Plan
## [Category Name]
- [ ] Step 1: [Brief title]
  - **Task**: [Detailed explanation of what needs to be optimized/improved]
  - **Files**: [List of files]
    - `path/to/file1.ts`: [Description of changes]
  - **Step Dependencies**: [Any steps that must be completed first]
  - **User Instructions**: [Any manual steps required]
[Additional steps...]

For each step in your plan:
1. Focus on specific, concrete improvements
2. Keep changes manageable (no more than 20 files per step, ideally less)
3. Ensure steps build logically on each other
4. Preserve starter template code and patterns
5. Maintain existing functionality
6. Follow project rules and technical specifications

Your plan should be detailed enough for a code generation AI to implement each step in a single iteration. Order steps by priority and dependency requirements.

Remember:
- Focus on implemented code
- Maintain consistency with existing patterns
- Ensure each step is atomic and self-contained
- Include clear success criteria for each step
- Consider the impact of changes on the overall system

Begin your response with your analysis of the current implementation, then proceed to create your detailed optimization plan.
```

## Output
- Detailed code refactorization plan with specific improvement steps
- Implementation recommendations for each optimization

## Benefits

- Identifies code quality issues and anti-patterns
- Enhances code maintainability and readability
- Reduces technical debt
- Ensures best practices are applied consistently

## Next Steps
Implement the the code refactor plan.  After implementing the code refactor plan, proceed to [Testing and Debugging](./debugging.md).