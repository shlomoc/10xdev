# SPARC with Claude Code

## Purpose
Automate code development using agents.

#### Note: use @latest to get latest version of claude-flow

## Steps

### Connect to github codespace

### Install Claude Code:

```bash
npm install -g @anthropic-ai/claude-code
```

### Initialize SPARC settings

```bash
npx -y claude-flow@latest init --sparc --force
```

### List command options

```bash
npx claude-flow@latest help
```
### List sparc modes

```bash
npx claude-flow@latest sparc modes
```
### Workaround for [Issue](https://github.com/ruvnet/claude-code-flow/issues/62)

```bash
claude --dangerously-skip-permissions
# accept the ui warning message
# exit claude
# this command bypasses all permission checks and lets Claude work uninterrupted until completion.

```

### Test it with a sample task

```bash
npx -y claude-flow@latest swarm "create 3 different modern login pages"
```

## References

### [Claude-Flow: Agent Orchestration Platform for Claude-Code](https://www.linkedin.com/pulse/claude-flow-agent-orchestration-platform-claude-code-reuven-cohen-bhimc) Article
### [Claude Flow](https://github.com/ruvnet/claude-code-flow) Github repository
### [Demo](https://github.com/ruvnet/yyz-agentics-june)

