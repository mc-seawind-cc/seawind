# 🍃 海風 Minecraft 伺服器網站

跟隨風抵達海的彼端，有片陸地等你啟程。

## 本地預覽

### 方法 1：Python（最簡單）
```bash
cd user-site
python3 -m http.server 8080
# 開啟瀏覽器 http://localhost:8080
```

### 方法 2：Node.js
```bash
cd user-site
npx serve .
# 開啟瀏覽器 http://localhost:3000
```

### 方法 3：VS Code Live Server
1. 用 VS Code 開啟此資料夾
2. 安裝 "Live Server" 擴充功能
3. 右鍵 index.html → Open with Live Server

## 網站結構

```
├── index.html          首頁
├── guide.html          海風指南首頁
├── guide/              指南子頁面 (37 個)
├── lore.html           文化藝廊
├── lore/               文化藝廊子頁面 (6 個)
├── community.html      玩家社區
├── management.html     管理通則
├── members.html        會員
├── partners.html       合作夥伴
├── links.html          相關連結
├── privacy.html        隱私權政策
├── style.css           全站樣式
├── main.js             全站 JavaScript
├── assets/img/         Logo 和圖片
├── photos/             首頁風景照 (28 張)
└── photos/lore/        文化藝廊照片
```

## 待補檔案

- rules.html（玩家須知）
- staff.html（工作人員須知）
- terms.html（服務條款）
- lore-angel.html
- photos/lore/lore5-7.jpg

## 部署到 GitHub Pages

1. 建立 GitHub repo
2. 推送所有檔案
3. Settings → Pages → Source: Deploy from a branch → main
4. 網站上線！

伺服器位址：seawind.cc
Discord：https://discord.gg/HdS2HrJEH7
