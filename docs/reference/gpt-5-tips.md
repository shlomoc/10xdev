# Tips for prompting GPT-5

## [OpenAI's gpt-5-for-coding-cheatsheet](https://cdn.openai.com/API/docs/gpt-5-for-coding-cheatsheet.pdf)

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



