# Ideas to Development Plan
## Purpose

Collaborate with AI to define your project scope, target audience, and features before development starts. This is the first step in the structured development process.

## Input
- Your initial app concept/idea
- Market insights (optional)
- Domain knowledge (optional)

## Steps

### 1. Replace `{{IDEA}}` with your initial app concept
### 2. Engage in conversation with the AI about your idea
### 3. Review and refine the specification after each exchange
### 4. Once complete, save the final specification as `market-opportunity.md` for the next step

## Prompt
<pre>
```md

I have a web app idea I'd like to develop. Here's my initial concept: `{{IDEA}}`. Help me refine it, validate the market, uncover monetization options, and outline a roadmap from MVP to first $10k in revenue. I want to collaborate with you to turn this into a detailed project request. Let's iterate together until we have a complete request that I find to be satisfactory. After each of our exchanges, please return the current state of the request in this format:

# Project Name
## Market Opportunity
[Description of market need and opportunity]
## Project Description
[Description]
## Target Audience
[Target users]
## Desired Features
### [Feature Category]
- [ ] [Requirement]
- [ ] [Sub-requirement]
## Design Requests
- [ ] [Design requirement]
- [ ] [Design detail]
## Other Notes
- [ ] [Additional considerations]

Please:
1. Ask me questions about any areas that need more detail.
2. Suggest features or considerations I might have missed.
3. Help me organize requirements logically.
4. Show me the current state of the spec after each exchange.
5. Flag any potential technical challenges or important decisions.

We'll continue iterating and refining the request until I indicate it's complete and ready.

## Final Output
When we complete our discussion, save the final document as `features.md` to use as input for feature prioritization.

```
</pre>

## Output
- `features.md` - A comprehensive document outlining your project idea, target audience, market opportunity, and initial feature set

## Benefits

- Clarifies your vision before development begins.
- Identifies potential challenges early.
- Creates a structured document for sharing with stakeholders.
- Ensures all critical requirements are captured.
- Simplifies the development process with clear specifications.

## Next Steps
After generating `features.md`, proceed to [Feature Prioritization](feature-prioritization.md) using this document as input to prioritize your features.