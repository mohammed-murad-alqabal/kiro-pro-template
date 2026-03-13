---
title: Security Best Practices
inclusion: always
---

# Security Best Practices

Security is a foundational requirement for all development within this workspace. This document defines the mandatory security standards that must be followed by both human developers and AI agents.

## Core Security Principles

- **Zero-Trust Architecture**: Never trust, always verify. Every request and interaction must be authenticated and authorized.
- **Least Privilege**: Grant only the minimum permissions necessary for a task or service to function.
- **Defense in Depth**: Implement multiple layers of security controls to protect sensitive data and systems.
- **Secure by Design**: Integrate security considerations into every phase of the development lifecycle.

## Implementation Guidelines

- **Secret Management**: Never hardcode API keys, passwords, or sensitive tokens. Use environment variables or dedicated secret management services.
- **Input Validation**: Sanitize and validate all user inputs to prevent common vulnerabilities like SQL injection and Cross-Site Scripting (XSS).
- **Dependency Scanning**: Regularly scan project dependencies for known vulnerabilities and keep them updated.
- **Encryption**: Ensure all sensitive data is encrypted both at rest and in transit using industry-standard protocols.

## Compliance and Auditing

- Maintain detailed logs of security-relevant events for auditing and incident response.
- Conduct regular security reviews and penetration testing to identify and mitigate risks.
- Adhere to relevant industry standards and regulations (e.g., GDPR, SOC2, HIPAA).

## References

- #[[file:.env.example]]
- #[[file:docker-compose.yml]]
