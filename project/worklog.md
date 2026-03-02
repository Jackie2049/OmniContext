# OmniContext 项目日志

> 倒排式记录，最新记录在最上方。只增不减。

---

## 2026-03-02 批量捕获完善与会话查看功能

**摘要：** 修复批量捕获多项Bug，新增会话查看功能，优化整体UI体验

**正文：**

### 批量捕获功能完善
1. **进度计数修复**
   - 问题：显示 21/3 而非 2/3
   - 原因：`captured` 变量累加所有历史捕获数
   - 解决：使用正确的 `current` 变量显示进度

2. **负数ETA修复**
   - 问题：ETA显示 -75秒
   - 解决：当 `remaining <= 0` 时返回 `undefined`

3. **重复捕获Bug修复**
   - 问题：同一session被多次捕获
   - 原因：使用 `session.id` 判重，但捕获过程中id尚未生成
   - 解决：改用 `preSessionId`（基于平台和标题生成的预ID）

4. **消息级进度显示**
   - 新增 `sessionMessagesTotal` 字段
   - 显示格式：`正在处理 会话标题 (566条消息)`

5. **Session选择对话框**
   - 替代全量自动捕获
   - 用户可勾选要捕获的会话
   - 支持全选/取消全选

### UI/UX优化
1. **Popup高度修复**
   - 问题：打开后只显示约1cm高度
   - 解决：`min-height: 520px` + flexbox单层滚动

2. **平台Logo图标**
   - 移动SVG到 `icons/platforms/` 目录
   - 使用 `chrome.runtime.getURL()` 加载
   - 配置 `web_accessible_resources`

3. **标签管理对话框**
   - 替换原有的 `prompt()` 交互
   - 支持勾选已有标签
   - 支持创建新标签

4. **删除模式优化**
   - 删除进度可视化
   - 全选/取消全选
   - 批量删除确认

### 会话查看功能
- 点击session-info区域打开对话查看对话框
- 消息气泡样式：用户蓝色边框，助手绿色边框
- 显示角色标签和发送时间
- 支持"复制全部"功能
- 搜索关键词高亮显示
- 悬停提示："点击查看完整对话"

### 技术改进
- `BatchCaptureProgress` 接口新增 `newSessions` 和 `updatedSessions`
- `captureCurrentSession` 返回 `{ session, isNew, isUpdated, oldCount }`
- CSS优化：cursor: pointer, hover背景色变化

### 提交记录
- 批量捕获进度修复
- Session查看对话框
- 平台Logo图标支持
- 标签管理对话框
- UI布局优化

---

## 2026-02-28 元宝与Claude思考模式支持

**摘要：** 完成元宝和Claude平台的思考模式开发，测试用例增至48个

**正文：**

### 元宝平台支持
- 新增 `extractYuanbaoMessages()` 专用提取方法
- 支持CSS Modules类名模式匹配
- 实现思考内容过滤逻辑
- 回退方案：`extractYuanbaoFromDocument()`

### Claude平台支持
- 更新选择器适配现代Claude.ai DOM结构
- 新增 `extractClaudeMessages()` 专用方法
- 支持 Extended Thinking 功能过滤
- 回退方案：`extractClaudeFromDocument()`

### 思考模式通用设计
```
消息提取 → 检测思考区块 → 克隆DOM → 移除思考内容 → 返回最终回答
```

### 测试覆盖
- 新增元宝测试用例：2个
- 新增Claude测试用例：2个
- 总测试用例：48个（全部通过）

### 提交记录
- `ec43865` fix: Update test to match Doubao CSS Module selectors
- `df3f452` fix: Update Yuanbao selectors to support CSS Modules
- `f73b99d` feat: Add thinking mode support for Yuanbao and Claude

**待测试：**
- [ ] 元宝实际对话捕获测试
- [ ] 元宝思考模式过滤验证
- [ ] Claude实际对话捕获测试
- [ ] Claude Extended Thinking过滤验证

---

## 2026-02-27 标签系统功能完成

**摘要：** 实现会话标签管理功能，支持分类和筛选

**正文：**
- TagStorage 模块：标签的增删改查，11个测试用例全部通过
- 标签-会话关联：支持多标签关联一个会话
- UI集成：会话卡片显示标签，支持添加/删除标签
- 交互方式：点击 🏷️ 按钮，通过 prompt 管理标签
- 标签样式：彩色标签 pill 样式，清晰可辨
- 默认蓝色标签，计划后续支持自定义颜色

**技术实现：**
- 数据模型：Tag {id, name, color, createdAt}
- 存储结构：tags 和 session_tags 两个 storage key
- 避免重复：同名标签不可创建，同一会话同一标签不可重复添加

**待优化：**
- [ ] 标签颜色选择器
- [ ] 按标签筛选会话
- [ ] 标签管理页面（创建/删除/重命名）

---

## 2026-02-27 项目初始化与命名规范

**摘要：** 完成项目重命名、GitHub仓库同步、AgenticEngineering文档体系建立

**正文：**
- 项目正式命名为 OmniContext
- 完成代码库迁移至 `/home/zhaozifeng/cc-workspace/OmniContext`
- 同步到 GitHub 仓库：https://github.com/2012zzhao/OmniContext.git
- 主分支设为 `main`
- 建立项目管理文档体系（project/ 目录）
- 构建流程标准化：构建后自动复制到桌面供Chrome加载测试

---

## 2026-02-27 豆包平台适配完成

**摘要：** 解决豆包CSS Modules选择器问题，实现对话自动捕获

**正文：**
- 识别问题：豆包使用CSS Modules（类名如 `message-list-S2Fv2S`）
- 解决方案：使用属性选择器 `[class*="message-block-container"]`
- 通过 `bg-s-color-bg-trans` 类名区分用户/助手消息
- 豆包功能验证通过，可正常捕获和保存对话

---

## 2026-02-26 TDD开发完成核心功能

**摘要：** 采用测试驱动开发，完成35个测试用例并全部通过

**正文：**
- SessionStorage：IndexedDB存储，支持CRUD操作（9测试）
- MessageExtractor：平台检测、消息提取（18测试）
- Formatter：格式化输出、剪贴板复制（8测试）
- Content Script：自动捕获对话
- Popup UI：会话管理界面

---

## 2026-02-26 项目启动

**摘要：** Chrome扩展项目立项，支持豆包/元宝/Claude三平台

**正文：**
- 产品定位：跨平台AI对话上下文管理工具
- 核心功能：自动捕获 → 本地存储 → 按需注入
- 技术栈：Vite + TypeScript + CRXJS + Vitest
- 支持平台：豆包、元宝、Claude
- 数据模型：Session/Message/InjectionConfig

---
