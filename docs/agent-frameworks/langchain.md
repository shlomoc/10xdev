# **LangChain**

LangChain is the general-purpose building layer for composing prompts, tools, retrievers, and other LLM workflow pieces, which makes it a practical starting point for smaller or more linear applications. 

LangGraph sits one layer up and is better suited to workflows that need explicit state, branching, retry behavior, looping, or longer-running agent coordination.

Deep Agents adds an agent harness on top of the LangChain ecosystem when you want built-in planning, subagents, file-system tooling, and support for more demanding multi-step tasks.

LangSmith fills the observability role across the ecosystem by helping teams trace runs, evaluate behavior, and monitor quality over time. 

A reasonable progression is to start with LangChain, adopt LangGraph when orchestration becomes more complex, use Deep Agents when you want an agent harness, and add LangSmith when you need stronger debugging and evaluation.

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
- [How we build evals for Deep Agents](https://x.com/Vtrivedy10/status/2037203679997018362) X article

## [Deep Agents](https://docs.langchain.com/oss/python/deepagents/overview)
A standalone library in the LangChain ecosystem for building agents with planning, subagents, file-system tools, and other capabilities for complex multi-step tasks

- [Deep Agents Quickstart](https://docs.langchain.com/oss/python/deepagents/quickstart) Build your first deep agent
- [Deep Agents](https://blog.langchain.com/deep-agents/) LangChain blog post introducing Deep Agents
- [Deep Agents CLI](https://docs.langchain.com/oss/python/deepagents/cli) Official CLI docs
- [Deep Agents GitHub](https://github.com/langchain-ai/deepagents) Official repository

## [LangSmith](https://www.langchain.com/langsmith): 
A unified observability & evals platform where teams can debug, test, and monitor AI app performance
- [Improving Deep Agents with Harness Engineering](https://x.com/Vtrivedy10/status/2023805578561060992) X thread on how Langchain uses traces to improve agent harnesses

