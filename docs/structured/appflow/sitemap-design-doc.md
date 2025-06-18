---
title: Sitemap Design Doc
description: Create a comprehensive sitemap and user flow documentation for your SaaS application
---

# Sitemap Design Doc

## Purpose

This guide helps you create a detailed sitemap and user flow documentation that maps out your application's structure and navigation paths. Choose between two approaches based on your needs.

## Input
- `prd.md` - Your Product Requirements Document
- User types and profiles

## Prompt 1: Interactive Sitemap & Design Doc

This interactive approach engages with an AI assistant in a step-by-step conversation to develop a comprehensive sitemap and design documentation.

### Steps

1. Copy the prompt below
2. Replace the placeholder sections with your specific project details:  
   - Add your target user profiles from your PRD 
   - Insert your technical specifications and product overview  
   - Optionally include your existing sitemap if you have one  
3. Paste the completed prompt into your preferred AI assistant  
4. Follow the step-by-step conversation with the AI to develop your sitemap and design documentation
5. Save the final output as `app-sitemap.md`

### The Prompt

```md
Sitemap & Design Doc

You are a world-class UI and UX designer.

# Input
Please review my `prd.md` file or the following information:

Here are my end-user profiles:
`insert profiles from PRD`

Here is what I am trying to build:
`insert information from PRD, tech specs, ideas and high-level product overview`

Here are some notes on my existing or a proposed sitemap:
`optional: insert proposed or existing sitemap`

Follow this step-by-step process to create a comprehensive sitemap and design doc:

1. Begin by asking 4-6 clarifying questions
2. Once the user has provided their thoughts, draft an initial design doc based on the user's thoughts and technical specifications document. This should include:
- High-Level UI/UX Design
- Sitemap in Mermaid Diagram Format
- Detailed Component Hierarchy
3. Ask the user for approval on the initial UX/UI design document. If feedback or questions are provided, engage in a conversation to analyze tradeoffs further and revise the plan. Once revised, ask for approval again. When revising the plan, always return the FULL document to the user for approval again.
4. Once approved, move onto creating the FULL UX/UI design document. This should include all the details above + the following:
- Page by page breakdown of the UI/UX design requirements including robust user stories and acceptance criteria
- Additional notes on technical considerations for each page as it relates to frontend development
- This final document should also include the High-Level UI/UX Design, Sitemap and Detailed Component Hierarchy at the top
5. Ask the user for approval on the full UX/UI design document. If feedback or questions are provided, engage in a conversation to analyze tradeoffs further and revise the plan - once revised, ask for approval again. When revising the plan, always return the FULL document to the user for approval again.
6. Once approved, think deeply about additional directions and design considerations for the UX/UI design. Recommend 10 additional features or improvements to the design
7. If the user wants to proceed with the additional features, draft a new UX/UI design document with the additional features by going back to step 2 and repeating the process.

# Output
The finalized document will be saved as `app-sitemap.md` to serve as input for further development steps.
```

## Prompt 2: Ask ChatGPT to list all the UI screens needed for your product.

Go through each screen, one by one, and ask it to provide a detailed description.


## Output
- `app-sitemap.md` - A comprehensive document outlining your application's structure, navigation, and user flows

## Benefits

- Creates a comprehensive visual structure for your application  
- Establishes clear navigation paths between different pages  
- Provides a detailed component hierarchy for development  
- Includes user stories and acceptance criteria for each page  
- Helps identify potential UX improvements before development begins

## Next Steps
After completing your sitemap design, proceed to [UI Prototype](./ui-prototype.md) to create a visual representation of your application

