---
title: Spec-Driven Design - Structured Development Process
description: Learn spec-driven design methodology for AI-powered development. Create PRDs, tech stack documentation, and implementation plans for efficient coding workflows.
---

# Spec-Driven Design

## Purpose: From Vibe Coding to Structured Development

Instead of coding impulsively ("vibe coding"), we shift to a structured approach called "spec-driven design," where we first define what the application needs to do before writing code.

## Using Claude Code or Codex

You can follow this structured development process with either [Claude Code](../ai-coding-tools/ai-agents/claude-code/index.md) or [OpenAI Codex](../ai-coding-tools/ai-agents/codex.md). The requirements, specifications, implementation plans, and verification steps describe the work to be done and can be used with either tool.

Throughout these guides, **your coding agent** means the tool you choose. Keep shared specifications and task lists in ordinary Markdown files, and use the appropriate instruction file for your agent:

| Purpose | Claude Code | Codex |
| --- | --- | --- |
| Project instructions | `CLAUDE.md` | `AGENTS.md` |
| Personal instructions across projects | `~/.claude/CLAUDE.md` | `~/.codex/AGENTS.md` |
| Shared project artifacts | PRD, design spec, plan, and task list | The same documents |

See the official guides to [Claude Code project instructions](https://code.claude.com/docs/en/memory) and [Codex project instructions](https://learn.chatgpt.com/docs/agent-configuration/agents-md) for loading and scope rules. If you use both tools, keep their instructions consistent and point them to the same project documents.

For a shared source of project rules, you can keep them in `AGENTS.md` and import it from a root-level `CLAUDE.md` with `@AGENTS.md`, adding any Claude-specific instructions below the import. Claude Code also supports reading `AGENTS.md` directly in supported versions and configurations; see its [shared instruction file guidance](https://code.claude.com/docs/en/memory#share-one-file-with-other-coding-tools).

Some examples use tool-specific commands, configuration, subagents, or plugins. Follow the instructions for your chosen tool; these details may need adaptation even when the underlying workflow is the same. Codex users can also refer to [OpenAI's workflow guidance](https://learn.chatgpt.com/guides/best-practices) for planning, requirements interviews, and verification.

## Basic Approach

- Once you have a product in mind, ask your coding agent to interview you, clarify your MVP requirements, and output a basic PRD (Product Requirements Document).
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
- Ask your coding agent to create or update its project instruction file and `Tasks.md` based on the PRD and `Plan.md`:

```text
Use CLAUDE.md if you are Claude Code, or AGENTS.md if you are Codex.
Create or update that project instruction file based on the PRD and design spec, preserving existing relevant instructions. Include project conventions, build and test commands, and references to the shared specifications.
Then, create or update Tasks.md outlining all phases and steps needed to bring this project to completion.

Add the following rules to the project instruction file:
- Keep project instructions up to date with durable conventions and commands. Record task progress and handoff notes in Tasks.md or the relevant shared specification.
- For every task, implement the code and tests, then run the tests to verify the functionality works. 
- Keep Tasks.md up to date based on the project's current state. 
```

Include general rules like the following in your personal instruction file (`~/.claude/CLAUDE.md` for Claude Code or `~/.codex/AGENTS.md` for Codex):

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

Add a self-reflection prompt like this to the same personal instruction file:

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

- Ask your coding agent to implement the app using `PRD.md`, `Tasks.md`, `Plan.md`, and its project instructions (`CLAUDE.md` for Claude Code or `AGENTS.md` for Codex).
