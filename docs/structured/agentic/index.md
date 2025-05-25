# Agentic Process

## Purpose
Automate code development using agents.

## Input
* `project-prd.md` from previous steps
* `tech-stack.md` from previous steps

## Steps

### 1. Setup [Github Codespace](https://github.com/codespaces/) for your repository. Or [Devpod](https://devpod.sh/)
### 2. Install Cline, Roo
### 3. Bootstrap Roo setup with [create-sparc](https://www.linkedin.com/pulse/automated-code-development-new-sparc-npx-create-sparc-reuven-cohen-8ujwe/)

This configures following for SPARC framework:

- Roo rules
- Boomerang modes on Roo
- MCP servers

### 4. Configure Roo profiles LLM models:

* You can set API Provider to router like Openrouter, Requesty to access different models
* Setup Thinking Profile (with 0.7 temperature)
* Setup Instruct Proflie (with 0.25 temperature)
* Associate thinking modes (Architect, Spec writer..) to thinking profile
* Associate instruct modes (Coder, Debugger ...) to instruct profile
* Export profiles (to use again)

### 5. Configure auto approve for vibe coding

* Configure commands to allow for auto execute (e.g. npm, npx ...)

### 6. Prompt Roo to implement your `project-prd.md` on the `tech-stack.md` 