# Spec-Driven Design with Subagents

## Full Approach

You can go through the full structured approach in the folders below or just skip to areas where you want to drill down into the details. You can also automate some of the steps using [agentic frameworks](agentic/index.md).

See the [ADLC diagram](../img/adlc.jpeg).

For Anthropic's stage-by-stage approach to integrating AI across the development lifecycle, see [The AI-Native SDLC playbook](https://claude.com/blog/the-ai-native-sdlc-playbook).

## Subagents

Claude Code and Codex can delegate work to subagents. Use the prompts from each stage of this structured development process to define focused tasks for implementation, testing, or review. See the [overview](index.md#using-claude-code-or-codex) for shared project documents and instruction files.

For example, you can create a backend python coding subagent to implement a feature, and a testing subagent to test the feature.  

It's useful to have a verification system in place because the model often marks tasks as complete prematurely.  Create a separate test subagent that is responsible for checking the work done by the code agent to ensure that the results are reliable.  When the coding subagent says it is done, the test subagent will run the tests and let you know if they passed or failed.  If they failed, the coding subagent will be asked to fix the code and run the tests again.  This can be repeated until the tests pass.

You can also use subagents to parallelize independent tasks. Give each subagent a clear scope and expected output. Run dependent work in sequence, such as testing after implementation, and assign separate files or worktrees when agents edit code in parallel.

### Claude Code Setup

Claude Code custom subagents use Markdown files with YAML frontmatter in `.claude/agents/` for a project or `~/.claude/agents/` for personal use. Each definition describes the agent's purpose, instructions, and tool access. Follow the [official Claude Code subagent guide](https://code.claude.com/docs/en/sub-agents) for configuration.

- [Claude agent examples](https://github.com/iannuttall/claude-agents) - Ian Nuttall's example subagent definitions.

To customize agents for your existing code, use a prompt like this:

```text
Read https://code.claude.com/docs/en/sub-agents and the project's shared specifications. Create focused Claude Code subagents in .claude/agents/ for implementation and verification where they would help this project. Give each a clear scope, tool access, and expected output.
```

### Codex Setup

In Codex, ask explicitly for subagents or describe when to delegate in `AGENTS.md` or a skill. For reusable custom agents, use TOML files in `.codex/agents/` for a project or `~/.codex/agents/` for personal use. These have a different format from Claude Code's agent definitions; follow the [official Codex subagent guide](https://learn.chatgpt.com/docs/agent-configuration/subagents).

For example, after implementation:

```text
Review the implementation against the shared specifications and acceptance criteria using two subagents. Ask one to inspect the changed code for bugs and regressions, and the other to run the relevant tests and identify coverage gaps. Neither should edit application code. Wait for both results, then summarize findings, test results, and recommended fixes with file references.
```

For either tool, record delegation rules in its project instruction file (`CLAUDE.md` or `AGENTS.md`). Define which tasks can run independently and how the main agent should combine and verify results.

You can even build a council of subagents to review each other and give perspectives.  This [Youtube video](https://www.youtube.com/watch?v=LpM1dlB12-A) explains the idea.

## Skills

Skills package reusable instructions and supporting resources for tasks such as writing a PRD or reviewing code. You can turn repeated prompts from this process into skills for your chosen agent. Follow the tool's authoring and installation guidance:

- [Claude Code skills](https://code.claude.com/docs/en/skills) - Official guide to creating and using skills in Claude Code.
- [Codex skills](https://learn.chatgpt.com/docs/build-skills) - Official guide to building skills for Codex.

## Claude Plugins

Plugins are distribution containers that can include skills, slash commands, subagents, tools (via MCP), and hooks, usually installed into Claude Code with a single action.

They are focused on extending the Claude Code environment itself—defining how and when capabilities show up in your IDE/terminal workflow, and are often shared via marketplaces or repos.

Use the [Claude Code](../ai-coding-tools/ai-agents/claude-code/index.md) and [Codex](../ai-coding-tools/ai-agents/codex.md) resource pages for extensions for your chosen tool. Check each extension's supported tools and installation instructions before reusing it with another agent.

## The Spec-Driven Plugin

The installation and commands in this section describe the **Claude Code** workflow. For Codex, use the shared stage prompts directly, or check the plugin's current documentation for a supported Codex installation before using these commands.

The full methodology on this site is available as a ready-to-use Claude Code plugin. Instead of manually prompting through each phase, the plugin gives you a set of slash commands that orchestrate 15 specialized subagents — one per task — covering every phase from market research to maintenance.

**Install it** by adding the GitHub repo to your Claude Code plugin sources:

```
https://github.com/shlomoc/spec-driven
```

### Commands

The plugin entry point is `/spec-driven`, which tracks sprint state and guides you to the right next step. Each phase also has its own command:

| Command | Phase | What it produces |
|---------|-------|-----------------|
| `/spec-driven` | Orchestrator | Sprint dashboard, state tracking, loop-back detection |
| `/spec-driven:find` | 1. Market research | `specs/market-opportunity.md` |
| `/spec-driven:plan` | 2. Planning | `specs/features.md`, `specs/feature-priorities.md` |
| `/spec-driven:prd` | 3. Requirements | `specs/prd.md` |
| `/spec-driven:techstack` | 4. Tech stack | `specs/tech-stack.md` |
| `/spec-driven:appflow` | 5. App structure | `specs/app-sitemap.md`, `specs/ui-concept.md` |
| `/spec-driven:design` | 6. Architecture | `specs/design-spec.md` |
| `/spec-driven:implement` | 7. Implementation | `specs/implementation-steps.md` + code |
| `/spec-driven:security` | 8. Security audit | `specs/security-audit.md` |
| `/spec-driven:deploy` | 9. Deployment | Deployed application |
| `/spec-driven:document` | 10. Documentation | `docs/` |
| `/spec-driven:maintain` | 11. Maintenance | `specs/maintenance-log.md` |

All spec artifacts are written to a `specs/` folder in your project root, created automatically on first run.

### How to use it

Start with the orchestrator at the beginning of any project or sprint:

```
/spec-driven
```

It reads (or creates) `specs/state.md`, shows you a dashboard of which phases are done, and recommends the next step. You can jump to any phase directly, or let it guide you forward in sequence.

The minimum viable sprint is just four commands:

```
/spec-driven:prd
/spec-driven:design
/spec-driven:implement
/spec-driven:deploy
```

The orchestrator also handles **loop-backs** — when a later phase reveals something wrong in an earlier one (e.g. implementation uncovers a missing feature in the PRD), it records the loop-back in the state file, marks the artifact for revision, and routes you back to the right command.

### Agile, not waterfall

You don't need to complete all 11 phases before shipping. Start with what you need, ship something, then use `/spec-driven:maintain` to collect feedback and feed it into the next sprint. The orchestrator tracks sprint history and increments automatically.
