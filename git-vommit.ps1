# Windows PowerShell用スクリプト

# 画面クリア
Clear-Host

# 色設定
$ESC = [char]27
$GREEN = "$ESC[32m"
$RED = "$ESC[31m"
$YELLOW = "$ESC[33m"
$CYAN = "$ESC[36m"
$RESET = "$ESC[0m"
$BOLD = "$ESC[1m"

# 吐き出すコード片
$VOMIT_CHUNKS = @(
    ":: malloc(0); ::",
    ";; segmentation fault ;;",
    ".. DROP TABLE users; ..",
    ":: git push -f origin master ::",
    ";; rm -rf / ;;",
    ".. Unexpected token ..",
    ":: NullPointerException ::",
    ":: :::::: {} :::::: ::",
    ";; Object [Object] ;;",
    ".. undefined is not a function ..",
    ":: alert('hoge'); ::"
)

# 1. 予兆
Write-Host "Git is behaving strangely..." -ForegroundColor Yellow
Start-Sleep -Milliseconds 800
Write-Host "Wait..." -ForegroundColor Yellow
Start-Sleep -Milliseconds 500
Write-Host "(face turns pale)" -ForegroundColor Cyan
Start-Sleep -Milliseconds 500

# 2. アスキーアート
$AA = @"
       _______
      /       \
     |  x   x  |    < I... I can't hold it...
     |    <    |
     |  _____  |
     | /     \ |
     |/       \|
    d|         |b
     \  VOMIT  /
      \_______/
"@
Write-Host $AA

# 3. 嘔吐アニメーション
Write-Host -NoNewline "$GREEN$BOLD"

1..25 | ForEach-Object {
    # ランダム選択
    $RAND_CHUNK = $VOMIT_CHUNKS | Get-Random
    
    # 左側のパディング（ランダム）
    $PAD_LEN = (Get-Random -Minimum 5 -Maximum 12)
    $PADDING = " " * $PAD_LEN
    
    # 飛沫
    $SPLASH_COUNT = (Get-Random -Minimum 1 -Maximum 5)
    $SPLASH = "." * $SPLASH_COUNT
    
    Write-Host "$PADDING$SPLASH$RAND_CHUNK$SPLASH"
    
    # ランダムなスリープ
    $SLEEP_TIME = (Get-Random -Minimum 10 -Maximum 60)
    Start-Sleep -Milliseconds $SLEEP_TIME
}

Write-Host -NoNewline "$RESET"

# 4. 事後
Write-Host ""
Write-Host "FATAL ERROR: You typed 'vommit'!" -ForegroundColor Red
Write-Host "Git threw up. Please check your spelling."
Write-Host ""

exit 1