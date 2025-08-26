# Spec-Driven Design with Claude Code

Instead of coding impulsively ("vibe coding"), we shift to a structured approach called "spec-driven design," where we first define what the application needs to do.

## Simple Approach
- Start with a simple discussion with your LLM (Claude or ChatGPT) and create clear requirements for your MVP, then ask it to output a basic PRD. 
- Similarly, define your tech stack. 
- Ask the LLM to create a basic plan and iterate on your plan until you get a 9 or 10, then ask it to ouput a basic plan/design spec. 
- Then ask it to create CLAUDE.md and Tasks.md based on the PRD and design spec:

```md
Create CLAUDE.md outlining everything needed to know regarding this project based on the PRD and design spec. Then, create Tasks.md outlining all phases and steps needed to bring this project to completion.  

Add following rules to CLAUDE.md:
- Keep CLAUDE.md up-to-date based on the project's current state and add any notes or relevant details you'd need to remember between chats. 
- For every task, implement the code and tests, then run the tests to verify the functionality works. 
- Keep Tasks.md up to date based on the project's current state. 
```

If you are using subagents, also add a rule to CLAUDE.md to use subagents for tasks that match their expertise, and parallelize tasks but do not overwrite each others updates.

Then have Claude Code implement the plan. 

## Full Approach

You can go through the full structured approach in the folders below or just skip to areas where you want to drill down into the details.

## Subagents
In the sections of Structured Development Process below, there are prompts for each stage.  Now, with Claude Code, you can even create subagents based on these prompts to help implement the process automatically. 

[What are subagents?](https://docs.anthropic.com/en/docs/claude-code/sub-agents)

> Subagents are pre-configured AI personalities that Claude Code can delegate tasks to. Each subagent:
>
> - Has a specific purpose and expertise area
> - Uses its own context window separate from the main conversation
> - Can be configured with specific tools it's allowed to use
> - Includes a custom system prompt that guides its behavior
>
> When Claude Code encounters a task that matches a subagent’s expertise, it can delegate that task to the specialized subagent, which works independently and returns results.
>
> *Excerpt copied from [Anthropic documentation](https://docs.anthropic.com/en/docs/claude-code/sub-agents).*

The Anthropic help doc has instructions for creating subagents.  You can customize prompts like in the structured development processes below, and create your own agents.  

[Basic Example implementation](https://github.com/iannuttall/claude-agents) from Ian Nuttall

To customize agents for your existing code, you can use a prompt like this

```md
There is a feature in Claude Code called subagents, the documentation is at https://docs.anthropic.com/en/docs/claude-code/sub-agents. Please go through it and determine the best sub agents you can create for my app to improve my app and speed up coding time, then implement the subagents. 
```




