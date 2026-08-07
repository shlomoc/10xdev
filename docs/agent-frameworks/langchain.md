# **LangChain**

LangGraph, LangChain, and Deep Agents form three composable layers of LangChain's open source agent stack. LangGraph is the runtime, LangChain is the framework and integrations layer, and Deep Agents is the agent harness. Each layer trades abstraction for control, so builders can move between them or combine them rather than committing to only one.

[View the LangChain agent stack pyramid](../img/langchain-pyramid.jpeg)

Deep Agents is the highest-level starting point and the best fit for most new agents. It packages context-engineering practices such as file-system-backed context, subagents, skills, memory, and summarization into an opinionated harness designed for capable, longer-running agents.

LangChain provides a minimal, unopinionated agent loop—an LLM repeatedly choosing and calling tools—plus model and tool integrations. Reach for its `create_agent` abstraction when you want less built-in context management, need finer control over the agent loop, or plan to assemble a bespoke harness. Middleware can add deterministic steps such as approvals, verification, or summarization around that loop.

LangGraph is the lower-level runtime beneath both LangChain agents and Deep Agents. It is the right choice when a standard agent loop is not enough, when a workflow mixes deterministic and agentic steps, or when you need to encode custom branching and control flow directly. Its durable execution, human-in-the-loop, fault-tolerance, and observability primitives support production workflows.

The practical rule of thumb is to start with Deep Agents, use LangChain when you want a leaner harness and finer control, and use LangGraph when you need a fully custom workflow or maximum determinism. The layers remain composable: LangChain or Deep Agents can run inside a larger LangGraph workflow, and custom LangGraph workflows can be exposed as subagents.

LangSmith complements all three layers with deployment, tracing, evaluation, and production observability.

Because this ecosystem moves quickly, the most reliable way to check current APIs and examples is often the official docs MCP server rather than older blog posts or tutorials. LangChain provides an MCP endpoint at `https://docs.langchain.com/mcp`, which can be used from tools to fetch up-to-date documentation.

## [LangChain](https://www.langchain.com/langchain)
The core framework for composing modular LLM applications and agent workflows

- [LangChain Documentation](https://docs.langchain.com/) Official docs
- [LangChain Products and Concepts](https://docs.langchain.com/oss/python/concepts/products) Official overview of the LangChain product landscape
- [Langchain Academy](https://academy.langchain.com/collections) All courses from Langchain Academy
- [LangChain/LangGraph blog](https://blog.langchain.com/) Official blog
- [LangChain GitHub Organization](https://github.com/langchain-ai) Official GitHub organization
- [Chat LangChain](https://chat.langchain.com/) Official LangChain chatbot for docs and product questions
- [The Complete Beginner's Guide to LangChain](https://x.com/Meer_AIIT/status/2020900863699509353) X article

## [LangGraph](https://www.langchain.com/langgraph) 
An open source AI agent framework designed to build, deploy and manage complex generative AI agent workflows

- [AI Agents in LangGraph](https://learn.deeplearning.ai/courses/ai-agents-in-langgraph/) Intro from deeplearning.ai
- [Long-Term Agentic Memory With LangGraph](https://learn.deeplearning.ai/courses/long-term-agentic-memory-with-langgraph/) Tutorial from deeplearning.ai

## [Deep Agents](https://docs.langchain.com/oss/python/deepagents/overview)
A standalone library in the LangChain ecosystem for building agents with planning, subagents, file-system tools, and other capabilities for complex multi-step tasks

- [Deep Agents Quickstart](https://docs.langchain.com/oss/python/deepagents/quickstart) Build your first deep agent
- [Deep Agents](https://blog.langchain.com/deep-agents/) LangChain blog post introducing Deep Agents
- [Deep Agents CLI](https://docs.langchain.com/oss/python/deepagents/cli) Official CLI docs
- [Deep Agents GitHub](https://github.com/langchain-ai/deepagents) Official repository
- [How we build evals for Deep Agents](https://blog.langchain.com/how-we-build-evals-for-deep-agents/) LangChain blog post
- [Your harness, your memory](https://blog.langchain.com/your-harness-your-memory/) LangChain blog post on agent harnesses, memory, and lock-in
- [Why managed agents are the next big thing in agent building](https://x.com/hwchase17/status/2085780032031760694) X article by Harrison Chase on Managed Deep Agents and production agent infrastructure

## [LangSmith](https://www.langchain.com/langsmith) 
A unified observability & evals platform where teams can debug, test, and monitor AI app performance

- [Improving Deep Agents with Harness Engineering](https://blog.langchain.com/improving-deep-agents-with-harness-engineering/) Blog post on how Langchain uses traces to improve agent harnesses
