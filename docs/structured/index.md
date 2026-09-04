---
title: Spec-Driven Design - Structured Development Process
description: Learn spec-driven design methodology for AI-powered development. Create PRDs, tech stack documentation, and implementation plans for efficient coding workflows.
---

# Spec-Driven Design

## Purpose: From Vibe Coding to Structured Development

Instead of coding impulsively ("vibe coding"), we shift to a structured approach called "spec-driven design," where we first define what the application needs to do before writing code.

## Basic Approach
- Once you have a product in mind, start by having a discussion with your LLM. You can ask Claude Code to interview you using its built-in AskUserQuestion tool to create clear requirements for your MVP, then ask it to output a basic PRD (Product Requirements Document). 
- Similarly, define your tech stack. 

For the PRD, below is an example of the expected output format:

```md
# PRD
## Project Overview
## Core requirements
## Flow
## Tech stack
## Deliverables
## Acceptance criteria
## Nice to have (time permitting)
```


- Ask the LLM to create a basic plan and iterate on your plan until you get a 9 or 10 using the [meta prompt workflow](../prompt-engineering/meta-prompt-workflow.md), then ask it to output a basic Plan.md.
- Note: For the implementation, we're using Claude Code below. 
- Ask it to create CLAUDE.md and Tasks.md based on the PRD and Plan.md:

```
Create CLAUDE.md outlining everything needed to know regarding this project based on the PRD and design spec. Then, create Tasks.md outlining all phases and steps needed to bring this project to completion.  

Add following rules to CLAUDE.md:
- Keep CLAUDE.md up-to-date based on the project's current state and add any notes or relevant details you'd need to remember between chats. 
- For every task, implement the code and tests, then run the tests to verify the functionality works. 
- Keep Tasks.md up to date based on the project's current state. 
```

Include some general rules in your global CLAUDE.md file like the following:
```md
Communication Style

✅ Ask for clarification if requirements are unclear.
✅ Break down complex tasks into clear steps.
✅ Provide brief explanations for technical decisions.
✅ Explain planned changes before implementation.
✅ Define success criteria and verify.
✅ You are persistent and finish tasks.
✅ If you cannot complete a request, say so and explain why.

Coding

You are an amazing coder.
For each "done" claim, create atleast one test and run it to verify it works.
Write clean code.
Write comments only where the reasoning isn’t obvious.
Keep files under 500 lines of code.
When implementing new features using external libraries or APIs (but not internal), always search if there is relevant documentation on Context7 and use the latest documentation before implementing it.
```

Add self-reflection prompt like this to your global CLAUDE.md:

```md
Self-Reflection Prompt

After each task, reflect on the following:

✅ Did I understand the requirements correctly?
✅ Is the code easy to understand and maintain?
✅ Are there any potential issues or edge cases I should be aware of?
✅ Is the code following the coding style guidelines?
✅ Are there any dependencies or tools I need to install?
✅ Are there any tests I need to run?

If you identify any issues or areas for improvement, update your memory files and Tasks.md accordingly.
```

This prompt seems to work magically to reduce a lot of testing and back and forth.

```
First, spend time thinking of a rubric until you are confident.
Then, think deeply about every aspect of what makes for a world-class one-shot web app. Use that knowledge to create a rubric that has 5–7 categories.
Finally, use the rubric to internally think and iterate on the best possible solution to the prompt that is provided. Remember that if your response is not hitting the top marks across all categories in the rubric, you need to start again.
```


## Next Steps

- Use the PRD.md, Tasks.md, Plan.md and CLAUDE.md as input to the Claude Code to implement the app.

Note: You can use AI tools other than Claude Code with an [AGENTS.md](https://agents.md/) file that is similar to CLAUDE.md