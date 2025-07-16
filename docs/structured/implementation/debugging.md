---
title: Testing and Debugging
description: Systematically identify and resolve issues in your application
---

# Testing and Debugging

##Purpose
 Systematically identify, isolate, and resolve issues in the codebase.

## Input
- Application codebase
- Error logs and reports
- User-reported problems

## Steps

### 1. Prepare the debugging environment
### 2. Run your unit and integration tests
### 3. Use the latest, best coding models to find the core issues
### 4. Utilize models with large context windows (e.g., Gemini Pro 2.5) to scan the codebase
### 5. Attach the relevant files so AI can focus on the problem area effectively

### Debugging Prompts

Here are some prompts that can be used to guide AI in debugging:

**1. Basic Debugging:**

```md
Find the core issue first and then plan step by step to fix the issue.
```

**2. Debugging with Additional Context:**

```md
Follow the best practices of code. Search the web and find the fix for this issue.
```

**3. Root Cause Analysis:**

```md
Deeply reflect upon all of this and think about why this isn't working. Theorize 4-6 different possible sources of the problem.

Then, deeply reason about the root cause and distill your theories down to the 1-2 most probable sources of the problem before suggesting next steps.

Add additional logs to validate your assumptions and track the transformation of data structures throughout the application control flow before we move onto implementing the actual code fix.

Explain the approach in detail first without writing any code.
```

**4. Debugging UI Issues**
You can use a MCP tool like Playwright for testing UI issues.  (Windsurf also provides a feature for browser testing.)

## Output
- Resolved application issues
- Documentation of problems and solutions
- Improved error handling
- More robust codebase

## Next Steps
- Iterate on implementation to build your product
