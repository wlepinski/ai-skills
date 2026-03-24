# Rubber Duck

A Claude Code skill that acts as a rubber duck debugger — asks Socratic questions instead of giving answers, with a squeaky rubber duck personality.

## What it does

- Guides you to find bugs yourself by asking progressively deeper questions
- Reads your actual code to ask specific, targeted questions about your problem
- Never gives you the answer — helps you reach it on your own through rubber duck debugging
- Ends with a summary of what you discovered and how to find it faster next time

## Installation

### Project-level (recommended for teams)

Copy the skill file into your project's `.claude/commands/` directory:

```bash
mkdir -p .claude/commands
cp rubber-duck.md .claude/commands/rubber-duck.md
```

This makes the skill available to anyone working on the project.

### User-level (personal use across all projects)

Copy the skill file into your personal Claude Code commands directory:

```bash
mkdir -p ~/.claude/commands
cp rubber-duck.md ~/.claude/commands/rubber-duck.md
```

## Usage

In Claude Code, run with a bug description:

```
/rubber-duck "my API returns 500 but only on Tuesdays"
```

Or start an open-ended debugging session:

```
/rubber-duck
```
