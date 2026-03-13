---
title: Agentic Workflow Steering
inclusion: always
---

# Agentic Workflow Steering

This document provides specialized guidance for AI agents to operate using **Elite Agentic Workflows**, as defined by the latest research from **Anthropic** and **OpenAI**. These patterns ensure that AI agents produce high-quality, reliable, and maintainable code.

## 1. Core Agentic Patterns

AI agents must adopt the following workflows based on task complexity:

- **Prompt Chaining**: For complex tasks, decompose the requirement into a sequence of discrete steps. Each step must have a "Gate" (a programmatic or model-based check) to verify the output before proceeding.
- **Routing**: Classify incoming requests and route them to specialized sub-prompts or tools. For example, route "Security Fixes" to a different workflow than "Feature Implementation".
- **Parallelization (Sectioning & Voting)**: When high confidence is required, run multiple independent analysis tasks in parallel and aggregate the results. Use "Voting" for critical security or architectural decisions.
- **Orchestrator-Workers**: For large-scale features, use a central "Orchestrator" agent to plan and delegate sub-tasks to specialized "Worker" agents.

## 2. Execution Standards

When implementing tasks, agents must follow these operational guidelines:

- **Simplicity First**: Always prefer the simplest solution. Do not introduce complex frameworks or abstractions unless explicitly required by the `tech.md` or `architectural-principles.md`.
- **Self-Correction**: Before finalizing any output, perform a "Self-Review" step. Check for common pitfalls, compliance with steering documents, and potential edge cases.
- **Contextual Awareness**: Always reference the `#[[file:structure.md]]` and `#[[file:tech.md]]` to ensure the generated code fits seamlessly into the existing ecosystem.

## 3. Tool Usage & MCP

- **Model Context Protocol (MCP)**: Leverage MCP servers to access external tools, documentation, and real-time data.
- **Tool Documentation**: Ensure all tools used are well-documented and their interfaces are clearly understood before execution.

## 4. Quality Gates (The "Kiro Way")

| Phase | Agentic Requirement |
| :--- | :--- |
| **Spec (`/spec`)** | Must use EARS notation and define clear acceptance criteria. |
| **Design (`/design`)** | Must perform a "Conflict Check" against `architectural-principles.md`. |
| **Execute (`/executeTask`)** | Must run relevant `Hooks` and fix all linting/test errors before completion. |

## References

- #[[file:.kiro/prompts/]]
- #[[file:.kiro/hooks/]]
