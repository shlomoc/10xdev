# Agentic Process

## Purpose
Automate code development using agents.

You can do this with a structured specification-first workflow or with lighter agent workflows that start from a goal and existing repository context.

## Input
### Structured workflows
* `prd.md` from previous steps
* `tech-stack.md` from previous steps

### Lightweight workflows
* a clear project goal
* repository context
* optional constraints or acceptance criteria

## Approaches

* [gstack](https://github.com/garrytan/gstack) - Opinionated tools that serve as CEO, Designer, Eng Manager, Release Manager, Doc Engineer, and QA
* [Superpowers](https://github.com/obra/superpowers) - Agentic skills framework and software development workflow
* [Ruflo](https://github.com/ruvnet/claude-flow) - An agent orchestration platform for Claude

## Steps

### 1. Run your agentic flow in a separate environment 
One way is to setup a new [GitHub Codespace](https://github.com/codespaces/) for your repository.  You can use the Codespaces Visual Studio browser or connect using your local Visual Studio desktop setup.

### 2. Install Claude Code

```bash
npm install -g @anthropic-ai/claude-code
#(Optional) Skip permissions check for faster setup
claude --dangerously-skip-permissions
```

### 3. Start implementation with your selected agentic workflow

## Next Steps

You can find more resources, skills and subagents on the [Claude Code](../../ai-coding-tools/ai-agents/claude-code.md) page of this website.
