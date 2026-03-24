# ai-skills

Custom AI commands and skills for Claude Code.

## Available Skills

| Skill | Description |
|-------|-------------|
| [Gordon Ramsay Me](skills/gordon-ramsay-me/) | PR code review in the voice of Gordon Ramsay |

## Installation

Each skill lives in its own directory under `skills/`. See the skill's README for specific installation instructions.

### Quick Install

To install a skill for your project:

```bash
mkdir -p .claude/commands
cp skills/<skill-name>/<skill-name>.md .claude/commands/
```

To install a skill globally for all your projects:

```bash
mkdir -p ~/.claude/commands
cp skills/<skill-name>/<skill-name>.md ~/.claude/commands/
```
