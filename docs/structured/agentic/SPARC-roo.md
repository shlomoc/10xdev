# SPARC with Roo Code

## Overview

[SPARC](https://gist.github.com/ruvnet/27ee9b1dc01eec69bc270e2861aa2c05) stands for Specification, Pseudocode, Architecture, Refinement, and Completion.

This workflow is designed for structured implementation when you already have:

* `prd.md`
* `tech-stack.md`

## Steps

### 1. Install Cline, Roo

### 2. Bootstrap Roo setup with [create-sparc](https://github.com/ruvnet/rUv-dev)

```bash
npx create-sparc init
```

This configures the following for the SPARC workflow:

- Roo rules
- Boomerang modes on Roo
- MCP servers

### 3. Configure Roo profiles LLM models:

* You can set API Provider to router like Openrouter, Requesty to access different models
* Set up a Thinking Profile (with 0.7 temperature)
* Set up an Instruct Profile (with 0.25 temperature)
* Associate thinking modes (Architect, Spec writer..) to thinking profile
* Associate instruct modes (Coder, Debugger ...) to instruct profile
* (Optional: Export profiles)

### 4. Configure auto approve for vibe coding

* Configure commands to allow for auto execute (e.g. npm, npx ...)

### 5. Prompt Roo to implement your `prd.md` on the `tech-stack.md` 

* Select the "⚡️ SPARC Orchestrator" mode in Roo Code and describe your project goal

## Reference

[Bootstrap Roo setup with create-sparc](https://www.linkedin.com/pulse/automated-code-development-new-sparc-npx-create-sparc-reuven-cohen-8ujwe/) Article
