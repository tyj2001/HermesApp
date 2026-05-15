#!/bin/bash
# HermesApp 上传到 GitHub 脚本
# 在项目目录下执行此脚本

REPO="https://github.com/tyj2001/HermesApp.git"

echo "初始化 Git 仓库..."
git init
git remote add origin "$REPO"

echo "添加所有文件..."
git add .

echo "提交代码..."
git commit -m "Initial commit - HermesApp with GitHub Actions"

echo "推送到 GitHub..."
git branch -M main
git push -u origin main --force

echo "完成!"