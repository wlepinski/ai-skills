#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$REPO_DIR/skills"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
BOLD='\033[1m'
NC='\033[0m'

usage() {
  cat <<EOF
Usage: ./install.sh [options] [skill-name ...]

Install ai-skills as symlinks into your Claude Code commands directory.

Options:
  --global        Install to ~/.claude/commands (default)
  --project       Install to .claude/commands in the current working directory
  --copy          Copy files instead of symlinking
  --list          List all available skills
  --uninstall     Remove installed skill symlinks
  -h, --help      Show this help message

Examples:
  ./install.sh                      # Install all skills globally
  ./install.sh gordon-ramsay-me     # Install a single skill globally
  ./install.sh --project eli5       # Install a single skill into current project
  ./install.sh --copy               # Copy all skills instead of symlinking
  ./install.sh --uninstall          # Remove all installed skill symlinks
EOF
}

list_skills() {
  echo -e "${BOLD}Available skills:${NC}"
  echo ""
  for skill_dir in "$SKILLS_DIR"/*/; do
    [ -d "$skill_dir" ] || continue
    name=$(basename "$skill_dir")
    # grab the first line of the skill README for a description
    desc=""
    if [ -f "$skill_dir/README.md" ]; then
      desc=$(sed -n '3p' "$skill_dir/README.md")
    fi
    echo -e "  ${GREEN}$name${NC}  $desc"
  done
}

# Defaults
TARGET_DIR="$HOME/.claude/commands"
MODE="symlink"
ACTION="install"
SKILLS=()

# Parse args
while [[ $# -gt 0 ]]; do
  case "$1" in
    --global)    TARGET_DIR="$HOME/.claude/commands"; shift ;;
    --project)   TARGET_DIR="$(pwd)/.claude/commands"; shift ;;
    --copy)      MODE="copy"; shift ;;
    --list)      list_skills; exit 0 ;;
    --uninstall) ACTION="uninstall"; shift ;;
    -h|--help)   usage; exit 0 ;;
    -*)          echo -e "${RED}Unknown option: $1${NC}"; usage; exit 1 ;;
    *)           SKILLS+=("$1"); shift ;;
  esac
done

# If no specific skills provided, use all
if [ ${#SKILLS[@]} -eq 0 ]; then
  for skill_dir in "$SKILLS_DIR"/*/; do
    [ -d "$skill_dir" ] || continue
    SKILLS+=("$(basename "$skill_dir")")
  done
fi

# Uninstall
if [ "$ACTION" = "uninstall" ]; then
  removed=0
  for name in "${SKILLS[@]}"; do
    target="$TARGET_DIR/${name}.md"
    if [ -L "$target" ] || [ -f "$target" ]; then
      rm "$target"
      echo -e "  ${RED}Removed${NC} $target"
      ((removed++))
    fi
  done
  if [ $removed -eq 0 ]; then
    echo -e "${YELLOW}Nothing to remove.${NC}"
  else
    echo -e "\n${GREEN}Uninstalled $removed skill(s).${NC}"
  fi
  exit 0
fi

# Install
mkdir -p "$TARGET_DIR"
installed=0

for name in "${SKILLS[@]}"; do
  source="$SKILLS_DIR/$name/${name}.md"

  if [ ! -f "$source" ]; then
    echo -e "  ${RED}Skill not found:${NC} $name"
    continue
  fi

  target="$TARGET_DIR/${name}.md"

  if [ "$MODE" = "copy" ]; then
    cp "$source" "$target"
    echo -e "  ${GREEN}Copied${NC} $name -> $target"
  else
    ln -sf "$source" "$target"
    echo -e "  ${GREEN}Linked${NC} $name -> $target"
  fi
  ((installed++))
done

echo ""
if [ "$MODE" = "symlink" ]; then
  echo -e "${GREEN}${BOLD}Installed $installed skill(s) as symlinks.${NC}"
  echo -e "${YELLOW}Pull this repo to get updates automatically.${NC}"
else
  echo -e "${GREEN}${BOLD}Installed $installed skill(s) as copies.${NC}"
fi
