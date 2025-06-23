# Meta-Prompt Workflow

This document outlines a systematic approach to creating and refining prompts using AI assistance.

## Step 1: Initial Prompt Creation

Run this prompt with ChatGPT o3 or Claude Opus:

```text
Adopt the role of an expert prompt engineer.
Ask me fast questions (role, instructions, reasoning steps, output format, examples, context/audience, tone) before you create a detailed prompt for me.

After I answer these questions, perform a comprehensive research on best-fit prompt engineering technique based on my goal and context.

Perform this task thoroughly.
```

## Step 2: Run the generated prompt

## Step 3: After receiving the first version of your prompt, use this evaluation prompt:

```text
Rate this prompt out of 10. List all strengths and weaknesses of this prompt, and proceed to improving so it's 10/10.

Response:
Improved prompt (aiming for 10/10)
...
```

## Step 4: Testing and Iteration

1. Test the prompt in a new chat
2. If the output needs improvement, return to the prompt creation chat and use this feedback prompt:

```text
Now analyze my feedback after testing the prompt:

Weaknesses:
[LIST ALL BAD THINGS ABOUT THE PROMPT]
Strengths:
[LIST BRIEFLY WHAT YOU LIKE ABOUT THE PROMPT]
Ideas:
[IF YOU HAVE MORE IDEAS TO IMPROVE IT, LIST THEM HERE]

Considering my feedback above, proceed to surgically improving the prompt, focusing on the areas I listed as weaknesses.
```

## Step 5: Iterative Refinement

Continue the cycle of:

* Testing the prompt
* Sharing feedback
* Refining the prompt
* Testing again

Repeat this process until you achieve the desired results.

