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

---

## 演示

### 自动捕获对话记录

### 一键注入历史记忆

### 批量捕获会话

### 导出数据

### 导入数据

---

## 功能特性

- 💾 **自动捕获** - 使用AI助手时，自动记录并保存用户和AI助手之间的对话历史
- ✏️ **一键注入** - 选择历史会话，格式化复制到剪贴板
- 🤖 **多平台支持** - 豆包、元宝、Claude 等主流AI助手
- 🔒 **本地存储** - 数据仅存储在浏览器本地，隐私优先
- 📤 **数据导出** - 支持JSON格式导出、导出会话记录

---

## 安装使用

### 第一步：下载插件

前往 [Releases 页面](https://github.com/Jackie2049/ContextDrop/releases)，下载最新版本压缩包 `ContextDrop-*.zip`到本地，并解压到任意目录。

### 第二步：安装插件

1. 打开 Chrome 浏览器，地址栏输入 `chrome://extensions/` 并回车
2. 开启页面右上角的 **「开发者模式（Developer mode）」** 开关
3. 点击左上角的 **「加载已解压的扩展程序（Load unpacked）」** 按钮
4. 在弹出的文件夹选择器中，选中刚才解压出来的 **ContextDrop** 文件夹
5. 加载成功后，**「所有扩展程序（All Extensions）」**会出现 ContextDrop 的图标 🧠
6. 点击浏览器右上角拼图形状🧩的**「扩展程序（Extensions）」**按钮，点击大头钉标志固定

### 第三步：开始使用

- 打开任意 AI 助手（如豆包、ChatGPT、Claude 等），正常开始对话
- 扩展会 **自动捕获** 你与 AI 助手的对话记录，并保存到本地
- 点击浏览器工具栏的 ContextDrop 🧠 图标，即可查看、管理历史会话

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

## 支持平台


| 平台       | 状态  | 备注   |
| -------- | --- | ---- |
| 豆包       | ✅   | 完整支持 |
| 元宝       | ✅   | 完整支持 |
| Claude   | ✅   | 完整支持 |
| DeepSeek | ✅   | 完整支持 |
| Kimi     | ✅   | 完整支持 |
| Gemini   | ✅   | 完整支持 |
| ChatGPT  | ✅   | 完整支持 |


---

## 贡献

欢迎提交 Issue 和 PR！

---

## 许可

MIT License