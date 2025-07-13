# SPARC with Claude Code

## Purpose
Automate code development using agents.

#### Note: use @alpha to get alpha version of claude-flow

## Steps

### Connect to github codespace

### Install Claude Code:

```bash
npm install -g @anthropic-ai/claude-code
```

### Initialize settings

```bash
npx -y claude-flow@alpha init --force
```

### List command options

```bash
npx claude-flow@alpha --help
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
npx claude-flow@alpha hive-mind spawn  "Create a comprehensive 3-year target price analysis starting from June 2025 for Union Pacific (UNP) using DCF, PE ratio, and ROIC valuation methods. Include current financial data (2024/2025 results), peer comparisons with other railroads (CSX, NSC, CNI, CP), growth projections, and calculate total return including dividends. Provide a specific target price with percentage upside and annualized return expectations." --claude
```

## References

### [Claude-Flow: Agent Orchestration Platform for Claude-Code](https://www.linkedin.com/pulse/claude-flow-agent-orchestration-platform-claude-code-reuven-cohen-bhimc) Article
### [Claude Flow](https://github.com/ruvnet/claude-code-flow) Github repository
### [Demo](https://github.com/ruvnet/yyz-agentics-june) Github repository created from a meetup


