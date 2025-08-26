# Spec-Driven Design

## Purpose
Instead of coding impulsively ("vibe coding"), we shift to a structured approach called "spec-driven design," where we first define what the application needs to do.

## Basic Approach
- Start by having a discussion with your LLM (e.g. Claude or ChatGPT) and create clear requirements for your MVP, then ask it to output a basic PRD (Product Requirements Document). 
- Similarly, define your tech stack. 

For the PRD, below is an example of the expected output format:

```md
# PRD
## Project Overview
## Core requirements
## Flow
## Tech stack
## Deliverables
## Acceptance criteria
## Nice to have (time permitting)
```


- Ask the LLM to create a basic plan and iterate on your plan until you get a 9 or 10, then ask it to output a basic plan/design spec. 
- Note: For the implementation, we're using Claude Code below. 
- Ask it to create CLAUDE.md and Tasks.md based on the PRD and design spec:

```
Create CLAUDE.md outlining everything needed to know regarding this project based on the PRD and design spec. Then, create Tasks.md outlining all phases and steps needed to bring this project to completion.  

Add following rules to CLAUDE.md:
- Keep CLAUDE.md up-to-date based on the project's current state and add any notes or relevant details you'd need to remember between chats. 
- For every task, implement the code and tests, then run the tests to verify the functionality works. 
- Keep Tasks.md up to date based on the project's current state. 
```

Include some general rules in your global CLAUDE.md file like the following:
```md
Communication Style

✅ Ask for clarification if requirements are unclear.
✅ Break down complex tasks into clear steps.
✅ Provide brief explanations for technical decisions.
✅ Explain planned changes before implementation.
✅ For each "done" claim, create one test and run it to verify it works.

Coding Style

Keep files under 500 lines of code
Split by function, not just type (e.g. gpt_summarizer.py not utils.py)
Use descriptive function names (extract_auth_commits, not do_stuff)
```

Add self-reflection prompt like this to your global CLAUDE.md:

```md
Self-Reflection Prompt

After each task, reflect on the following:

✅ Did I understand the requirements correctly?
✅ Is the code easy to understand and maintain?
✅ Are there any potential issues or edge cases I should be aware of?
✅ Is the code following the coding style guidelines?
✅ Are there any dependencies or tools I need to install?
✅ Are there any tests I need to run?

If you identify any issues or areas for improvement, update CLAUDE.md and Tasks.md accordingly.
```

This prompt from the [GPT-5 prompting guide](https://cookbook.openai.com/examples/gpt-5/gpt-5_prompting_guide) seems to work magically to reduce a lot of testing and back and forth.

```
First, spend time thinking of a rubric until you are confident.
Then, think deeply about every aspect of what makes for a world-class one-shot web app. Use that knowledge to create a rubric that has 5–7 categories.
Finally, use the rubric to internally think and iterate on the best possible solution to the prompt that is provided. Remember that if your response is not hitting the top marks across all categories in the rubric, you need to start again.
```

Note: You can use AI tools other than Claude Code with an [AGENTS.md](https://agents.md/) file that is similar to CLAUDE.md