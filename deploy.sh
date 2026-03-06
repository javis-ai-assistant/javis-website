#!/bin/bash
# Javis.im Cloudflare Pages 部署脚本

echo "🚀 开始部署 javis.im 到 Cloudflare Pages..."

# 方法 1: 如果已登录 Cloudflare CLI
if command -v wrangler &> /dev/null; then
    echo "✅ wrangler 已安装"
    cd /home/dministrator/.openclaw/workspace/javis-website
    wrangler pages deploy . --project-name=javis-im --production
else
    echo "⚠️  wrangler 未安装，采用备用方案："
    echo ""
    echo "👉 请手动操作："
    echo "1. 打开 https://dash.cloudflare.com/"
    echo "2. 进入 Workers & Pages → Create application → Pages"
    echo "3. Connect to Git (选 GitHub) 或 Upload assets"
    echo "4. 上传此文件夹：/home/dministrator/.openclaw/workspace/javis-website/"
    echo "5. Project name: javis-im"
    echo "6. Production branch: main"
    echo ""
    echo "🎯 部署成功后访问：https://javis-im.pages.dev"
fi

echo ""
echo "✅ 准备完毕！"
