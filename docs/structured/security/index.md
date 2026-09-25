---
title: Security Implementation
description: Implement security best practices and measures
---
# Security

## Purpose
Identify and mitigate potential security vulnerabilities.

## Input

* Codebase

## Steps

### 1. Use the [Security Scan Prompt](./security-scan.md)
### 2. Implement recommended security improvements
### 3. Verify fixes with security testing

Use the Security Scan Prompt with either Claude Code or Codex. Tool-specific shortcuts and extensions are optional:

- **Claude Code:** [`/security-review`](https://code.claude.com/docs/en/commands) reviews changes on your current branch for security vulnerabilities.
- **Codex:** Use the [Codex Security plugin](https://learn.chatgpt.com/docs/security/plugin) for repository scans, reviews of code changes, and fixing and verifying findings. You can also use the Security Scan Prompt directly.

For either tool, validate reported findings and verify fixes with the relevant tests.

### Codex Security Plugin

Install and enable **Codex Security** from the app's Plugins section, or use `/plugins` in Codex CLI. Follow the [official plugin quickstart](https://learn.chatgpt.com/docs/security/plugin) for setup and access requirements.

Choose the skill that matches your task:

| Skill | Use case |
| --- | --- |
| `$codex-security:security-scan` | Scan a repository or scoped folder for vulnerabilities. |
| `$codex-security:security-diff-scan` | Review a pull request, commit, branch diff, or working-tree changes. |
| `$codex-security:deep-security-scan` | Run a more thorough assessment with repeated discovery passes. |
| `$codex-security:fix-finding` | Fix and validate a reviewed security finding. |
| `$codex-security:verify-fix` | Check whether a security fix addresses the reported vulnerability. |

For example, to review a feature branch before merging:

```text
Use $codex-security:security-diff-scan to review this branch against main.
Report validated findings, supporting evidence, and coverage gaps without modifying code.
```

Replace `main` with your target branch. Review the findings before requesting fixes, then verify each fix. Keep the plugin's generated reports and supporting artifacts together, and record the reviewed findings, remediation status, and verification results in `security-audit.md` for the next stage of this process.

## Output

* `security-audit.md` - Security assessment with identified vulnerabilities and fixes
* Secure codebase with implemented fixes

## Next Steps

- Proceed to [Deployment](../deployment/index.md) with your secure codebase and `security-audit.md`
