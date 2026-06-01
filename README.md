# Claude Skills 合集

主人 HighFengLei 的 Claude Code skill 收藏仓库喵。

每个 skill 放在 `skills/` 目录下，包含：
- **SKILL.md** — skill 原始定义文件喵
- **SUMMARY.md** — 中文摘要，快速了解作用喵
- **LICENSE.txt** — 许可协议（如有）喵

## 收录的 Skills

| Skill | 来源 | 作用 |
|-------|------|------|
| [frontend-design](skills/frontend-design/) | anthropics/skills | 创建高质量前端界面，避免 AI 审美喵 |
| [karpathy-guidelines](skills/karpathy-guidelines/) | multica-ai/andrej-karpathy-skills | Andrej Karpathy 的编码行为准则喵 |
| [find-skills](skills/find-skills/) | vercel-labs/skills | 搜索和安装第三方技能喵 |
| [skill-creator](skills/skill-creator/) | anthropics/skills | 创建和优化自定义 skill 喵 |

## 使用方法

在项目中使用某个 skill 时，运行以下命令喵：

```bash
# 方式一：从本仓库直接复制
cp -r skills/<skill-name> <你的项目>/.claude/skills/<skill-name>
```

然后重新加载 Claude Code 即可使用喵。
