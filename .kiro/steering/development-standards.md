---
title: Development Standards
inclusion: always
---

# Development Standards

This document outlines the core development standards and principles for this workspace. All code generation and architectural decisions must adhere to these guidelines.

## Core Principles

- **Clean Architecture**: Maintain a clear separation of concerns between business logic, data access, and presentation layers.
- **DRY (Don't Repeat Yourself)**: Abstract common logic into reusable components or utilities.
- **KISS (Keep It Simple, Stupid)**: Prefer simple, readable solutions over complex, over-engineered ones.
- **Type Safety**: Ensure strict typing across the entire stack to catch errors early.

## Coding Conventions

- Use meaningful, descriptive names for variables, functions, and classes.
- Follow the language-specific style guides (e.g., PEP 8 for Python, Airbnb for JavaScript/TypeScript).
- Document complex logic with clear, concise comments.
- Ensure all public APIs and components have appropriate documentation.

## Git Workflow

- Use descriptive commit messages following the [Conventional Commits](https://www.conventionalcommits.org/) specification.
- Work in feature branches and submit Pull Requests for review.
- Ensure the main branch is always in a deployable state.

## References

- #[[file:package.json]]
- #[[file:tsconfig.json]]
- #[[file:pyproject.toml]]
