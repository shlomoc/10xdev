# SPARC with Claude Code

## Purpose
Automate code development using agents.

## Note: claude-flow is a work in progress

## Steps

### 1. Install [Claude Code](https://www.anthropic.com/claude-code) 
You can now sign up for a monthly plan (instead of paying per token which quickly adds up).
### 2. See [Claude-Flow: Agent Orchestration Platform for Claude-Code](https://www.linkedin.com/pulse/claude-flow-agent-orchestration-platform-claude-code-reuven-cohen-bhimc)
### 3. [Claude Flow: Getting-Started](https://github.com/ruvnet/claude-code-flow/blob/main/docs/01-getting-started.md)
### 4. Issue: [Error: Raw mode is not supported on the current process.stdin](https://github.com/ruvnet/claude-code-flow/issues/62)
Workaround:

* Log into claude code first
* run claude --dangerously-skip-permissions
* Go through the login process
* Exit claude code
* Then start claude-flow

## 5. To test, try running:
* npx claude-flow sparc modes
* npx claude-flow sparc run orchestrator "create a hello, world landing page"