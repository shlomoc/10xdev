---
title: One API Key for Every Model
description: Stop juggling a different API key and billing account for every AI provider. Point your coding tools at one OpenAI-compatible gateway and switch models without rewiring your setup.
author: "@wujian8150"
---

# One API Key for Every Model

Most developers I know didn't plan to end up with five AI subscriptions. It happens one tool at a time: GPT for drafting, Claude for the long refactor, Gemini for the cheap bulk job, a local model for the thing you don't want leaving your machine. Each one brings its own key, its own billing page, its own quota surprise at the end of the month. The code you write ends up knowing too much about which company is answering.

There is a simpler shape for this, and it has been around longer than the current model rush: put one gateway in front of all of them, speak one protocol to it, and let the gateway sort out which provider actually does the work.

## The problem is configuration, not capability

Switching models mid-project should be a one-line change. In practice it usually means:

- A new account, a new key, and a new billing method on yet another provider's site.
- A different base URL and a different request format in your tool's settings.
- A second usage dashboard to check when the bill looks wrong.

None of that has anything to do with writing software. It is plumbing, and it gets worse every time a new model worth trying appears — which, lately, is every few weeks.

An API gateway takes that plumbing into one place. Your editor, your agent, and your scripts all talk to the same endpoint, in the same OpenAI-compatible format, with the same key. The model name in the request is what changes, not the wiring.

## What one gateway actually gives you

**One key, one bill.** You create a single API key and fund one account. Usage across OpenAI, Claude, Gemini, and the rest lands on the same statement, so you can see what a week of coding actually cost without opening four dashboards.

**Model switching without rewiring.** Because the gateway speaks the standard OpenAI-compatible protocol, tools that already know how to call an OpenAI-style endpoint — Cursor, Claude Code with a custom base URL, plain `curl`, any LangChain-style client — work against it unchanged. You change the model string, not the client.

**A fallback when a provider is down.** A provider outage at 2 a.m. is not the moment to reconfigure your toolchain. With several providers behind one endpoint, a failed call can fall through to the next model that can do the job, and your agent keeps working.

**Room to experiment cheaply.** Trying a new model stops being a signup project. If the gateway already carries it, you send one request with the new model name and compare the output against what you were using. The cost of curiosity drops to one API call.

## A concrete setup

The shape of the setup is the same whichever gateway you use. Using [AzYun](https://www.azyun.com) — an [AI Models API](https://www.azyun.com) gateway that fronts OpenAI, Claude, Gemini, and other models behind one standard protocol — as the example:

```bash
export AZYUN_API_KEY="sk-..."
curl https://www.azyun.com/v1/chat/completions \
  -H "Authorization: Bearer $AZYUN_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gpt-4o",
    "messages": [{"role": "user", "content": "Explain this function in plain English."}]
  }'
```

That is the whole integration: base URL `https://www.azyun.com/v1`, your key in the header, the model name in the body. In an AI coding tool, the same two values — base URL and key — are what you paste into the custom provider or OpenAI-compatible settings. Everything downstream of that is ordinary API usage.

A practical habit: keep the key in an environment variable or your tool's secret store, never in a file you commit. Gateways hand you one key that reaches many models, which makes it worth protecting like the several keys it replaces.

## Picking the right model for the job

Once switching is cheap, the interesting question stops being "which provider am I locked into" and becomes "which model fits this exact task":

- **Drafting and bulk work** — boilerplate, test scaffolding, docstrings, renaming across a codebase. A fast, inexpensive model is usually the right call; you are paying for volume, not brilliance.
- **The hard refactor** — untangling a module, tracing a bug across three files, reviewing a design decision. This is where you spend on the strongest reasoning model you have, because a wrong answer here costs more than the tokens saved.
- **Long-context jobs** — summarizing a whole repository, or asking questions that need five files open at once. Pick the model with the context window the job actually needs, and check the price per token before you send a 100k-token prompt out of habit.
- **Repetitive agent loops** — an agent that retries, re-reads, and re-checks will burn through calls fast. A mid-tier model with a low per-token price often beats a flagship on total cost for these loops, and the gateway's single usage view is where you notice that.

None of this needs a spreadsheet. Send the same prompt to two models through the gateway, read both answers, and keep a note of which one you reached for second. After a week you will have a feel for it.

## Keeping the bill honest

Pay-as-you-go only stays cheap while you are watching it. Three habits that have saved me real money:

1. **Check usage weekly, not monthly.** A runaway agent loop is a bad day if you catch it on Friday and a bad month if you catch it on the 30th. One dashboard makes this a two-minute check.
2. **Cap the key.** If your gateway supports per-key limits, set one slightly above your normal weekly spend. The cap is there for the day something loops, not for normal work.
3. **Match the model to the job, every time.** The most expensive token is the flagship model answering a question a cheaper model would have answered identically. The gateway makes the swap free; the discipline is remembering to do it.

## What to watch out for

A gateway is a middleman, and middlemen have failure modes. Latency adds a hop, so if you are streaming tokens into an editor, measure whether the extra hop matters for your setup before committing a whole workflow to it. Provider-specific features — a vendor's native tool-use format, its image model, its fine-tuning API — may not survive translation into the common protocol, so keep the native route open for the one job that genuinely needs it. And the obvious one: a single key that reaches every model is a single key worth rotating if it ever leaks.

None of those are reasons to go back to five keys and five bills. They are reasons to pick a gateway deliberately and keep one native account around for the edge case.

## The short version

Your coding tools should not care which company answers. One key, one endpoint, one bill — and the model name becomes a choice you make per task, not a migration you dread. Set the base URL once, keep the key out of your repo, and spend the time you used to spend on provider admin on the actual work.

## References

- [AzYun](https://www.azyun.com) — unified [AI API gateway](https://www.azyun.com): one standard API protocol for OpenAI, Claude, Gemini, and other models, with high-concurrency load balancing and transparent pay-as-you-go billing.
