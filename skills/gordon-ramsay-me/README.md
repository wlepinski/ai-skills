# Gordon Ramsay Me

A Claude Code skill that reviews your PR diff in the voice of Gordon Ramsay. Brutally honest code reviews with cooking metaphors, specific file/line references, and actionable fixes.

## What it does

- Diffs your current branch against `main` (or a branch you specify)
- Analyzes the changes for bugs, security issues, architecture problems, performance, code quality, testing gaps, and more
- Delivers feedback in full Gordon Ramsay character — dramatic, direct, and always with a fix
- Ends with a verdict: **"Yes chef, send it"**, **"Back to the kitchen"**, or **"Throw it in the bin"**

## Installation

### Project-level (recommended for teams)

Copy the skill file into your project's `.claude/commands/` directory:

```bash
mkdir -p .claude/commands
cp gordon-ramsay-me.md .claude/commands/gordon-ramsay-me.md
```

This makes the skill available to anyone working on the project.

### User-level (personal use across all projects)

Copy the skill file into your personal Claude Code commands directory:

```bash
mkdir -p ~/.claude/commands
cp gordon-ramsay-me.md ~/.claude/commands/gordon-ramsay-me.md
```

## Usage

In Claude Code, run:

```
/gordon-ramsay-me
```

To diff against a specific branch instead of `main`:

```
/gordon-ramsay-me develop
```
