# Claude Code with subagents

In the sections of Structured Development Process below, there are prompts for each stage.  Now, with Claude Code, you can create subagents based on these prompts to help implement the process automatically. 

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
There is a feature in Claude Code called subagents, the documentation is at https://docs.anthropic.com/en/docs/claude-code/sub-agents. Please go through it and determine what would be the best sub agents you can create for my app that would improve my app and speed up coding time, then implement the subagents. 
```




