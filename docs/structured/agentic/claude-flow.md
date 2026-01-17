# Claude Flow

## Purpose
Automate code development using agents.

## Description
Claude-Flow is an orchestration platform combining hive-mind, swarm intelligence and neural pattern recognition. 

The Queen agent (master coordinator) directs specialized workers like Architects, Coders and Testers.  The framework leverages a multitude of MCP tools for everything ranging from swarm orchestration to github integration.

## How to choose between swarm and hive-mind

Quick Rule: Start with swarm for most tasks. Use hive-mind when you need persistent sessions or complex multi-agent coordination.

| Feature    | `swarm` Command                                   | `hive-mind` Command                         |
|------------|---------------------------------------------------|---------------------------------------------|
| Best For   | Quick tasks, single objectives                    | Complex projects, persistent sessions       |
| Setup      | Instant - no configuration needed                 | Interactive wizard setup                    |
| Session    | Temporary coordination                            | Persistent with resume capability           |
| Memory     | Task-scoped                                       | Project-wide with SQLite storage            |
| Agents     | Auto-spawned for task                             | Manual control with specializations         |
| Use When   | "Build X", "Fix Y", "Analyze Z"                   | Multi-feature projects, team coordination   |


## Steps

#### Note: use @v3alpha to get v3 alpha version of claude-flow

### Connect to github codespace

### Install Claude Code:

```bash
npm install -g @anthropic-ai/claude-code
```

### Initialize settings

```bash
npm install claude-flow@v3alpha
npx claude-flow@v3alpha init
```

### List command options

```bash
npx claude-flow@v3alpha --help
```

### Workaround for [Issue](https://github.com/ruvnet/claude-code-flow/issues/62)

```bash
claude --dangerously-skip-permissions
# accept the ui warning message
# exit claude
# this command bypasses all permission checks and lets Claude work uninterrupted until completion.
```

### Test it with a sample task for swarm command:
```bash
npx -y claude-flow@v3alpha swarm "create 3 different modern login pages"
```

### Test it with a sample task for hive command:
```bash
npx claude-flow@v3alpha hive-mind wizard
npx claude-flow@v3alpha hive-mind spawn "Build a simple CRM MVP to let teams add contacts, log interactions, and track deals in a single view." --claude
```

### Alternatively, prompt claude directly 
It can use the claude-flow resources in the configuration as appropriate.
For example, launch claude, ask it to install mcp for playwright, and enter this prompt.
```bash
Create an offline browser-based anteroid game which relies on arrow keys to pilot a ship destroying asteroids in the playspace. Use test driven development, use playwright to confirm the webpage renders correctly, prepare a docker image and run tests against the docker image. Launch the docker image through a local port for user testing. Spawn up to 5 agents working in parallel to work on this game.
```

## References

### [Claude-Flow: Agent Orchestration Platform for Claude-Code](https://www.linkedin.com/pulse/claude-flow-agent-orchestration-platform-claude-code-reuven-cohen-bhimc) Article
### [Claude Flow](https://github.com/ruvnet/claude-flow) Github repository
### [Claude Flow Wiki](https://github.com/ruvnet/claude-flow/wiki) Claude-Flow v2.0.0 Alpha Wiki
### [Demo](https://github.com/ruvnet/yyz-agentics-june) Github repository created from a meetup
### [Explain claude-flow](https://chatgpt.com/share/688cfa07-c0ac-8000-b41f-3ed62fd006db) Ask chatgpt to explain claude-flow github repo

