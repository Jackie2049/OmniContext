# ContextDrop

Seamlessly share chat context across different AI assistants (including Doubao, ChatGPT, Claude, and more) with conversation auto-captures and one-click context injection.

在不同AI助手间无缝共享对话上下文，支持豆包、ChatGPT、Claude、Gemini、DeepSeek、元宝、Kimi等平台，自动捕获聊天记录，一键注入上下文，让AI协作更连贯。

---

## 功能特性

- 🤖 **多平台支持** - 豆包、ChatGPT、Claude、Gemini、DeepSeek、元宝、Kimi
- 💾 **自动捕获** - 访问平台时自动记录对话历史
- 📦 **批量捕获** - 一键捕获平台上的所有历史会话
- 📋 **一键注入** - 选择历史会话，格式化复制到剪贴板
- 👁️ **会话查看** - 点击会话查看完整对话历史
- 🔒 **本地存储** - 数据仅存储在浏览器本地，隐私优先
- 💾 **数据备份** - 支持导出/导入 JSON 格式备份

---

## 安装

### 从 GitHub Releases 下载（推荐）

1. 访问 [Releases 页面](https://github.com/Jackie2049/ContextDrop/releases)
2. 下载最新版本的 ZIP 文件
3. 解压到任意目录
4. 打开 Chrome，访问 `chrome://extensions/`
5. 开启右上角的「开发者模式」
6. 点击「加载已解压的扩展程序」
7. 选择解压后的文件夹

即可开始使用！

### 从源码构建（开发者）

如果你想修改代码或参与开发：

```bash
git clone https://github.com/Jackie2049/ContextDrop.git
cd ContextDrop
npm install
npm run build
```

构建完成后，在 Chrome 中加载 `dist/` 目录。

---

## 界面预览

<!-- TODO: 添加扩展弹窗截图 -->
![ContextDrop 弹窗界面](./docs/screenshot-popup.png)

---

## 使用指南

### 1. 自动捕获对话

安装扩展后，在支持的 AI 平台正常聊天即可。

- 扩展会自动检测页面并捕获对话内容
- 数据仅存储在浏览器本地，不会上传到任何服务器
- 每次发送新消息后，扩展会自动更新保存

### 2. 查看和选择历史会话

点击浏览器工具栏的 🧠 图标打开扩展弹窗：

- **按平台分组**：会话按平台分组显示
- **平台筛选**：点击顶部平台标签快速筛选
- **搜索会话**：输入关键词搜索会话标题和内容
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

- **删除会话**：点击底部「🗑️ 管理」按钮进入管理模式，选择并删除会话
- **刷新列表**：点击「🔄 刷新」按钮刷新会话列表

### 5. 设置菜单

点击底部「⚙️ 设置」按钮，弹出菜单包含：

- **📤 记忆导出到文件**：将所有会话数据导出为 JSON 备份文件
- **📥 从文件导入记忆**：从备份文件恢复数据

**导入模式**：
- 合并（保留现有）：新数据导入，冲突时保留本地数据
- 合并（覆盖冲突）：新数据导入，冲突时使用导入数据
- 完全覆盖：清空本地数据，完全使用导入数据

### 6. 批量捕获

在支持的平台上，一键捕获所有历史会话：

1. 访问 AI 平台（如豆包）
2. 打开 ContextDrop 弹窗
3. 点击「批量捕获」按钮
4. 选择要捕获的会话
5. 等待捕获完成

> 注意：批量捕获需要前台运行，请勿切换页面。

### 7. 查看会话详情

点击任意会话卡片，可查看完整对话历史：

- 消息按用户/助手分组显示
- 支持一键复制全部内容

---

## 常见问题

**Q: 扩展无法捕获对话？**

A: 确保：
1. 扩展已正确加载（图标显示在工具栏）
2. 你在支持的平台上
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
- 建议定期使用「导出」功能备份重要对话

---

## 支持平台

| 平台 | 状态 | 备注 |
|------|------|------|
| 豆包 (Doubao) | ✅ | 完整支持 |
| ChatGPT | ✅ | 完整支持 |
| Claude | ✅ | 完整支持 |
| Gemini | ✅ | 完整支持 |
| DeepSeek | ✅ | 完整支持 |
| 元宝 (Yuanbao) | ✅ | 完整支持 |
| Kimi | ✅ | 完整支持 |

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
├── icons/                   # 图标资源
├── dist/                    # 构建输出
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
```

### 测试

项目采用TDD开发，所有核心模块均有测试覆盖：

```
✓ storage.test.ts    9 tests
✓ extractor.test.ts  18 tests
✓ formatter.test.ts  8 tests
```

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

### 导出数据格式
```typescript
interface ExportData {
  version: string;           // 格式版本号 "1.0"
  exportedAt: string;        // ISO 时间戳
  sessions: Session[];       // 所有会话
  tags: Tag[];               // 所有标签
  sessionTags: Record<string, string[]>;  // 会话-标签关联
}
```

---

## 贡献

欢迎提交 Issue 和 PR！

---

## 许可

MIT License
