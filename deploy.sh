#!/bin/bash
# 一键部署简历到 GitHub Pages

REPO_NAME="resume"
GITHUB_USER="你的GitHub用户名"

cd /Users/lynnsean/.openclaw/workspace/resume

# 初始化git仓库
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial resume commit"

# 添加远程仓库
git remote add origin "https://github.com/$GITHUB_USER/$REPO_NAME.git"

# 推送到GitHub
git branch -M main
git push -u origin main

echo "✅ 简历已推送到 GitHub!"
echo "🌐 访问地址: https://$GITHUB_USER.github.io/$REPO_NAME/resume.html"
