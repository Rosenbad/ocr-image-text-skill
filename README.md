# OCR Image Text Skill

利用 Windows 系统内置 OCR 引擎识别图片中的文字，无需安装任何第三方软件。

## 功能

- 从 PNG/JPG/BMP 图片中提取文字
- 支持中英文混合识别
- 基于 Windows.Media.Ocr API
- 零依赖、无外部软件需求

## 安装

### 方式一：对话安装

```
安装这个 skill：https://github.com/Rosenbad/ocr-image-text-skill
```

### 方式二：手动安装

将 `ocr-image-text` 文件夹复制到你的 AI 工具的 skills 目录：

| 工具 | 路径 |
|------|------|
| TRAE SOLO CN | `~/.trae-cn/skills/` |
| Claude Code | `~/.claude/skills/` |
| Cursor | `~/.cursor/skills/` |

## 自动触发

当提到以下关键词时自动加载：
- "帮我看看这张图" / "read this image"
- "图片里有什么文字" / "extract text from image"
- 用户上传截图/照片询问内容

## 使用方法

### PowerShell 调用

```powershell
powershell -File "skills/ocr-image-text/scripts/ocr.ps1" -ImagePath "图片路径"
```

### 示例

```powershell
powershell -File "C:\Users\32407\.trae-cn\skills\ocr-image-text\scripts\ocr.ps1" -ImagePath "C:\path\to\screenshot.png"
```

## 支持格式

| 格式 | 说明 |
|------|------|
| PNG | ✅ 支持 |
| JPG/JPEG | ✅ 支持 |
| BMP | ✅ 支持 |
| GIF | ⚠️ 需先转为 PNG |

## 注意事项

- 仅支持 Windows 10/11 系统（依赖 Windows.Media.Ocr）
- 识别精度取决于图片清晰度和文字大小
- 手写体识别效果有限
- 图片过小或文字过小可能识别失败

## 常见问题

| 问题 | 解决方案 |
|------|----------|
| 识别结果为空 | 检查图片是否包含清晰文字 |
| 识别乱码 | 图片文字可能过小或模糊 |
| 脚本报错 | 确认图片路径正确，格式支持 |

## License

MIT
