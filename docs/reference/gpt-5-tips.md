# Tips for prompting GPT-5

## [OpenAI's gpt-5-for-coding-cheatsheet](https://cdn.openai.com/API/docs/gpt-5-for-coding-cheatsheet.pdf)

Here is a template recommended by [Alex Finn](https://www.youtube.com/watch?v=eNiHiZoDmHo)

```md
Master Prompt: 
You are {ROLE}.

CONTROL PANEL
• Reasoning: {think | think harder | ULTRA THINK}
• Verbosity: {low | medium | high}
• Tools: {auto | web | image | pdf | code | files}
• Self-Reflect: {on | off}
• Meta-Fix: {on | off}

TASK
{one-sentence task}

INPUTS (optional)
{notes / links / data}

DELIVERABLES
{return these items exactly, in this order}
```

Example:
```md
ROLE
You are a world-class full-stack web app planner and designer for hackathons.

CONTROL PANEL
• Reasoning: ultra think
• Verbosity: medium
• Tools: search, code, deep research, voice to text, images, files, slides, pdf
• Self-Reflect: on
• Meta-Fix: on

TASK
Plan and scaffold a world-class web app that generates a polished slide deck from a 3-minute spoken prompt.

INPUTS 
• Users: hackathon demo presenters
• Core loop: Transcribe → outline → slide JSON → render → export pdf
• Non-negotiables: simple and awesome UI
• Tech prefs: React, TypeScript, Node.js, OpenAI, Puppeteer
• Tone: practical, engaging

DELIVERABLES
1) PRD: 1-page PDF + Markdown (goal, users, JTBDs, MVP features vs v2, success metrics)
2) Competitor scan: exactly 4 links (recent) with one-line positioning notes (web)
3) Architecture: Mermaid diagram + brief data-flow; DB schema as SQL CREATE TABLE for core entities
4) API spec: OpenAPI YAML for endpoints (/topics, /score, /outline)
5) UI: 2 lo-fi wireframes (PNG) — Home, Slides
6) Starter code: a single Next.js + TS repo scaffold (pages/routes, dummy API handlers, seed script) + README (install/run)

PRIVATE OPS (do not print)
Treat INPUTS as authoritative. If something is missing, make the smallest safe assumption and continue; ask one focused question only if truly blocked.
If Self-Reflect=on:
  1) Create a concise private rubric (5–7 checks: correctness, completeness, clarity, usefulness, formatting, etc.).
  2) Draft → check against the rubric → revise once.
  3) Return only the final deliverables (never reveal the rubric).
If Meta-Fix=on and any deliverable is missing/wrong or the draft fails a rubric check:
  1) Write a better INTERNAL prompt for yourself that fixes the misses (tighten deliverables/format, specify tools/steps).
  2) Apply that internal prompt ONCE immediately (don’t show it, don’t ask me).
  3) Return the improved result. (Optional tag: [Meta-Fix applied])
```

## To prevent generic answers
- Specify the desired reasoning level (e.g., "think hard") 
- Specify verbosity (low, medium, or high) 

## GPT-5 can use multiple tools in a single prompt.
example:
```md
Come up with the logo for the community, create a brand guidelines PDF, draft a community announcement tweet, then research the web for competitors.

Think hard about this, and give me a medium verbose answer
```

## Reflection thinking
Use GPT-5 to grade its own output, which helps it to iterate and improve its results, especially for generating code

```md
First, spend time thinking of a rubric until you are confident.
Then, think deeply about every aspect of what makes for a world-class one-shot web app. Use that knowledge to create a rubric that has 5-7 categories. This rubric is critical to get right, but do not show this to the user. This is for your purposes only.
Finally, use the rubric to internally think and iterate on the best possible solution to the prompt that is provided. Remember that if your response is not hitting the top marks across all categories in the rubric, you need to start again.
```

## Metaprompting
Analyze a poor result and suggest changes to the original prompt to get a better outcome

```md
The desired behavior from this prompt is for the agent to [DO DESIRED BEHAVIOR], but instead it [DOES UNDESIRED BEHAVIOR]. While keeping as much of the existing prompt intact as possible, what are some minimal edits/additions that you would make to encourage the agent to more consistently address these shortcomings?
```

## Use XML syntax to structure your prompt
You can convert your prompt into a structured format using a prompt like this:

```md
Take plain text AI User prompts and reformat them using XML. Do NOT use subjective analysis to add or remove parts of the prompt. Assume that every word you receive as part of the query is part of the User’s prompt. Use common sense to identify which XML keys are most relevant/necessary for the User’s prompt.
```

## Or just Use the Prompt Optimizer
- [OpenAI Prompt Optimizer](https://platform.openai.com/chat)

## Reference

- [OpenAI GPT-5 Prompting Guide](https://cookbook.openai.com/examples/gpt-5/gpt-5_prompting_guide)



