#!/bin/bash
# Claude Skills 安装脚本 (Linux/macOS) — 从本仓库安装 skill 到目标项目喵
# 用法: ./install.sh <skill-name> <target-project-dir>

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_NAME="$1"
TARGET_DIR="$2"

if [ -z "$SKILL_NAME" ] || [ -z "$TARGET_DIR" ]; then
    echo "用法: ./install.sh <skill-name> <target-project-dir>"
    echo "可用技能:"
    ls "$REPO_DIR/skills/"
    exit 1
fi

SKILL_SOURCE="$REPO_DIR/skills/$SKILL_NAME"
SKILL_TARGET="$TARGET_DIR/.claude/skills/$SKILL_NAME"

if [ ! -d "$SKILL_SOURCE" ]; then
    echo "错误: skill '$SKILL_NAME' 不存在喵"
    exit 1
fi

echo "安装 skill '$SKILL_NAME' 到 $SKILL_TARGET 喵..."
mkdir -p "$SKILL_TARGET"
cp -r "$SKILL_SOURCE"/* "$SKILL_TARGET/"
echo "安装完成喵！"
