# SPARC with Roo Code

## Steps

### 1. Install Cline, Roo
### 2. Bootstrap Roo setup with [create-sparc](https://github.com/ruvnet/rUv-dev)

```bash
npx create-sparc init
```


This configures following for SPARC framework:

- Roo rules
- Boomerang modes on Roo
- MCP servers

### 3. Configure Roo profiles LLM models:

* You can set API Provider to router like Openrouter, Requesty to access different models
* Setup Thinking Profile (with 0.7 temperature)
* Setup Instruct Proflie (with 0.25 temperature)
* Associate thinking modes (Architect, Spec writer..) to thinking profile
* Associate instruct modes (Coder, Debugger ...) to instruct profile
* (Optional: Export profiles)

### 4. Configure auto approve for vibe coding

* Configure commands to allow for auto execute (e.g. npm, npx ...)

### 5. Prompt Roo to implement your `prd.md` on the `tech-stack.md` 

* Select the "⚡️ SPARC Orchestrator" mode in Roo Code and describe your project goal