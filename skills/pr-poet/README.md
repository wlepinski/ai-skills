# PR Poet

A Claude Code skill that generates PR descriptions as poetry — with a real structured summary underneath.

## What it does

- Diffs your current branch against `main` (or a branch you specify)
- Selects a poetic form based on the size of the diff: haiku, limerick, sonnet, epic ballad, or free verse
- Writes a poem that references actual file names, function names, and changes from the diff
- Includes a professional structured summary with changes, motivation, testing notes, and file list

## Installation

### Project-level (recommended for teams)

Copy the skill file into your project's `.claude/commands/` directory:

```bash
mkdir -p .claude/commands
cp pr-poet.md .claude/commands/pr-poet.md
```

This makes the skill available to anyone working on the project.

### User-level (personal use across all projects)

Copy the skill file into your personal Claude Code commands directory:

```bash
mkdir -p ~/.claude/commands
cp pr-poet.md ~/.claude/commands/pr-poet.md
```

## Usage

In Claude Code, run:

```
/pr-poet
```

To diff against a specific branch instead of `main`:

```
/pr-poet develop
```
