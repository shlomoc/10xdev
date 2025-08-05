# Ian Nuttall's Tips for Using Claude Code

*Source: [Ian Nuttall's Tips for Using Claude Code](https://x.com/iannuttall/status/1951243907628724725) (also mostly works for Cursor + other coding tools)*

## 1. Take longer than you think to plan

- Use Claude Desktop in open-ended conversation to discuss:
    - Tech stack
    - Packages and libraries to use
    - MVP features needed
- Verify suggestions manually, especially for unfamiliar stacks.

## 2. Find URLs and repos to share

- Claude might not know the latest packages.
- Provide URLs to documentation and GitHub repos.
- Pro tip: Use uithub.com instead of github.com for LLM-friendly repo context.

## 3. Ask Claude to write a highly detailed, step-by-step plan

- Request a meticulous, executable plan that any human or agent can follow.
- IMPORTANT: Don't give Claude Code the entire plan upfront. Work through the plan one step at a time as the conductor.

## 4. Get a working version ASAP

- Don't try to build the full app at once.
- Focus on getting a bare minimum MVP working first.
- Iterate from there. It's easier to add 1 feature than 10 at once.

## 5. Run /init in Claude Code to create a CLAUDE.md file

- Do this after the MVP is working.
- Use # comments to add memories later, e.g.: # Always run bun typecheck to check for type errors
- Root CLAUDE.md should contain project-level rules only.

## 6. Add CLAUDE.md files to subdirectories

- Create per-directory rule files:
    - /src/components/CLAUDE.md
    - /src/db/CLAUDE.md
- Claude uses this for precise context. It makes a HUGE difference.

## 7. Track every session

- Log each session by answering:
    - What are you working on?
    - What did you do in this session?
    - What worked? What didn't?
    - What are the next steps?
- Use [claude-sessions](https://github.com/iannuttall/claude-sessions) for memory and tracking.

## 8. Use /clear as early as possible

- You can use /compact, but detailed session logs are better for preserving context.
- Clear as soon as you hit a good stopping point.
- Claude becomes less effective after the context warning.

## 9. Use subagents and "ultrathink" sparingly

- Powerful tools, but they burn context quickly, making Claude feel "dumber".
- Use them for understanding and planning.
- Then save the session and /clear before continuing.

## 10. Use [Repo Prompt](https://repoprompt.com/) for tough bugs/features

- o3 is a great coding model but not a good agent.
- Use Repo Prompt MCP to let Claude:
    - Find context
    - Pass task to o3
    - Get it implemented

## 11. Use Playwright to test your app

- Playwright can:
    - View, click, navigate, use console
    - Test your app
    - Send back info to Claude to fix bugs
- Add usage instructions to CLAUDE.md.
- Run this command from your terminal:
  ```bash
  claude mcp add playwright npx '@playwright/mcp@latest'
  ```
- Restart CC, then you can ask things like "use playwright mcp to test the button on my homepage"

## 12. GO SLOWER!

- Don't rush by launching 6 agents and 20+ subagents.
- You'll lose track of your context and codebase.
- For deep work, slow down. Understanding your code is 100x better.

