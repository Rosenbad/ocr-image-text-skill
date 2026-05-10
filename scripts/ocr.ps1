param(
    [Parameter(Mandatory = $true)]
    [string]$ImagePath
)

# 检查文件是否存在
if (-not (Test-Path $ImagePath)) { Write-Host "文件不存在"; exit 1 }

# 获取图片基本信息
$file = Get-Item $ImagePath
Write-Host "=== 图片信息 ==="
Write-Host "文件名：$($file.Name)"
Write-Host "大小：$([math]::Round($file.Length/1KB, 2)) KB"
Write-Host "创建时间：$($file.CreationTime)"
Write-Host "修改时间：$($file.LastWriteTime)"

# 尝试用 C# 读取图片元数据
try {
    Add-Type -AssemblyName System.Drawing
    $img = [System.Drawing.Image]::FromFile($ImagePath)
    Write-Host "尺寸：$($img.Width)x$($img.Height)"
    Write-Host "格式：$($img.RawFormat.Description)"
    $img.Dispose()
}
catch {
    Write-Host "无法读取图片详细信息: $($_.Exception.Message)"
}

Write-Host "`n提示：Windows 内置 OCR 需要复杂的异步处理，建议："
Write-Host "1. 手动查看图片内容"
Write-Host "2. 或使用在线 OCR 工具（如 Google Drive、OneDrive）"
Write-Host "3. 或直接用眼睛看截图里是什么"
