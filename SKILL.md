---
name: ocr-image-text
description: Use when user uploads an image/screenshot/photo and asks what text is in it, or needs to extract text from image files (.png/.jpg/.jpeg/.bmp), or when user says "帮我看看这张图" / "read this image" / "图片里有什么文字"
---

# OCR 图片文字识别

## 概述

利用 Windows 系统内置 OCR 引擎（Windows.Media.Ocr）识别图片中的文字，无需安装任何第三方软件。

**核心能力：** 从图片中提取中英文文字

## 何时使用

- 用户上传了图片/截图，询问图片内容
- 需要从图片中提取文字
- 用户说"帮我看看这张图"、"图片里有什么文字"
- 处理截图中的文本信息

## 使用方法

### 方式一：自动识别（推荐）

用户上传图片后，直接运行脚本：

```powershell
powershell -File "skills/ocr-image-text/scripts/ocr.ps1" -ImagePath "图片路径"
```

### 方式二：手动调用

```powershell
powershell -File "C:\Users\32407\.trae-cn\skills\ocr-image-text\scripts\ocr.ps1" -ImagePath "C:\path\to\image.png"
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
