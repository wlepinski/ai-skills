# Exit Interview

A Claude Code skill that conducts an empathetic HR-style exit interview with code that's about to be deleted — then audits whether it's actually safe to remove.

## What it does

- Reads the target code and researches its history via git log to understand its tenure and contributions
- Narrates a dramatic exit interview dialogue where the code reflects on its time at the company
- Performs a thorough offboarding audit: import analysis, transitive dependencies, runtime references, test coverage, type exports, side effects, and database/API impact
- Delivers a final exit status: clean exit, two weeks notice, retention discussion, or "you can never leave"

## Installation

### Project-level (recommended for teams)

Copy the skill file into your project's `.claude/commands/` directory:

```bash
mkdir -p .claude/commands
cp exit-interview.md .claude/commands/exit-interview.md
```

This makes the skill available to anyone working on the project.

### User-level (personal use across all projects)

Copy the skill file into your personal Claude Code commands directory:

```bash
mkdir -p ~/.claude/commands
cp exit-interview.md ~/.claude/commands/exit-interview.md
```

## Usage

In Claude Code, run:

```
/exit-interview src/legacy/old-api.ts
```

To interview a specific dependency:

```
/exit-interview lodash
```

To interview a function or module within a file:

```
/exit-interview src/utils/helpers.ts:formatDate
```
