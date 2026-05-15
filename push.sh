#!/bin/bash
cd /storage/emulated/0/MT2/HermesApp-main
git init
git remote remove origin 2>/dev/null
# 使用环境变量存储 token，避免硬编码
GIT_TOKEN=${GITHUB_TOKEN:-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}
git remote add origin https://${GIT_TOKEN}@github.com/tyj2001/HermesApp.git
cat > .gitignore << 'EOF'
.gradle/
build/
app/build/
*.iml
.local.properties
EOF
git add .
git commit -m "Initial commit"
git push -u origin main --force