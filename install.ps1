param(
    [Parameter(Mandatory = $true)]
    [string]$SkillName,
    [Parameter(Mandatory = $true)]
    [string]$TargetDir
)

# Claude Skills 安装脚本 — 从本仓库安装 skill 到目标项目喵
# 用法: .\install.ps1 -SkillName frontend-design -TargetDir D:\path\to\project

$RepoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$SkillSource = Join-Path $RepoRoot "skills" $SkillName

if (-not (Test-Path $SkillSource)) {
    Write-Error "Skill '$SkillName' 不存在喵。可用技能：$(Get-ChildItem (Join-Path $RepoRoot 'skills') -Directory | ForEach-Object { $_.Name })"
    exit 1
}

$SkillTarget = Join-Path $TargetDir ".claude" "skills" $SkillName

Write-Host "安装 skill '$SkillName' 到 $SkillTarget 喵..."

# 创建目标目录（如果不存在）
New-Item -ItemType Directory -Path $SkillTarget -Force | Out-Null

# 复制所有文件
Copy-Item -Path "$SkillSource\*" -Destination $SkillTarget -Recurse -Force

Write-Host "安装完成喵！请在 CLAUDE.md 中记录本仓库为 skill 来源喵。"
