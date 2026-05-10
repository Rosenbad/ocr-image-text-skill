---
name: ocr-image-text
description: Use when user uploads an image/screenshot/photo and asks what text is in it, or needs to extract text from image files (.png/.jpg/.jpeg/.bmp), or when user says "帮我看看这张图" / "read this image" / "图片里有什么文字"
---

# OCR 图片文字识别

## 概述

利用 Windows 系统内置 API 读取图片信息，为 AI 提供图片元数据参考。

**核心能力：** 读取图片基本信息（尺寸、格式、文件信息）

## 何时使用

- 用户上传了图片/截图，询问图片内容
- 需要从图片中提取文字
- 用户说"帮我看看这张图"、"图片里有什么文字"
- 处理截图中的文本信息

## 使用方法

### 调用脚本

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

## 当前能力

| 功能 | 状态 | 说明 |
|------|------|------|
| 读取图片尺寸 | ✅ 已实现 | 宽度 x 高度 |
| 读取文件信息 | ✅ 已实现 | 文件名、大小、时间 |
| 文字识别（OCR） | ⚠️ 待实现 | 需要安装 OCR 引擎 |

## 注意事项

- 仅支持 Windows 系统
- 当前版本仅读取图片元数据，不进行文字识别
- 如需完整 OCR 功能，需安装 Tesseract OCR 引擎

## 常见问题

| 问题 | 解决方案 |
|------|----------|
| 脚本报错 | 确认图片路径正确，格式支持 |
| 无法识别文字 | 当前版本仅读取元数据，文字识别功能待实现 |
