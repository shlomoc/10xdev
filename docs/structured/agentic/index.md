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

You can run the shared stage prompts directly with Claude Code or Codex, including the [subagent workflows](../claude-code-with-subagents.md). For an extension or framework below, check its documentation for supported agents and use the installation instructions for your chosen tool.

* [gstack](https://github.com/garrytan/gstack) - Opinionated tools that serve as CEO, Designer, Eng Manager, Release Manager, Doc Engineer, and QA
* [Agent Skills](https://github.com/addyosmani/agent-skills) - Production-grade engineering skills, workflows, and quality gates for AI coding agents
* [Superpowers](https://github.com/obra/superpowers) - Agentic skills framework and software development workflow
* [Ruflo](https://github.com/ruvnet/claude-flow) - An agent orchestration platform for Claude
* [ruvnet-brain](https://isovision.ai/ruvnet-brain/) - An independent explainer for the RuvNet ecosystem

## Steps

### 1. Run your agentic flow in a separate environment 
One way is to set up a new [GitHub Codespace](https://github.com/codespaces/) for your repository. You can use VS Code in the browser or connect using your local VS Code desktop. Configure your chosen coding agent in that environment and include its project instructions (`CLAUDE.md` for Claude Code or `AGENTS.md` for Codex). Alternatively, you can use a VPS or separate computer.

### 2. Set Up Your Coding Agent

=== "Claude Code"

    Follow the [Claude Code quickstart](https://code.claude.com/docs/en/quickstart) to install it for your operating system. Then start it from the project directory:

    ```bash
    claude
    ```

=== "Codex"

    Follow the [Codex CLI guide](https://learn.chatgpt.com/docs/codex/cli). If you use npm, install the CLI, then start it from the project directory and follow the sign-in prompts:

    ```bash
    npm install -g @openai/codex
    codex
    ```

### 3. Start implementation with your selected agentic workflow

Give your coding agent the shared specifications, implementation plan, and acceptance criteria. If using a framework, follow its tool-specific setup before invoking its commands. Ask the agent to verify each completed task and update the shared task list.

## Next Steps

You can find more resources, skills, and subagents on the [Claude Code](../../ai-coding-tools/ai-agents/claude-code/index.md) and [Codex](../../ai-coding-tools/ai-agents/codex.md) pages of this website.
