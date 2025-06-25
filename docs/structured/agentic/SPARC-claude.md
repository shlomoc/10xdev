# SPARC with Claude Code

## Purpose
Automate code development using agents.

#### Note: use @latest to get latest version of claude-flow

## Steps

### Install Claude Code:

```bash
npm install -g @anthropic-ai/claude-code
```

### Install Claude-Flow
```bash
npx -y claude-flow@latest --version
```

### Workaround for [Issue](https://github.com/ruvnet/claude-code-flow/issues/62)

```bash
claude --dangerously-skip-permissions
# accept the ui warning message
# exit claude
# this command bypasses all permission checks and lets Claude work uninterrupted until completion.

```

### Initialize SPARC settings

```bash
npx claude-flow@latest init --sparc
```

### List command options

```bash
npx claude-flow@latest help
```
### List sparc modes

```bash
npx claude-flow@latest sparc modes
```

### Test it with a sample task

```bash
npx -y claude-flow@latest sparc "create a hello,world landing page"
```

## References

### [Claude-Flow: Agent Orchestration Platform for Claude-Code](https://www.linkedin.com/pulse/claude-flow-agent-orchestration-platform-claude-code-reuven-cohen-bhimc) Article
### [Claude Flow](https://github.com/ruvnet/claude-code-flow) Github repository
### [Chat with claude-flow docs](https://gitmcp.io/ruvnet/claude-code-flow/chat)

