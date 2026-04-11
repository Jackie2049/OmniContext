# ContextDrop 隐私政策

**生效日期：** 2026年4月11日

## 数据收集说明

ContextDrop **不会收集、传输或分享任何用户数据**。

## 数据存储方式

所有数据**仅存储在用户本地浏览器**中：
- 使用 Chrome Extension Storage API（IndexedDB）
- 会话记录保存在用户设备本地
- 不会上传到任何服务器

## 权限使用说明

| 权限 | 用途 |
|------|------|
| `storage` | 本地存储会话数据 |
| `activeTab` | 获取当前页面信息用于注入 |
| `host_permissions` | 读取 AI 助手页面内容（仅用于提取对话）|
| `nativeMessaging` | 与本地 Python 服务通信（可选功能）|

## 用户权利

- 随时导出所有数据（JSON 格式）
- 随时删除所有本地数据
- 卸载扩展即彻底清除所有数据

## 联系方式

如有问题，请通过 GitHub Issues 联系：
https://github.com/Jackie2049/ContextDrop/issues
