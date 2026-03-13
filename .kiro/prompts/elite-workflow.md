```markdown
---
title: Elite Workflow Prompts
description: These prompts are designed to guide AI agents through a high-impact, elite engineering workflow, incorporating metaprogramming principles for structured execution.
version: 1.1.0
authors:
  - Manus AI
  - Mohammed Murad Al-Qabal
keywords:
  - AI agents
  - workflow
  - prompts
  - metaprogramming
  - elite engineering
---

# Elite Workflow Prompts: Metaprogramming for AI Agents

These prompts are designed to guide AI agents through a high-impact, elite engineering workflow, leveraging metaprogramming principles to ensure structured execution, predictable outcomes, and strict adherence to defined standards. Each prompt acts as a mini-program, defining inputs, expected outputs, and conditional logic for the AI agent.

## 1. Requirement Analysis (`/spec`)

**Input**: `user_request` (string), `product_constitution` (reference to `product.md`)
**Output**: `structured_specification` (JSON/YAML adhering to EARS syntax)
**Logic**:

"Analyze the provided `user_request` and generate a `structured_specification` using EARS (Easy Approach to Requirements Syntax). Ensure that all requirements are atomic, testable, and aligned with the `product_constitution` vision. Identify any potential architectural conflicts early. If conflicts are found, propose mitigation strategies."

## 2. Architectural Design (`/design`)

**Input**: `structured_specification` (JSON/YAML), `architectural_principles` (reference to `architectural-principles.md`),
`security_standards` (reference to `security-standards.md`)
**Output**: `detailed_system_design` (JSON/YAML, including data model, API contracts, component interactions), `implementation_plan` (sequenced, discrete tasks)
**Logic**:

"Based on the approved `structured_specification`, create a `detailed_system_design`. You MUST:
1. Reference `architectural_principles` to ensure compliance with Clean Architecture, Micro-Modular Design, and Observability by Design.
2. Reference `security_standards` to ensure Zero-Trust principles are applied, including threat modeling considerations.
3. Define the data model, API contracts, and component interactions with clear boundaries.
4. Create an `implementation_plan` with sequenced, discrete tasks, each with estimated effort and dependencies.
5. If any design decision deviates from `architectural_principles` or `security_standards`, provide a clear justification and seek explicit approval."

## 3. Task Execution (`/executeTask`)

**Input**: `task_details` (JSON/YAML from `implementation_plan`), `tech_stack_guidelines` (reference to `tech.md`),
`agent_steering_guidelines` (reference to `agent-steering.md`)
**Output**: `implemented_code` (files), `test_results` (report), `self_review_report` (Markdown)
**Logic**:

"Implement the assigned `task_details` following elite engineering standards:
1. Write clean, type-safe code as per `tech_stack_guidelines`.
2. Ensure >90% test coverage for all new logic, generating `test_results`.
3. Run all relevant `.kiro/hooks` (e.g., `security-guardrail.kiro.hook`, `architectural-linter.kiro.hook`, `config-guardrail.kiro.hook`) to verify quality and security. If any hook fails, BLOCK execution and report the failure.
4. Perform a self-review against the `agent_steering_guidelines` before submitting, generating a `self_review_report`.
5. Optimize for performance and resource efficiency, documenting any significant optimizations."

## 4. Code Review (`/review`)

**Input**: `implemented_code` (files), `test_results` (report), `self_review_report` (Markdown), `product_constitution` (reference to `product.md`)
**Output**: `review_feedback` (Markdown), `approval_status` (boolean)
**Logic**:

"Review the `implemented_code` and associated `test_results` and `self_review_report` with the mindset of a Google Senior Engineer. Focus on:
1. Long-term codebase health, maintainability, and scalability.
2. Simplicity, readability, and adherence to the project's established patterns and conventions.
3. Compliance with `product_constitution` vision and strategic objectives.
4. Identification of potential technical debt or areas for future improvement.
5. Provide constructive `review_feedback` and determine `approval_status`."
```
