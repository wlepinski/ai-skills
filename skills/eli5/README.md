# ELI5 — Explain Like I'm 5

A Claude Code skill that explains code like you're talking to a 5-year-old. Complex concepts become stories about cookies, dinosaurs, building blocks, and playground adventures.

## What it does

- Reads any file, directory, or function you point it at and breaks it down into kid-friendly analogies
- Maps every technical concept to something tangible — toys, snacks, playground rules, animals
- Shows the real code alongside each analogy so you actually learn the connection
- Ends with a "Bedtime Summary" and a complexity rating from "Nap time!" to "Recess chaos!"

## Installation

### Project-level (recommended for teams)

Copy the skill file into your project's `.claude/commands/` directory:

```bash
mkdir -p .claude/commands
cp eli5.md .claude/commands/eli5.md
```

This makes the skill available to anyone working on the project.

### User-level (personal use across all projects)

Copy the skill file into your personal Claude Code commands directory:

```bash
mkdir -p ~/.claude/commands
cp eli5.md ~/.claude/commands/eli5.md
```

## Usage

In Claude Code, run:

```
/eli5 src/auth/middleware.ts
```

To explain an entire directory:

```
/eli5 src/utils/
```

To pick interactively (no arguments):

```
/eli5
```
