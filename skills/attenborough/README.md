# Attenborough

A Claude Code skill that narrates your codebase like a David Attenborough nature documentary — with hushed wonder, nature metaphors, and dramatic pacing.

## What it does

- Explores your project structure and maps the digital ecosystem — apex predators, symbiotic relationships, parasites, and endangered species
- Narrates code behavior, architecture, and data flow as a nature documentary with specific file and line references
- Identifies drama in the codebase: tight coupling, race conditions, circular dependencies, and other ecological tensions
- Ends with an ecosystem health rating from "A thriving ecosystem" to "Facing extinction"

## Installation

### Project-level (recommended for teams)

Copy the skill file into your project's `.claude/commands/` directory:

```bash
mkdir -p .claude/commands
cp attenborough.md .claude/commands/attenborough.md
```

This makes the skill available to anyone working on the project.

### User-level (personal use across all projects)

Copy the skill file into your personal Claude Code commands directory:

```bash
mkdir -p ~/.claude/commands
cp attenborough.md ~/.claude/commands/attenborough.md
```

## Usage

In Claude Code, run:

```
/attenborough
```

To narrate a specific directory:

```
/attenborough src/api/
```

To narrate a specific file:

```
/attenborough src/utils/cache.ts
```
