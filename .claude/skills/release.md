# release

发布新版本的 OmniContext 扩展。

## 用法

```
/release [patch|minor|major]
```

- `patch` - Bug 修复、小改进（默认）
- `minor` - 新功能、向后兼容
- `major` - 重大变更、不兼容

## 执行步骤

### 1. 检查当前状态

```bash
git status
git log --oneline -3
node -p "require('./package.json').version"
```

### 2. 更新版本号

```bash
npm version <patch|minor|major> --no-git-tag-version
```

### 3. 构建项目

```bash
npm run build
```

### 4. 创建发布包

```bash
VERSION=$(node -p "require('./package.json').version")
tar -czvf OmniContext-${VERSION}.tar.gz -C dist .
```

### 5. 提交版本变更

```bash
git add package.json package-lock.json
git commit -m "chore: bump version to ${VERSION}"
```

### 6. 创建 Git Tag

```bash
git tag -a v${VERSION} -m "Release v${VERSION}"
```

### 7. 创建 GitHub Release

```bash
gh release create v${VERSION} \
  ./OmniContext-${VERSION}.tar.gz \
  --title "v${VERSION}" \
  --notes "## OmniContext v${VERSION}

### 安装方法
1. 下载 \`OmniContext-${VERSION}.tar.gz\`
2. 解压到任意目录
3. 打开 Chrome，访问 \`chrome://extensions/\`
4. 开启「开发者模式」
5. 点击「加载已解压的扩展程序」
6. 选择解压后的文件夹

### 更新日志
请查看 [commits](https://github.com/Jackie2049/OmniContext/commits/v${VERSION}) 了解变更详情。"
```

### 8. 推送到远程（如果网络允许）

```bash
git push origin main --tags
```

## 注意事项

- 确保 `gh` CLI 已认证：`gh auth status`
- 如果网络超时，可以只用 `gh release create` 创建 release
- GitHub Actions workflow（`.github/workflows/release.yml`）会在推送 tag 时自动触发

## 版本号规则

| 类型 | 说明 | 示例 |
|------|------|------|
| patch | Bug 修复、小改进 | 0.0.1 → 0.0.2 |
| minor | 新功能、向后兼容 | 0.0.2 → 0.1.0 |
| major | 重大变更、不兼容 | 0.1.0 → 1.0.0 |
