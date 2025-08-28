# Spec-Driven Design with subagents

## Full Approach

You can go through the full structured approach in the folders below or just skip to areas where you want to drill down into the details.

## Subagents
In the sections of Structured Development Process below, there are prompts for each stage.  Now, with Claude Code, you can even create subagents based on these prompts to help implement the process automatically. 

For example, you can create a research subagent to research the best way to implement a feature, and a code subagent to implement the feature.  

It's useful to have a verification system in place because the model often marks tasks as complete prematurely.  You can create a separate "blind validator" test sub-agent that is responsible for checking the work done by the code agent to ensure that the results are reliable.  When the coding subagent says it is done, the test subagent will run the tests and let you know if they passed or failed.  If they failed, the coding subagent will be asked to fix the code and run the tests again.  This can be repeated until the tests pass.

You can also use subagents to parallelize tasks.  This can speed up the process.

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

If you are using subagents, also add a rule to CLAUDE.md to use subagents for tasks that match their expertise, and parallelize tasks but do not overwrite each others updates.




