# Postmortem from the Future

A Claude Code skill that writes a postmortem for an incident that hasn't happened yet — by analyzing the code you're about to ship through the eyes of an exhausted, battle-scarred SRE from 3 months in the future.

## What it does

- Diffs your current branch against `main` (or a branch you specify)
- Analyzes the changes for production-killing issues: race conditions, missing error handling, silent failures, N+1 queries, hardcoded values, missing auth checks, and more
- Writes a full incident postmortem in past tense — complete with timeline, root cause analysis, impact assessment, and concrete fixes with code suggestions
- Ends with a prevention rating: from **"False alarm, go back to sleep"** to **"Update your resume"**

## Installation

### Project-level (recommended for teams)

Copy the skill file into your project's `.claude/commands/` directory:

```bash
mkdir -p .claude/commands
cp postmortem.md .claude/commands/postmortem.md
```

This makes the skill available to anyone working on the project.

### User-level (personal use across all projects)

Copy the skill file into your personal Claude Code commands directory:

```bash
mkdir -p ~/.claude/commands
cp postmortem.md ~/.claude/commands/postmortem.md
```

## Usage

In Claude Code, run:

```
/postmortem
```

To diff against a specific branch instead of `main`:

```
/postmortem develop
```
