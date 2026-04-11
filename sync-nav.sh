#!/bin/bash
# 海風網站 — 導航列同步腳本
# 用法: bash sync-nav.sh
# 功能: 從 template/nav.html 讀取導航模板，自動替換所有 HTML 檔案的 <nav> 區塊

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TEMPLATE="$SCRIPT_DIR/template/nav.html"

if [ ! -f "$TEMPLATE" ]; then
  echo "❌ 找不到模板: $TEMPLATE"
  exit 1
fi

# 讀取模板內容（去掉前後空白）
NAV_CONTENT=$(cat "$TEMPLATE")

# 計數
COUNT=0

# 遍歷所有 HTML 檔案（排除 template 目錄和 index.html 跳轉頁）
find "$SCRIPT_DIR" -name "*.html" -not -path "*/template/*" -not -path "*/.git/*" | while read -r FILE; do
  # 跳過 nav.html 模板本身
  if [ "$FILE" = "$TEMPLATE" ]; then
    continue
  fi

  # 使用 perl 進行多行替換
  perl -0777 -i -pe "s|<nav class=\"nav\">.*?</nav>|$NAV_CONTENT|gs" "$FILE"
  
  COUNT=$((COUNT + 1))
  echo "✅ 已更新: $(basename "$FILE")"
done

echo ""
echo "🎉 導航列同步完成！"
