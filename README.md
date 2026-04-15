<h1 align="center"><img src="icons/context-drop.svg" width="32" height="32" alt="ContextDrop"> ContextDrop</h1>

<p align="center"><b>用于捕获和注入AI对话记录的浏览器插件</b><br><b>帮助用户在不同AI助手之间流转上下文记忆</b></p>

<p align="center">
  <a href="https://github.com/Jackie2049/ContextDrop/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License: MIT"></a>
  <img src="https://img.shields.io/badge/TypeScript-5.0-blue.svg?logo=typescript" alt="TypeScript">
  <img src="https://img.shields.io/badge/Chrome%20Extension-MV3-green.svg?logo=googlechrome" alt="Chrome Extension MV3">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/豆包-Supported-ff6a00" alt="豆包 已支持">
  <img src="https://img.shields.io/badge/元宝-Supported-00c853" alt="元宝 已支持">
  <img src="https://img.shields.io/badge/Claude-Supported-d97757?logo=anthropic" alt="Claude Supported">
  <img src="https://img.shields.io/badge/DeepSeek-Supported-4d6bfa" alt="DeepSeek Supported">
  <img src="https://img.shields.io/badge/Gemini-Supported-4285f4?logo=google" alt="Gemini Supported">
  <img src="https://img.shields.io/badge/ChatGPT-Supported-10a37f?logo=openai" alt="ChatGPT Supported">
</p>

ContextDrop是一款专注于AI记忆管理的浏览器插件。它可以：<br>
📍 自动捕获用户和AI助手之间的对话记录<br>
📍 支持将这些历史记忆一键注入给其他AI助手<br>
以此帮助用户在各种AI助手之间无缝流转上下文 ———— 就像AirDrop那样<br>
🔐 数据本地存储，隐私安全无忧<br>
🚩 现已支持豆包、DeepSeek、ChatGPT、Gemini、元宝、Kimi、Claude等主流AI助手<br>
🤗 即刻安装到浏览器开始体验，从此像AirDrop一样丝滑流转AI记忆！

---

## 演示

### 视频演示

<video src="assets/demo_doubao-to-gemini.mp4" controls width="100%"></video>

> 如果视频无法播放，请直接下载文件观看：`assets/demo_doubao-to-gemini.mp4`

---

## 功能特性

- 💾 **自动捕获** - 访问平台时自动记录对话历史
- ✏️ **一键注入** - 选择历史会话，格式化复制到剪贴板
- 🤖 **多平台支持** - 豆包、元宝、Claude 等主流AI助手
- 🔒 **本地存储** - 数据仅存储在浏览器本地，隐私优先
- 📤 **数据导出** - 支持JSON格式导出、导出会话记录

---

## 安装使用

### 途径1：直接安装使用（推荐）

不需要安装 Node.js，直接下载使用：

```bash
git clone https://github.com/Jackie2049/ContextDrop.git
```

然后在 Chrome 中加载扩展：

1. 打开 Chrome，访问 `chrome://extensions/`
2. 开启右上角的「开发者模式」
3. 点击「加载已解压的扩展程序」
4. 选择 `ContextDrop/product` 文件夹

即可开始使用！

### 途径2：基于源码自行构建

如果你想修改代码或参与开发：

```bash
git clone https://github.com/Jackie2049/ContextDrop.git
cd ContextDrop
npm install
npm run build
```

构建完成后，在 Chrome 中加载 `dist/` 目录。

---

## 使用指南

### 1. 自动捕获对话

安装扩展后，在支持的 AI 平台（豆包、元宝、Claude）正常聊天即可。

- 扩展会自动检测页面并捕获对话内容
- 数据仅存储在浏览器本地，不会上传到任何服务器
- 每次发送新消息后，扩展会自动更新保存

### 2. 查看和选择历史会话

点击浏览器工具栏的 🧠 图标打开扩展弹窗：

- **按平台分组**：会话按豆包、元宝、Claude 分组显示
- **会话标题**：显示从页面抓取的会话标题（可编辑）
- **消息数量**：显示每个会话的消息条数
- **最后更新时间**：显示会话最后更新时间

### 3. 注入上下文到其他 AI 助手

1. 在新平台（或新会话）打开 ContextDrop 弹窗
2. 找到之前保存的会话
3. 点击会话右侧的 📋 「复制」按钮
4. 格式化后的上下文会自动复制到剪贴板
5. 粘贴到当前 AI 助手的输入框即可

复制的内容格式示例：
```
【上下文引用】
以下是我之前在豆包的对话记录：

---
会话: Java学习路线
来源: 豆包
日期: 2024-01-15 10:00
消息数: 5

[用户] 我想学Java，有什么建议？

[豆包] Java是一门很好的编程语言，建议从基础开始...

[用户] 具体需要学哪些内容？
---

基于以上背景，请帮我继续...
```

### 4. 管理会话

- **编辑标题**：点击 ✏️ 图标可以修改会话标题
- **删除会话**：点击 🗑️ 图标删除不需要的会话（不可恢复）
- **刷新列表**：点击 🔄 按钮刷新会话列表

