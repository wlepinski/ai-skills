# ai-skills

Remember when "senior engineer" meant you mass memorized Stack Overflow answers and mass produced JIRA tickets? Yeah, it's 2026 now. We prompt, we vibe-code, we argue with AI about whether a ternary is readable, and half of our "engineering" is writing really good instructions for something smarter than us to follow.

The terminal is the new IDE. The prompt is the new pull request description. And if you're not shipping custom skills and commands for your AI tools, you're basically still mass deploying from an FTP client.

This repo is a collection of **Claude Code skills** — reusable, shareable prompts that turn Claude into specialized tools for your workflow. Think of them as bash aliases for the AI age, except they actually do something useful and you don't have to explain them at a conference talk.

AI skills and commands aren't a trend. They're the new dotfiles. Welcome to the future — it's weird, it's fast, and Gordon Ramsay is reviewing your PRs now.

## Available Skills

| Skill | Description |
|-------|-------------|
| [Gordon Ramsay Me](skills/gordon-ramsay-me/) | PR code review in the voice of Gordon Ramsay |
| [ELI5](skills/eli5/) | Explain code like you're talking to a 5-year-old |
| [Postmortem Prophet](skills/postmortem/) | Future incident postmortems for bugs that haven't happened yet |
| [PR Poet](skills/pr-poet/) | PR descriptions as poetry with a structured summary underneath |
| [Attenborough](skills/attenborough/) | David Attenborough narrates your codebase as a nature documentary |
| [Exit Interview](skills/exit-interview/) | Interview code before deleting it and audit safe removal |
| [Standup Comic](skills/standup/) | Daily standup summaries as a standup comedy routine |
| [Rubber Duck](skills/rubber-duck/) | Socratic rubber duck debugging — asks questions, never gives answers |

## Installation

Clone the repo and run the install script:

```bash
git clone https://github.com/wlepinski/ai-skills.git
cd ai-skills
./install.sh
```

That's it. All skills are symlinked to `~/.claude/commands` — pull the repo anytime to get updates.

### More options

```bash
# Install a specific skill
./install.sh gordon-ramsay-me

# Install into a project instead of globally
./install.sh --project

# Copy files instead of symlinking
./install.sh --copy

# See all available skills
./install.sh --list

# Uninstall
./install.sh --uninstall
```

Run `./install.sh --help` for the full usage guide.
