# Standup

A Claude Code skill that turns your daily standup into a standup comedy routine, powered by your actual git history.

## What it does

- Reads your recent git log, diff stats, and working tree status
- Translates commits into comedic bits with setup-punchline structure
- Delivers a complete standup update (yesterday, today, blockers) as a comedy set
- Ends with a rating: **"Standing ovation!"**, **"Decent set."**, **"Tough crowd."**, or ***crickets***

## Installation

### Project-level (recommended for teams)

Copy the skill file into your project's `.claude/commands/` directory:

```bash
mkdir -p .claude/commands
cp standup.md .claude/commands/standup.md
```

This makes the skill available to anyone working on the project.

### User-level (personal use across all projects)

Copy the skill file into your personal Claude Code commands directory:

```bash
mkdir -p ~/.claude/commands
cp standup.md ~/.claude/commands/standup.md
```

## Usage

In Claude Code, run:

```
/standup
```

To summarize the whole week:

```
/standup week
```

To cover the last N days:

```
/standup 3
```
