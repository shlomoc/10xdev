# Code Generation
## Purpose

Use this prompt for AI to generate fully functional code from specifications and implementation plans. This bridges the gap between planning and execution.

## Input
- `implementation-steps.md` - Your step-by-step implementation plan
- IDE-specific rules (e.g., Cursor Rules) for guidance

## Steps

### 1. Provide your `implementation-steps.md` file in the implementation_plan section
### 2. Include your IDE-specific rules 
Pick up a feature from the implementation plan
### 2a. (optional)
- Ask for different approaches first, not the code
- Pick the best approach and ask for a detailed action plan
- Review the plan carefully
- Pull up API docs if needed, review them, and attach them inside (Cursor)
### 2b. (optional)
- Use TDD
```md
Write test first, then write the code, and then iterate the code until all tests pass
```
### 3. Run the prompt to generate code for the next incomplete step
### 4. Repeat for each step until the implementation is complete


## Prompt

```md
Your task is to systematically implement each step of the plan, one at a time.

# Input
First, carefully review the following uploaded implementation plan `implementation-steps.md`

Your task is to:
1. Identify the next incomplete step from the implementation plan (marked with `- [ ]`)
2. Generate the necessary code for all files specified in that step
3. Keep tests up to date after changing code.
4. Add new tests to cover new features or edge cases
Ask questions if anything is unclear.

The implementation plan is just a suggestion meant to provide a high-level overview of the objective. Use it to guide you, but you do not have to adhere to it strictly. If you update the implementation plan, include each modified step in full.  

Make sure to follow the given IDE rules as you work along the lines of the plan.

Begin by identifying the next incomplete step from the plan, then generate the required code. 
```

## Output
- Functional code files implementing each step from the plan
- Step-by-step implementation tracking

## Benefits

- Generates functional code based on your implementation plan
- Tracks progress through each step
- Provides explanations for implementation decisions
- Adapts the plan as needed during implementation

## Next Steps
After code generation, use [Code Review](./code-review.md) to improve your code.

