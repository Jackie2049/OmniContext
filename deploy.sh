#!/bin/bash
# ContextDrop 一键构建部署脚本
# 用法: ./deploy.sh
# 支持: WSL 和 macOS

set -e

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXTENSION_NAME="ContextDrop"

# 检测操作系统并设置桌面路径
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    DESKTOP_DIR="$HOME/Desktop"
elif [[ -d "/mnt/c/Users" ]]; then
    # WSL - 尝试找到用户目录
    # 优先使用当前 Windows 用户名
    if command -v powershell.exe &> /dev/null; then
        WIN_USERNAME=$(powershell.exe -NoProfile -Command '$env:USERNAME' 2>/dev/null | tr -d '\r')
        if [[ -n "$WIN_USERNAME" && -d "/mnt/c/Users/$WIN_USERNAME" ]]; then
            DESKTOP_DIR="/mnt/c/Users/$WIN_USERNAME/Desktop"
        fi
    fi
    # 如果上面没设置成功，使用默认路径
    if [[ -z "$DESKTOP_DIR" ]]; then
        DESKTOP_DIR="/mnt/c/Users/$(whoami)/Desktop"
    fi
else
    # Linux 或其他系统
    DESKTOP_DIR="$HOME/Desktop"
fi

echo "========================================"
echo "  ContextDrop 构建部署脚本"
echo "  平台: $(uname -s)"
echo "  桌面: $DESKTOP_DIR"
echo "========================================"

# 切换到项目目录
cd "$PROJECT_DIR"
echo "[1/4] 构建扩展..."
npm run build

echo "[2/4] 删除桌面旧版本..."
rm -rf "$DESKTOP_DIR/$EXTENSION_NAME"

echo "[3/4] 复制新版本到桌面..."
cp -r "$PROJECT_DIR/dist" "$DESKTOP_DIR/$EXTENSION_NAME"

echo "[4/5] 创建 ZIP 压缩包..."
cd "$DESKTOP_DIR"
zip -r "$EXTENSION_NAME.zip" "$EXTENSION_NAME" -x "*.DS_Store" -x "*/.git/*"
cd "$PROJECT_DIR"

echo "[5/5] 更新 product 目录..."
rm -rf "$PROJECT_DIR/product"
cp -r "$PROJECT_DIR/dist" "$PROJECT_DIR/product"

echo ""
echo "========================================"
echo "  部署完成!"
echo "========================================"
echo ""
echo "扩展位置: $DESKTOP_DIR/$EXTENSION_NAME"
echo "ZIP 压缩包: $DESKTOP_DIR/$EXTENSION_NAME.zip"
echo ""
echo "下一步操作:"
echo "1. 打开 chrome://extensions/"
echo "2. 点击「加载已解压的扩展程序」"
echo "3. 选择桌面的 $EXTENSION_NAME 文件夹"
echo ""
echo "上传 Chrome Web Store:"
echo "  直接上传: $DESKTOP_DIR/$EXTENSION_NAME.zip"
echo ""