### 5. 导出备份

点击 📤 「导出」按钮，可以将所有会话数据导出为 JSON 文件，用于备份或迁移。

导出的文件格式：
```json
[
  {
    "id": "session-id",
    "platform": "doubao",
    "title": "会话标题",
    "messages": [...],
    "messageCount": 10,
    "createdAt": 1234567890,
    "updatedAt": 1234567890
  }
]
```

---

## 常见问题

**Q: 扩展无法捕获对话？**

A: 确保：
1. 扩展已正确加载（图标显示在工具栏）
2. 你在支持的平台上（豆包、元宝、Claude）
3. 页面已完全加载（等待几秒钟）
4. 已经发送了至少一条消息

**Q: 复制的内容粘贴后格式错乱？**

A: 某些 AI 助手可能不支持 Markdown 格式。如果粘贴后格式不对，可以：
1. 手动删除 Markdown 标记
2. 或只复制需要的对话片段

**Q: 数据会丢失吗？**

A: 数据存储在浏览器本地（IndexedDB）。
- 卸载扩展会丢失数据
- 清除浏览器数据会丢失数据
- 建议定期点击「导出」备份重要对话

---

## 项目结构

```
ContextDrop/
├── src/                     # Chrome 扩展核心源代码
│   ├── background/          # 后台服务 (Service Worker)
│   ├── content/             # 内容脚本 (页面注入)
│   ├── popup/               # 弹窗 UI
│   ├── storage/             # IndexedDB 存储封装
│   ├── types/               # TypeScript 类型定义
│   └── utils/               # 工具函数
├── tests/                   # 测试文件
├── project/                 # 项目管理文档
├── native/                  # Native Messaging Host (Python)
│   ├── native_host.py       # 本地消息主机
│   ├── install.py           # 安装脚本
│   └── README.md
├── server/                  # Python FastAPI 服务器
│   ├── main.py              # 服务入口
│   ├── storage.py           # 存储模块
│   └── models.py            # 数据模型
├── sdk/python/              # Python SDK
├── icons/                   # 图标资源
├── product/                 # 可分发扩展版本
├── dist/                    # 构建输出 (.gitignore)
├── manifest.json            # 扩展配置
├── package.json
└── README.md
```

---

## 软件架构

### Chrome Extension MV3 架构

```
┌─────────────────────────────────────────┐
│           Chrome Extension              │
│  ┌─────────┐ ┌──────────┐ ┌──────────┐ │
│  │ Content │ │Background│ │  Popup   │ │
│  │ Script  │ │  Script  │ │   UI     │ │
│  └────┬────┘ └────┬─────┘ └────┬─────┘ │
│       └─────────────┴──────────┘         │
│              chrome.storage              │
└─────────────────────────────────────────┘
```

### 数据流

```
AI平台页面 → Content Script → Extractor → Storage → Popup显示 → 复制注入
```

### 核心模块

| 模块 | 职责 |
|------|------|
| Content Script | 页面DOM监听、消息提取、自动保存 |
| Background | 扩展生命周期管理、图标状态更新 |
| Popup | 用户界面、会话管理、操作交互 |
| Storage | IndexedDB封装、Session CRUD |
| Extractor | 平台特定选择器、DOM解析 |
| Formatter | 格式化输出、剪贴板操作 |

---

## 开发

### 技术栈

- **构建**: Vite + @crxjs/vite-plugin
- **语言**: TypeScript
- **测试**: Vitest + jsdom
- **样式**: 原生CSS

### 命令

```bash
# 安装依赖
npm install

# 开发模式
npm run dev

# 构建
npm run build

# 测试
npm test

# 生产构建
npm run build
```

### 测试

项目采用TDD开发，所有核心模块均有测试覆盖：

```
✓ storage.test.ts    9 tests
✓ extractor.test.ts  18 tests
✓ formatter.test.ts  8 tests
```

---

## 支持平台

| 平台 | 状态 | 备注 |
|------|------|------|
| 豆包 | ✅ | 完整支持CSS Modules解析 |
| 元宝 | ✅ | 完整支持 |
| Claude | ✅ | 完整支持 |
| DeepSeek | ✅ | 完整支持 |
| Kimi | ✅ | 完整支持 |
| Gemini | ✅ | 新增支持 |

---

## 数据模型

### Session
```typescript
interface Session {
  id: string;              // 唯一标识
  platform: Platform;      // 平台类型
  title: string;           // 会话标题
  sourceUrl: string;       // 来源链接
  createdAt: number;       // 创建时间
  updatedAt: number;       // 更新时间
  messages: Message[];     // 消息列表
  messageCount: number;    // 消息数量
}
```

### Message
```typescript
interface Message {
  id: string;
  role: 'user' | 'assistant';
  content: string;
  timestamp: number;
}
```

---

## 贡献

欢迎提交 Issue 和 PR！

---

## 许可

MIT License
